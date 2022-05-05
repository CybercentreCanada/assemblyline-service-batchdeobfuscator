import base64
import copy
import os
import shlex
from tempfile import mkstemp

from assemblyline_v4_service.common.base import ServiceBase
from assemblyline_v4_service.common.request import ServiceRequest
from assemblyline_v4_service.common.result import Result

from batch_deobfuscator.batch_interpreter import BatchDeobfuscator


class Batchdeobfuscator(ServiceBase):
    def __init__(self, config=None):
        super().__init__(config)

    def start(self):
        self.log.info("Starting batchdeobfuscator")

    def search_for_powershell(self, normalized_comm, request):
        if "powershell" in normalized_comm.lower():
            ori_cmd = shlex.split(normalized_comm)
            cmd = shlex.split(normalized_comm.lower())
            pws_idx = None
            if "powershell" in cmd:
                pws_idx = cmd.index("powershell")
            elif "powershell.exe" in cmd:
                pws_idx = cmd.index("powershell.exe")
            if pws_idx is None:
                return
            cmd = cmd[pws_idx:]

            ps1_cmd = None
            if "-enc" in cmd:
                ps1_cmd = base64.b64decode(ori_cmd[pws_idx + cmd.index("-enc") + 1]).replace(b"\x00", b"")
            elif "-command" in cmd:
                ps1_cmd = ori_cmd[pws_idx + cmd.index("-command") + 1].encode()

            if ps1_cmd:
                child_fd, child_path = mkstemp(suffix=".ps1", prefix="child_", dir=self.working_directory)
                with open(child_path, "wb") as child_f:
                    child_f.write(ps1_cmd)
                request.add_extracted(
                    child_path,
                    os.path.basename(child_path),
                    f"{os.path.basename(child_path)} sub command extracted",
                    safelist_interface=self.api_interface,
                )

    def interpret_logical_line(self, deobfuscator, logical_line, f, request):
        commands = deobfuscator.get_commands(logical_line)
        for command in commands:
            normalized_comm = deobfuscator.normalize_command(command)
            deobfuscator.interpret_command(normalized_comm)
            f.write(normalized_comm)
            f.write("\n")
            self.search_for_powershell(normalized_comm, request)
            if len(deobfuscator.exec_cmd) > 0:
                for child_cmd in deobfuscator.exec_cmd:
                    child_deobfuscator = copy.deepcopy(deobfuscator)
                    child_deobfuscator.exec_cmd.clear()
                    child_fd, child_path = mkstemp(suffix=".bat", prefix="child_", dir=self.working_directory)
                    with open(child_path, "w") as child_f:
                        self.interpret_logical_line(child_deobfuscator, child_cmd, child_f, request)

                    request.add_extracted(
                        child_path,
                        os.path.basename(child_path),
                        f"{os.path.basename(child_path)} sub command extracted",
                        safelist_interface=self.api_interface,
                    )

    def execute(self, request: ServiceRequest):
        request.result = Result()
        deobfuscator = BatchDeobfuscator()

        file_name = "deobfuscated_bat.bat"
        temp_path = os.path.join(self.working_directory, file_name)
        with open(temp_path, "w") as f:
            for logical_line in deobfuscator.read_logical_line(request.file_path):
                self.interpret_logical_line(deobfuscator, logical_line, f, request)

        request.add_extracted(
            temp_path, file_name, "Root deobfuscated batch file", safelist_interface=self.api_interface
        )
