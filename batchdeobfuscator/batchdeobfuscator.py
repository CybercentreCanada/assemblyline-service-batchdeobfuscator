import hashlib
import os
from urllib.parse import urlparse

from assemblyline.common.net import is_valid_domain, is_valid_ip
from assemblyline_v4_service.common.base import ServiceBase
from assemblyline_v4_service.common.request import ServiceRequest
from assemblyline_v4_service.common.result import (
    Heuristic,
    Result,
    ResultKeyValueSection,
    ResultTableSection,
    TableRow,
)
from batch_deobfuscator.batch_interpreter import BatchDeobfuscator
from multidecoder.analyzers.shell import find_powershell_strings, get_powershell_command


class Batchdeobfuscator(ServiceBase):
    def __init__(self, config=None):
        super().__init__(config)

    def start(self):
        self.log.debug("Starting batchdeobfuscator")

    # TODO: Migrate to MultiDecoder when it won't keep quotes around the commands
    def multidecoder_search_for_powershell(self, normalized_comm, working_directory, extracted_files):
        matches = find_powershell_strings(normalized_comm.encode())

        if not matches:
            return

        for match in matches:
            powershell_command = get_powershell_command(match.value)
            sha256hash = hashlib.sha256(powershell_command).hexdigest()
            for _, extracted_file_hash in extracted_files.get("powershell", []):
                if sha256hash == extracted_file_hash:
                    continue
            powershell_filename = f"{sha256hash[0:10]}.ps1"
            extracted_files["powershell"].append((powershell_filename, sha256hash))
            powershell_file_path = os.path.join(working_directory, powershell_filename)
            with open(powershell_file_path, "wb") as f:
                f.write(powershell_command)

    def execute(self, request: ServiceRequest):
        request.result = Result()
        deobfuscator = BatchDeobfuscator(complex_one_liner_threshold=self.config.get("heur6_min_number_line", 4))

        bat_filename, extracted_files = deobfuscator.analyze(request.file_path, self.working_directory)

        with open(os.path.join(self.working_directory, bat_filename), "rb") as f:
            sha256hash = hashlib.sha256(f.read()).hexdigest()

        if sha256hash != request.sha256:
            request.add_extracted(
                os.path.join(self.working_directory, bat_filename),
                bat_filename,
                "Root deobfuscated batch file",
                safelist_interface=self.api_interface,
            )

        for extracted_file_name, _ in extracted_files.get("batch", []):
            request.add_extracted(
                os.path.join(self.working_directory, extracted_file_name),
                extracted_file_name,
                f"{extracted_file_name} sub command extracted",
                safelist_interface=self.api_interface,
            )

        for extracted_file_name, _ in extracted_files.get("powershell", []):
            request.add_extracted(
                os.path.join(self.working_directory, extracted_file_name),
                extracted_file_name,
                "Discovered PowerShell code",
                safelist_interface=self.api_interface,
            )

        if "complex-one-liner" in deobfuscator.traits:
            heur = Heuristic(6)
            heur_section = ResultKeyValueSection(heur.name, heuristic=heur)
            heur_section.set_item("Number of line after deobfuscation", deobfuscator.traits["complex-one-liner"])
            request.result.add_section(heur_section)

        if "command-grouping" in deobfuscator.traits:
            heur = Heuristic(1)
            heur_section = ResultTableSection(heur.name, heuristic=heur)
            for item in deobfuscator.traits["command-grouping"]:
                heur_section.add_row(
                    TableRow({"Command [trun.]": item["Command"][:100], "Normalized [trun.]": item["Normalized"][:100]})
                )
            request.result.add_section(heur_section)

        if "LOLBAS" in deobfuscator.traits:
            heur = Heuristic(2)
            heur_section = ResultTableSection(heur.name, heuristic=heur)
            for item in deobfuscator.traits["LOLBAS"]:
                heur_section.add_row(TableRow({"LOLBAS": item["LOLBAS"], "Command [trun.]": item["Command"][:100]}))
            request.result.add_section(heur_section)

        if "start_with_var" in deobfuscator.traits:
            heur = Heuristic(3)
            heur_section = ResultTableSection(heur.name, heuristic=heur)
            for command, normalized_com in deobfuscator.traits["start_with_var"]:
                heur_section.add_row(
                    TableRow({"Command [trun.]": command[:100], "Normalized [trun.]": normalized_com[:100]})
                )
            request.result.add_section(heur_section)

        if "var_used" in deobfuscator.traits:
            heur = Heuristic(4)
            heur_section = ResultTableSection(heur.name, heuristic=heur)
            heur4 = False
            for command, normalized_com, var_used in deobfuscator.traits["var_used"]:
                if var_used > 10:
                    heur_section.add_row(
                        TableRow(
                            {
                                "Count": var_used,
                                "Command [trun.]": command[:100],
                                "Normalized [trun.]": normalized_com[:100],
                            }
                        )
                    )
                    heur4 = True
            if heur4:
                request.result.add_section(heur_section)

        if "download" in deobfuscator.traits:
            download_section = ResultTableSection("External file download in batch script")
            if "complex-one-liner" in deobfuscator.traits:
                download_section.set_heuristic(5)
            for command, download_trait in deobfuscator.traits["download"]:
                download_section.add_row(
                    TableRow(
                        {
                            "URL": download_trait["src"],
                            "Destination": download_trait["dst"],
                            "Command [trun.]": command[:100],
                        }
                    )
                )
                download_section.add_tag("network.static.uri", download_trait["src"])

                if "://" in download_trait["src"][:7]:
                    netloc = urlparse(download_trait["src"]).netloc
                else:
                    netloc = urlparse(f"http://{download_trait['src']}").netloc

                if netloc:
                    if is_valid_domain(netloc):
                        download_section.add_tag("network.static.domain", netloc)
                    if is_valid_ip(netloc):
                        download_section.add_tag("network.static.ip", netloc)
            request.result.add_section(download_section)

        if "windows-util-manipulation" in deobfuscator.traits:
            heur = Heuristic(7)
            heur_section = ResultTableSection(heur.name, heuristic=heur)
            for command, copy_trait in deobfuscator.traits["windows-util-manipulation"]:
                heur_section.add_row(
                    TableRow(
                        {
                            "Source": copy_trait["src"],
                            "Destination": copy_trait["dst"],
                            "Command [trun.]": command[:100],
                        }
                    )
                )
            request.result.add_section(heur_section)
