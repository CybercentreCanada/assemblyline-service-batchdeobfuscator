import base64
import copy
import hashlib
import os
import re
import shlex
import shutil
from tempfile import mkstemp

from assemblyline_v4_service.common.base import ServiceBase
from assemblyline_v4_service.common.request import ServiceRequest
from assemblyline_v4_service.common.result import Result
from batch_deobfuscator.batch_interpreter import BatchDeobfuscator
from multidecoder.analyzers.shell import find_powershell_strings, get_powershell_command

ENC_RE = rb"(?i)(?:-|/)e(?:c|n(?:c(?:o(?:d(?:e(?:d(?:c(?:o(?:m(?:m(?:a(?:nd?)?)?)?)?)?)?)?)?)?)?)?)?"
PWR_CMD_RE = rb"(?i)(?:-|/)c(?:o(?:m(?:m(?:a(?:nd?)?)?)?)?)?"


class Batchdeobfuscator(ServiceBase):
    def __init__(self, config=None):
        super().__init__(config)

    def start(self):
        self.log.info("Starting batchdeobfuscator")

    def search_for_powershell(self, normalized_comm, request, extracted_files_hashes):
        if "powershell" in normalized_comm.lower():
            try:
                ori_cmd = shlex.split(normalized_comm)
                cmd = shlex.split(normalized_comm.lower())
            except ValueError:
                return
            pws_idx = None
            if "powershell" in cmd:
                pws_idx = cmd.index("powershell")
            elif "powershell.exe" in cmd:
                pws_idx = cmd.index("powershell.exe")
            if pws_idx is None:
                return
            cmd = cmd[pws_idx:]

            ps1_cmd = None
            for idx, part in enumerate(cmd):
                if re.search(ENC_RE, part.encode()):
                    ps1_cmd = base64.b64decode(ori_cmd[pws_idx + idx + 1]).replace(b"\x00", b"")
                    break
                elif re.search(PWR_CMD_RE, part.encode()):
                    ps1_cmd = ori_cmd[pws_idx + idx + 1].encode()
                    break

            if ps1_cmd:
                sha256hash = hashlib.sha256(ps1_cmd).hexdigest()
                if sha256hash in extracted_files_hashes:
                    return
                extracted_files_hashes.append(sha256hash)
                powershell_filename = f"{sha256hash[0:10]}.ps1"
                powershell_file_path = os.path.join(self.working_directory, powershell_filename)
                with open(powershell_file_path, "wb") as f:
                    f.write(ps1_cmd)
                request.add_extracted(
                    powershell_file_path,
                    powershell_filename,
                    "Discovered PowerShell code",
                    safelist_interface=self.api_interface,
                )

    # TODO: Migrate to MultiDecoder when it won't keep quotes around the commands
    def multidecoder_search_for_powershell(self, normalized_comm, request, extracted_files_hashes):
        matches = find_powershell_strings(normalized_comm.encode())

        if not matches:
            return

        for match in matches:
            powershell_command = get_powershell_command(match.value)
            sha256hash = hashlib.sha256(powershell_command).hexdigest()
            if sha256hash in extracted_files_hashes:
                continue
            extracted_files_hashes.append(sha256hash)
            powershell_filename = f"{sha256hash[0:10]}.ps1"
            powershell_file_path = os.path.join(self.working_directory, powershell_filename)
            with open(powershell_file_path, "wb") as f:
                f.write(powershell_command)
            request.add_extracted(
                powershell_file_path,
                powershell_filename,
                "Discovered PowerShell code",
                safelist_interface=self.api_interface,
            )

    def interpret_logical_line(self, deobfuscator, logical_line, f, request, extracted_files_hashes):
        commands = deobfuscator.get_commands(logical_line)
        for command in commands:
            normalized_comm = deobfuscator.normalize_command(command)
            if len(list(deobfuscator.get_commands(normalized_comm))) > 1:
                self.interpret_logical_line(deobfuscator, normalized_comm, f, request, extracted_files_hashes)
            else:
                deobfuscator.interpret_command(normalized_comm)
                f.write(normalized_comm)
                f.write("\n")
                self.search_for_powershell(normalized_comm, request, extracted_files_hashes)
                if len(deobfuscator.exec_cmd) > 0:
                    for child_cmd in deobfuscator.exec_cmd:
                        child_deobfuscator = copy.deepcopy(deobfuscator)
                        child_deobfuscator.exec_cmd.clear()
                        child_fd, child_path = mkstemp(suffix=".bat", prefix="child_", dir=self.working_directory)
                        with open(child_path, "w") as child_f:
                            self.interpret_logical_line(
                                child_deobfuscator, child_cmd, child_f, request, extracted_files_hashes
                            )
                        with open(child_path, "rb") as f:
                            sha256hash = hashlib.sha256(f.read()).hexdigest()
                        bat_filename = f"{sha256hash[0:10]}.bat"
                        shutil.move(child_path, os.path.join(self.working_directory, bat_filename))

                        request.add_extracted(
                            os.path.join(self.working_directory, bat_filename),
                            bat_filename,
                            f"{bat_filename} sub command extracted",
                            safelist_interface=self.api_interface,
                        )
                    deobfuscator.exec_cmd.clear()

    def execute(self, request: ServiceRequest):
        request.result = Result()
        deobfuscator = BatchDeobfuscator()
        extracted_files_hashes = []

        file_name = "deobfuscated_bat.bat"
        temp_path = os.path.join(self.working_directory, file_name)
        with open(temp_path, "w") as f:
            for logical_line in deobfuscator.read_logical_line(request.file_path):
                self.interpret_logical_line(deobfuscator, logical_line, f, request, extracted_files_hashes)

        with open(temp_path, "rb") as f:
            sha256hash = hashlib.sha256(f.read()).hexdigest()
        bat_filename = f"{sha256hash[0:10]}_deobfuscated.bat"
        shutil.move(temp_path, os.path.join(self.working_directory, bat_filename))

        request.add_extracted(
            os.path.join(self.working_directory, bat_filename),
            bat_filename,
            "Root deobfuscated batch file",
            safelist_interface=self.api_interface,
        )
