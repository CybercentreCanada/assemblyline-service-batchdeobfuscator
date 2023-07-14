import hashlib
import os
import tempfile
from urllib.parse import urlparse

from assemblyline.common.identify import CUSTOM_BATCH_ID, CUSTOM_PS1_ID
from assemblyline.common.net import is_valid_domain, is_valid_ip
from assemblyline_v4_service.common.base import ServiceBase
from assemblyline_v4_service.common.request import ServiceRequest
from assemblyline_v4_service.common.result import (
    Heuristic,
    Result,
    ResultKeyValueSection,
    ResultMultiSection,
    ResultTableSection,
    TableRow,
    TableSectionBody,
    TextSectionBody,
)
from batch_deobfuscator.batch_interpreter import BatchDeobfuscator


def truncate_command(key, value, max_len=100):
    if len(value) > max_len:
        return (f"{key} [trun.]", value[:100])
    return (key, value)


class Batchdeobfuscator(ServiceBase):
    def __init__(self, config=None):
        super().__init__(config)

    def start(self):
        self.log.debug("Starting batchdeobfuscator")

    def execute(self, request: ServiceRequest):
        request.result = Result()
        deobfuscator = BatchDeobfuscator(complex_one_liner_threshold=self.config.get("heur6_min_number_line", 4))

        with open(request.file_path, "rb") as fh:
            if fh.read(len(CUSTOM_BATCH_ID)) == CUSTOM_BATCH_ID:
                with tempfile.NamedTemporaryFile(dir=self.working_directory) as tf:
                    tf.write(request.file_contents[len(CUSTOM_BATCH_ID) :])
                    tf.flush()
                    bat_filename, extracted_files = deobfuscator.analyze(tf.name, self.working_directory)

                with open(os.path.join(self.working_directory, bat_filename), "rb") as fread:
                    new_bat_content = CUSTOM_BATCH_ID + fread.read()
                    sha256hash = hashlib.sha256(new_bat_content).hexdigest()
                    bat_filename = f"{sha256hash[0:10]}_deobfuscated.bat"
                    with open(os.path.join(self.working_directory, bat_filename), "wb") as fwrite:
                        fwrite.write(new_bat_content)
            else:
                bat_filename, extracted_files = deobfuscator.analyze(request.file_path, self.working_directory)

        content = request.file_contents
        if len(content) >= 2:
            # The content would be empty if the file is smaller than 36 bytes. We can ignore fixing those files.
            newlines = 0
            use_linux_newlines = False
            while content[-1] == 10:  # b'\n'
                if content[-2] == 13:  # b'\r'
                    content = content[:-2]
                else:
                    content = content[:-1]
                    use_linux_newlines = True
                newlines += 1

            if newlines != 1 or use_linux_newlines:
                with open(os.path.join(self.working_directory, bat_filename), "rb") as fread:
                    new_bat_content = fread.read()

                if use_linux_newlines:
                    # No need to bother with the ID-line, it is always using a linux newline
                    new_bat_content = new_bat_content.replace(b"\r\n", b"\n")

                if newlines == 0:
                    new_bat_content = new_bat_content[:-2]
                elif newlines >= 2:
                    new_bat_content = new_bat_content + (b"\n" if use_linux_newlines else b"\r\n") * (newlines - 1)

                sha256hash = hashlib.sha256(new_bat_content).hexdigest()
                bat_filename = f"{sha256hash[0:10]}_deobfuscated.bat"
                with open(os.path.join(self.working_directory, bat_filename), "wb") as fwrite:
                    fwrite.write(new_bat_content)

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
            self.log.debug(f"Adding extracted batch file {extracted_file_name}")
            file_path = os.path.join(self.working_directory, extracted_file_name)

            with open(file_path, "rb") as f:
                file_contents = f.read()

            # Ensure file is identified as batch by adding the custom header
            if CUSTOM_BATCH_ID not in file_contents:
                file_contents = CUSTOM_BATCH_ID + file_contents
                with open(file_path, "wb") as f:
                    f.write(file_contents)

            request.add_extracted(
                file_path,
                extracted_file_name,
                f"{extracted_file_name} sub command extracted",
                safelist_interface=self.api_interface,
            )

        for extracted_file_name, _ in extracted_files.get("powershell", []):
            self.log.debug(f"Adding extracted powershell file {extracted_file_name}")
            file_path = os.path.join(self.working_directory, extracted_file_name)

            with open(file_path, "rb") as f:
                file_contents = f.read()

            # Ensure file is identified as powershell by adding the custom header
            if CUSTOM_PS1_ID not in file_contents:
                file_contents = CUSTOM_PS1_ID + file_contents
                with open(file_path, "wb") as f:
                    f.write(file_contents)

            request.add_extracted(
                file_path,
                extracted_file_name,
                "Discovered PowerShell code",
                safelist_interface=self.api_interface,
            )

        if "complex-one-liner" in deobfuscator.traits:
            heur = Heuristic(6)
            heur_section = ResultKeyValueSection(heur.name, heuristic=heur, parent=request.result)
            heur_section.set_item("Number of line after deobfuscation", deobfuscator.traits["complex-one-liner"])

        if "command-grouping" in deobfuscator.traits:
            heur = Heuristic(1)
            heur_section = ResultTableSection(heur.name, heuristic=heur, parent=request.result)
            for item in deobfuscator.traits["command-grouping"]:
                cmd_title, cmd_value = truncate_command("Command", item["Command"])
                norm_cmd_title, norm_cmd_value = truncate_command("Normalized", item["Normalized"])
                heur_section.add_row(TableRow({cmd_title: cmd_value, norm_cmd_title: norm_cmd_value}))

        if "LOLBAS" in deobfuscator.traits:
            heur = Heuristic(2)
            heur_section = ResultTableSection(heur.name, heuristic=heur, parent=request.result)
            for item in deobfuscator.traits["LOLBAS"]:
                cmd_title, cmd_value = truncate_command("Command", item["Command"])
                heur_section.add_row(TableRow({"LOLBAS": item["LOLBAS"], cmd_title: cmd_value}))

        if "start_with_var" in deobfuscator.traits:
            heur = Heuristic(3)
            heur_section = ResultTableSection(heur.name, heuristic=heur, parent=request.result)
            for command, normalized_com in deobfuscator.traits["start_with_var"]:
                cmd_title, cmd_value = truncate_command("Command", command)
                norm_cmd_title, norm_cmd_value = truncate_command("Normalized", normalized_com)
                heur_section.add_row(TableRow({cmd_title: cmd_value, norm_cmd_title: norm_cmd_value}))

        if "var_used" in deobfuscator.traits:
            heur = Heuristic(4)
            heur_section = ResultTableSection(heur.name, heuristic=heur)
            heur4 = False
            for command, normalized_com, var_used in deobfuscator.traits["var_used"]:
                if var_used > 10:
                    cmd_title, cmd_value = truncate_command("Command", command)
                    norm_cmd_title, norm_cmd_value = truncate_command("Normalized", normalized_com)
                    heur_section.add_row(
                        TableRow({"Count": var_used, cmd_title: cmd_value, norm_cmd_title: norm_cmd_value})
                    )
                    heur4 = True
            if heur4:
                request.result.add_section(heur_section)

        if "download" in deobfuscator.traits:
            heur = Heuristic(5)
            download_section = ResultTableSection(
                "External file download in batch script", heuristic=heur, parent=request.result
            )
            if "complex-one-liner" in deobfuscator.traits:
                download_section.heuristic.add_signature_id("complex_one_liner")
            for command, download_trait in deobfuscator.traits["download"]:
                download_section.add_tag("dynamic.process.command_line", command)
                cmd_title, cmd_value = truncate_command("Command", command)
                download_section.add_row(
                    TableRow({"URL": download_trait["src"], "Destination": download_trait["dst"], cmd_title: cmd_value})
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

        if "windows-util-manipulation" in deobfuscator.traits:
            heur = Heuristic(7)
            heur_section = ResultTableSection(heur.name, heuristic=heur, parent=request.result)
            for command, copy_trait in deobfuscator.traits["windows-util-manipulation"]:
                heur_section.add_tag("dynamic.process.command_line", command)
                cmd_title, cmd_value = truncate_command("Command", command)
                heur_section.add_row(
                    TableRow({"Source": copy_trait["src"], "Destination": copy_trait["dst"], cmd_title: cmd_value})
                )

        if "setp-file-redirection" in deobfuscator.traits:
            heur = Heuristic(8)
            heur_section = ResultTableSection(heur.name, heuristic=heur, parent=request.result)
            for command, file_redirect in deobfuscator.traits["setp-file-redirection"]:
                cmd_title, cmd_value = truncate_command("Command", command)
                heur_section.add_row(TableRow({"Filename": file_redirect, cmd_title: cmd_value}))
                file_content = deobfuscator.modified_filesystem.get(file_redirect.lower())
                if file_content and file_content.get("type", "") == "content":
                    extracted_filename = os.path.join(self.working_directory, file_redirect.lstrip("/"))
                    with open(extracted_filename, "w") as f:
                        f.write(file_content["content"])
                    request.add_extracted(extracted_filename, file_redirect, "Set /p redirection file creation")

        if "manipulated-content-execution" in deobfuscator.traits:
            heur = Heuristic(9)
            heur_section = ResultTableSection(heur.name, heuristic=heur, parent=request.result)
            for command, executed_file in deobfuscator.traits["manipulated-content-execution"]:
                cmd_title, cmd_value = truncate_command("Command", command)
                heur_section.add_row(TableRow({"Filename": executed_file, cmd_title: cmd_value}))

        if "rundll32-execution" in deobfuscator.traits:
            heur = Heuristic(10)
            heur_section = ResultMultiSection(heur.name, heuristic=heur, parent=request.result)
            table_body = TableSectionBody()
            heur_section.add_section_part(table_body)
            for command, rundll_struct in deobfuscator.traits["rundll32-execution"]:
                heur_section.add_tag("dynamic.process.command_line", command)
                cmd_title, cmd_value = truncate_command("Command", command)
                table_body.add_row(TableRow({cmd_title: cmd_value}))
                if "url" in rundll_struct:
                    url_body = TextSectionBody()
                    heur_section.heuristic.add_signature_id("internet_download")
                    url_body.add_line(f"{cmd_value.split(' ')[1]} was downloaded from {rundll_struct['url']}")
                    heur_section.add_tag("network.static.uri", rundll_struct["url"])
                    heur_section.add_section_part(url_body)

        if "mshta" in deobfuscator.traits:
            section = ResultMultiSection("Mshta command found", parent=request.result)
            table_body = TableSectionBody()
            section.add_section_part(table_body)
            for command in deobfuscator.traits["mshta"]:
                heur_section.add_tag("dynamic.process.command_line", command)
                cmd_title, cmd_value = truncate_command("Command", command)
                table_body.add_row(TableRow({cmd_title: cmd_value}))
