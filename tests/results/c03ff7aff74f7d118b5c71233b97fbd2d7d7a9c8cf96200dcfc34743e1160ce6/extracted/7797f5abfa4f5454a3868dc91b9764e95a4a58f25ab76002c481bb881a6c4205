@if not defined _echo echo off
setlocal ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
set OUTPUTDIR=C:\Users\puncher\Desktop
set DODUMP=0
set SENDMAIL=0
set RETURNCODE=0
set DecoderKey=
set ScriptName=script.bat
REM Set the CAB file name to include the date and time with
REM underscores substituted for the invalid characters.
set DATETIMESUFFIX=_
set CABOUTPUT=OneDriveLogs__.cab
:ParseCommand
if ""=="" (
goto :ParseDone
)
if /i ""=="/OutputDir" (
for %%i in () do (
set OUTPUTDIR=%%~i
)
shift
) else if /i ""=="/OutputFile" (
for %%i in () do (
set CABOUTPUT=%%~i
)
shift
) else if /i ""=="/NoDump" (
set DODUMP=0
) else if /i ""=="/SendMail" (
set SENDMAIL=1
) else if /i ""=="/IncludeDecoderKey" (
set DecoderKey=Y
) else if /i ""=="/NoDecoderKey" (
set DecoderKey=N
) else (
echo Usage: script.bat [Options]
echo.
echo     This script collects all the client logs and CABs them up for simple
echo     upload.  By default  it will drop the CAB file on your Desktop.
echo.
echo Options:
echo.
echo     /OutputDir outputdirectory   - Set output directory
echo     /NoDump                      - Don't collect a process dump of OneDrive.exe
echo     /OutputFile outputFile       - Filename of output file to use
echo     /SendMail                    - Triggers an email to the given alias with the full path of the file.
echo     /IncludeDecoderKey           - Do not prompt and include the decoder key with the logs
echo     /NoDecoderKey                - Do not prompt and do NOT include the decoder key with the logs
echo.
goto :Return
)
shift
goto :ParseCommand
:ParseDone
REM -------------------------
REM * CLIENT PATH DISCOVERY *
REM -------------------------
if "C:\Users\puncher\AppData\Local"=="" (
set LOCALAPPDATA=C:\Users\puncher\Local Settings\Application Data
)
set CLIENTPATH=C:\Users\puncher\Local Settings\Application Data\Microsoft\OneDrive
set LEGACY_MACHINE_SETUP_LOGS_PATH=C:\ProgramData\Microsoft OneDrive
set MACHINE_I386_SETUP_LOGS_PATH=C:\Program Files (x86)\Microsoft OneDrive
set MACHINE_AMD64_SETUP_LOGS_PATH=C:\Program Files\Microsoft OneDrive
if exist "C:\Users\puncher\Local Settings\Application Data\Microsoft\OneDrive" (
goto :CopyLogs
)
if exist "C:\ProgramData\Microsoft OneDrive" (
goto :CopyLogs
)
if exist "C:\Program Files (x86)\Microsoft OneDrive" (
goto :CopyLogs
)
if exist "C:\Program Files\Microsoft OneDrive" (
goto :CopyLogs
)
REM None of the data folders exist, exit.
echo Error: No application data exists for OneDrive client.
echo.
goto :Return
REM -------------
REM * COPY LOGS *
REM -------------
:CopyLogs
if exist "C:\Users\puncher\Local Settings\Application Data\Microsoft\OneDrive" (
pushd "C:\Users\puncher\Local Settings\Application Data\Microsoft\OneDrive"
set WORKINGDIR=C:\Users\puncher\Local Settings\Application Data\Microsoft\OneDrive\LogCollection
) else (
set WORKINGDIR=C:\Users\puncher\AppData\Local\Temp\LogCollection
)
if exist "C:\Users\puncher\AppData\Local\Temp\LogCollection" (
rd /s /q "C:\Users\puncher\AppData\Local\Temp\LogCollection"
)
mkdir "C:\Users\puncher\AppData\Local\Temp\LogCollection"
echo.
echo Microsoft values your privacy.
echo.
echo You have been asked to provide logs from your computer that will help support
echo engineers identify and resolve a problem you have been experiencing.
echo.
echo Text such as web addresses (URLs)  email addresses  File and Folder names that
echo are in the logs are scrambled so the original text is not visible to engineers
echo investigating your logs.
echo.
if not defined DecoderKey (
echo Giving support engineers the ability to unscramble your logs will allow
echo trouble shooting issues you are having with specific files or folders. Without
echo this ability  you may need to perform additional manual steps to provide
echo support with information they need to troubleshoot your issue.
echo.
echo May support unscramble your logs?
set /p DecoderKey=Enter YES or NO:
echo.
)
if /I "_" == "Y" (
set SyncLogsExclude=
set SyncSettingsExclude=
echo You have given support the ability to unscramble your logs.
) else (
set SyncLogsExclude=/XF ObfuscationStringMap.txt
set SyncSettingsExclude=/XF *.dat
echo Support will not be able to unscramble your logs.
echo.
echo Microsoft may need you to perform extra steps to troubleshoot your issue.
)
echo.
echo Working directory is C:\Users\puncher\AppData\Local\Temp\LogCollection.
echo OutputDir is %%~i
echo OutputFile is %%~i
echo DoDump is 0
echo SendMail is 1
echo.
echo Gathering Logs ...
echo.
set > "C:\Users\puncher\AppData\Local\Temp\LogCollection\env.txt"
REM TaskList and SystemInfo are not available on XP Home.
REM /v makes tasklist.exe really slow when not running elevated so don't use it
tasklist.exe > "C:\Users\puncher\AppData\Local\Temp\LogCollection\tasklist.txt"
systeminfo.exe > "C:\Users\puncher\AppData\Local\Temp\LogCollection\systeminfo.txt"
REM Capture list of running services.
net.exe start > "C:\Users\puncher\AppData\Local\Temp\LogCollection\services.txt"
REM OneDrive
set /p CRLF=Copying OneDrive logs <NUL
set WORKINGDIRONEDRIVE=C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive
mkdir "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive"
if exist "C:\Users\puncher\Local Settings\Application Data\Microsoft\OneDrive" (
dir /S "C:\Users\puncher\Local Settings\Application Data\Microsoft\OneDrive" > "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\tree.txt"
robocopy.exe "C:\Users\puncher\Local Settings\Application Data\Microsoft\OneDrive\logs" "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\logs" /S /XF ObfuscationStringMap.txt
robocopy.exe "C:\Users\puncher\Local Settings\Application Data\Microsoft\OneDrive\settings" "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\settings" /S /XF *.dat
robocopy.exe "C:\Users\puncher\Local Settings\Application Data\Microsoft\OneDrive\setup\logs" "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\setup\logs" /S
)
if exist "C:\ProgramData\Microsoft OneDrive" (
robocopy.exe "C:\ProgramData\Microsoft OneDrive\setup\logs" "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\LegacyMachineSetupLogs\setup\logs" /S
robocopy.exe "C:\ProgramData\Microsoft OneDrive\StandaloneUpdater\logs" "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\LegacyMachineSetupLogs\StandaloneUpdater\logs" /S
robocopy.exe "C:\ProgramData\Microsoft OneDrive\UpdaterService\logs" "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\LegacyMachineSetupLogs\UpdaterService\logs" /S
robocopy.exe "C:\ProgramData\Microsoft OneDrive\FileSyncHelper\logs" "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\LegacyMachineSetupLogs\FileSyncHelper\logs" /S
)
if exist "C:\Program Files (x86)\Microsoft OneDrive" (
robocopy.exe "C:\Program Files (x86)\Microsoft OneDrive\setup\logs" "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\MachineSetupLogs\setup\logs" /S
robocopy.exe "C:\Program Files (x86)\Microsoft OneDrive\StandaloneUpdater\logs" "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\MachineSetupLogs\StandaloneUpdater\logs" /S
robocopy.exe "C:\Program Files (x86)\Microsoft OneDrive\UpdaterService\logs" "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\MachineSetupLogs\UpdaterService\logs" /S
robocopy.exe "C:\Program Files (x86)\Microsoft OneDrive\FileSyncHelper\logs" "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\MachineSetupLogs\FileSyncHelper\logs" /S
)
if exist "C:\Program Files\Microsoft OneDrive" (
robocopy.exe "C:\Program Files\Microsoft OneDrive\setup\logs" "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\MachineAmd64SetupLogs\setup\logs" /S
robocopy.exe "C:\Program Files\Microsoft OneDrive\StandaloneUpdater\logs" "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\MachineAmd64SetupLogs\StandaloneUpdater\logs" /S
robocopy.exe "C:\Program Files\Microsoft OneDrive\UpdaterService\logs" "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\MachineAmd64SetupLogs\UpdaterService\logs" /S
robocopy.exe "C:\Program Files\Microsoft OneDrive\FileSyncHelper\logs" "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\MachineAmd64SetupLogs\FileSyncHelper\logs" /S
)
set PERMACHINECLIENTPATH86=C:\Program Files (x86)\Microsoft OneDrive
if exist "C:\Program Files (x86)\Microsoft OneDrive" (
dir /S "C:\Program Files (x86)\Microsoft OneDrive" > "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\PerMachine86Tree.txt"
)
set PERMACHINECLIENTPATH64=C:\Program Files\Microsoft OneDrive
if exist "C:\Program Files\Microsoft OneDrive" (
dir /S "C:\Program Files\Microsoft OneDrive" > "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\PerMachine64Tree.txt"
)
REM Collect start menu shortcut state
set PERMACHINE_START_MENU_KEY="HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders"
for /f "tokens=4*" %%i in (
'reg.exe QUERY "HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Common Start Menu"'
) do (
call set PERMACHINE_START_MENU_PATH=%%~j
)
set PERMACHINE_START_MENU_PATH="%%~j\Programs\OneDrive.lnk"
set PERUSER_START_MENU_KEY="HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders"
for /f "tokens=3*" %%i in (
'reg.exe QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v "Start Menu"'
) do (
call set PERUSER_START_MENU_PATH=%%~j
)
set PERUSER_START_MENU_PATH="%%~j\Programs\OneDrive.lnk"
if exist "%%~j\Programs\OneDrive.lnk" (
echo PerUser start menu shortcut exists at "%%~j\Programs\OneDrive.lnk" > "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\StartMenuShortcut.txt"
) else (
echo PerUser start menu shortcut does not exist at "%%~j\Programs\OneDrive.lnk" > "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\StartMenuShortcut.txt"
)
if exist "%%~j\Programs\OneDrive.lnk" (
echo PerMachine start menu shortcut exists at "%%~j\Programs\OneDrive.lnk" >> "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\StartMenuShortcut.txt"
) else (
echo PerMachine start menu shortcut does not exist at "%%~j\Programs\OneDrive.lnk" >> "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\StartMenuShortcut.txt"
)
REM Collect list of overlay handlers
CALL :LogRegkey "\Microsoft\Windows\CurrentVersion\Explorer\ShellIconOverlayIdentifiers"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_OverlayHandlers.txt"  HKLM\Software
REM Collect Run key and RunOnce key
CALL :LogRegkey "\Microsoft\Windows\CurrentVersion\Run"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_RunKeys.txt"  HKCU\Software
CALL :LogRegkey "\Microsoft\Windows\CurrentVersion\RunOnce"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_RunKeys.txt"  HKCU\Software
REM Collect OneDrive reg keys from HKLM and HKCU
CALL :LogRegkey "\Microsoft\OneDrive"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_OneDriveRegKeys.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
REM Collect SyncEngineProvider keys
CALL :LogRegkey "\SyncEngines\Providers\OneDrive"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_SyncEngineProviders.txt"  HKCU\Software
REM Collect odopen keys
CALL :LogRegkey "\Classes\odopen"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_ODOpen.txt"  HKCU\Software  HKLM\Software
REM Collect ARP keys
CALL :LogRegkey "\Microsoft\Windows\CurrentVersion\Uninstall\OneDriveSetup.exe"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_ARP.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
REM Collect Autoplay handler keys
CALL :LogRegkey "\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_AutoplayHandlers.txt"  HKCU\Software
REM Collect policies
CALL :LogRegkey "\Policies\Microsoft\OneDrive"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_OneDrivePolicies.txt"  HKLM\Software  HKCU\Software
CALL :LogRegkey "\Policies\Microsoft\Windows\OneDrive"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_OneDrivePolicies.txt"  HKLM\Software  HKLM\Software\WOW6432Node
REM Collect Groove keys
CALL :LogRegkey "\Microsoft\Common\Groove"  ""  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_GrooveKeys.txt"  HKCU\Software
REM Collect Winlogon keys
CALL :LogRegkey "\Microsoft\Windows NT\CurrentVersion\Winlogon"  ""  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_Winlogon.txt"  HKCU\Software  HKLM\Software
REM Collect SyncRootManager keys
CALL :LogRegkey "\Microsoft\Windows\CurrentVersion\Explorer\SyncRootManager"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_SyncRootManagerRegKeys.txt"  HKLM\Software
REM Collect COM keys for Current User
CALL :LogRegkey "\Classes\AppID\{EEABD3A3-784D-4334-AAFC-BB13234F17CF}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\AppID\OneDrive.EXE"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{6bb93b4e-44d8-40e2-bd97-42dbcf18a40f}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\SyncEngineCOMServer.SyncEngineCOMServer.1"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\SyncEngineCOMServer.SyncEngineCOMServer"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{AB807329-7324-431B-8B36-DBD581F56E0B}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\SyncEngineStorageProviderHandlerProxy.SyncEngineStorageProviderHandlerProxy.1"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\SyncEngineStorageProviderHandlerProxy.SyncEngineStorageProviderHandlerProxy"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{A3CA1CF4-5F3E-4AC0-91B9-0D3716E1EAC3}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\TypeLib\{638805C3-4BA3-4AC8-8AAC-71A0BA2BC284}\1.0"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\TypeLib\{082D3FEC-D0D0-4DF6-A988-053FECE7B884}\1.0"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\FileSyncClient.FileSyncClient.1"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\FileSyncClient.FileSyncClient"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{7B37E4E2-C62F-4914-9620-8FB5062718CC}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\FileSyncClient.AutoPlayHandler.1"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\FileSyncClient.AutoPlayHandler"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{5999E1EE-711E-48D2-9884-851A709F543D}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\BannerNotificationHandler.BannerNotificationHandler.1"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\BannerNotificationHandler.BannerNotificationHandler"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{2e7c0a19-0438-41e9-81e3-3ad3d64f55ba}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{F0AF7C30-EAE4-4644-961D-54E6E28708D6}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{9D613F8A-B30E-4938-8490-CB5677701EBF}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{79A2A54C-3916-41FD-9FAB-F26ED0BBA755}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{0299ECA9-80B6-43C8-A79A-FB1C5F19E7D8}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{0f872661-c863-47a4-863f-c065c182858a}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{da82e55e-fa2f-45b3-aec3-e7294106ef52}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{e9de26a1-51b2-47b4-b1bf-c87059cc02a7}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{2692D1F2-2C7C-4AE0-8E73-8F37736C912D}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{5D5DD08F-A10E-4FEF-BCA7-E73E666FC66C}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{EE15BBBB-9E60-4C52-ABCB-7540FF3DF6B3}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{8D3F8F15-1DE1-4662-BF93-762EABE988B2}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{2B865677-AC3A-43BD-B9E7-BF6FCD3F0596}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{ACDB5DB0-C9D5-461C-BAAA-5DCE0B980E40}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{909A6CCD-6810-46C4-89DF-05BE7EB61E6C}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{10C9242E-D604-49B5-99E4-BF87945EF86C}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{F062BA81-ADFE-4A92-886A-23FD851D6406}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{3A4E62AE-45D9-41D5-85F5-A45B77AB44E5}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{390AF5A7-1390-4255-9BC9-935BFCFA5D57}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{1196AE48-D92B-4BC7-85DE-664EC3F761F1}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{D0ED5C72-6197-4AAD-9B16-53FE461DD85C}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{AF60000F-661D-472A-9588-F062F6DB7A0E}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{5d65dd0d-81bf-4ff4-aeea-6effb445cb3f}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{b5c25645-7426-433f-8a5f-42b7ff27a7b2}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{f0440f4e-4884-4a8F-8a45-ba89c00f96f2}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{0776ae27-5ab9-4e18-9063-1836da63117a}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{1b7aed4f-fcaf-4da4-8795-c03e635d8edc}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{53de12aa-df96-413d-a25e-c75b6528abf2}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{0d4e4444-cb20-4c2b-b8b2-94e5656ecae8}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{d8c80ebb-099c-4208-afa3-fbc4d11f8a3c}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{C2FE84F5-E036-4A07-950C-9BFD3EAB983A}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{a7126d4c-f492-4eb9-8a2a-f673dbdd3334}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{c1439245-96b4-47fc-b391-679386c5d40f}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{02C98E2C-6C9F-49F8-9B57-3A6E1AA09A67}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{385ED83D-B50C-4580-B2C3-9E64DBE7F511}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{8B9F14F4-9559-4A3F-B7D0-312E992B6D98}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{22A68885-0FD9-42F6-9DED-4FB174DC7344}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{9E1CD0DF-72E7-4284-9598-342C0A46F96B}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{944903E8-B03F-43A0-8341-872200D2DA9C}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{B54E7079-90C9-4C62-A6B8-B2834C33A04A}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{1B71F23B-E61F-45C9-83BA-235D55F50CF9}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{049FED7E-C3EA-4B66-9D92-10E8085D60FB}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{2387C6BD-9A36-41A2-88ED-FF731E529384}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{EA23A664-A558-4548-A8FE-A6B94D37C3CF}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{2F12C599-7AA5-407A-B898-09E6E4ED2D1E}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{2EB31403-EBE0-41EA-AE91-A1953104EA55}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{AEEBAD4E-3E0A-415B-9B94-19C499CD7B6A}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{fac14b75-7862-4ceb-be41-f53945a61c17}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\TypeLib\{BAE13F6C-0E2A-4DEB-AA46-B8F55319347C}\1.0"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{BBACC218-34EA-4666-9D7A-C78F2274A524}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{5AB7172C-9C11-405C-8DD5-AF20F3606282}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{A78ED123-AB77-406B-9962-2A5D9D2F7F30}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{A0396A93-DC06-4AEF-BEE9-95FFCCAEF20E}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{F241C880-6982-4CE5-8CF7-7085BA96DA5A}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{9AA2F32D-362A-42D9-9328-24A483E2CCC3}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{C5FF006E-2AE9-408C-B85B-2DFDD5449D9C}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{7AFDFDDB-F914-11E4-8377-6C3BE50D980C}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{82CA8DE3-01AD-4CEA-9D75-BE4C51810A9E}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{1BF42E4C-4AF4-4CFD-A1A0-CF2960B8F63E}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{CB3D0F55-BC2C-4C1A-85ED-23ED75B5106B}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\*\shellex\ContextMenuHandlers\ FileSyncEx"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Directory\Background\shellex\ContextMenuHandlers\ FileSyncEx"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Directory\shellex\ContextMenuHandlers\ FileSyncEx"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\IE.AssocFile.URL\shellex\ContextMenuHandlers\ FileSyncEx"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\lnkfile\shellex\ContextMenuHandlers\ FileSyncEx"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{CB3D0F55-BC2C-4C1A-85ED-23ED75B5106B}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{021E4F06-9DCC-49AD-88CF-ECC2DA314C8A}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{31508CC7-9BC7-494B-9D0F-7B1C7F144182}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\TypeLib\{C9F3F6BB-3172-4CD8-9EB7-37C9BE601C87}\1.0"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\OOBERequestHandler.OOBERequestHandler.1"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\OOBERequestHandler.OOBERequestHandler"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{94269C4E-071A-4116-90E6-52E557067E4E}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\SyncEngineFileInfoProvider.SyncEngineFileInfoProvider.1"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\SyncEngineFileInfoProvider.SyncEngineFileInfoProvider"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{71DCE5D6-4B57-496B-AC21-CD5B54EB93FD}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{466F31F7-9892-477E-B189-FA5C59DE3603}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{869BDA08-7ACF-42B8-91AE-4D8D597C0B33}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{679EC955-75AA-4FB2-A7ED-8C0152ECF409}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{389510b7-9e58-40d7-98bf-60b911cb0ea9}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{9489FEB2-1925-4D01-B788-6D912C70F7F2}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{4410DC33-BC7C-496B-AA84-4AEA3EEE75F7}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{B05D37A9-03A2-45CF-8850-F660DF0CBF07}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{6A821279-AB49-48F8-9A27-F6C59B4FF024}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{4410DC33-BC7C-496B-AA84-4AEA3EEE75F7}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\CLSID\{A926714B-7BFC-4D08-A035-80021395FFA8}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{162C6FB5-44D3-435B-903D-E613FA093FB5}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
CALL :LogRegkey "\Classes\Interface\{301DFBE5-524C-4B0F-8B2D-21C40B3A2988}"  "/s"  "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\reg_COM.txt"  HKCU\Software  HKLM\Software  HKLM\Software\WOW6432Node
REM Check if OneDrive is elevated
powershell -Command "& {get-process onedrive | add-member -Name Elevated -MemberType ScriptProperty -Value {if ($this.Name -in @('Idle','System')) {$null} else {-not $this.Path -and -not $this.Handle} } -PassThru | Format-Table Name,Elevated}" > "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\OneDriveElevated.txt" 2>&1
REM Check if Sparse Package exists for Win 11 OS only.
REM 'ver' will output "Microsoft Windows [Version 10.0.19043.1110]"
REM Split output by spaces or periods. Take the 6th spot which is the build version (19043) and check if it's greater than the min build for Win 11
REM If so, print the package output into OneDriveSparsePackage.txt
for /f "tokens=6 delims=. " %%i in ('ver') do (
set OSVERSION=%%i
)
if "%%i" gtr "21600" (
echo Checking Sparse Package information
powershell -Command "Get-AppxPackage -Name "Microsoft.OneDriveSync" > "C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrive\OneDriveSparsePackage.txt" 2>&1
)
REM -------------
REM * Export Event logs *
REM -------------
echo.
echo Exporting event logs...
wevtutil.exe export-log Application "C:\Users\puncher\AppData\Local\Temp\LogCollection\Application.evtx"
wevtutil.exe export-log System "C:\Users\puncher\AppData\Local\Temp\LogCollection\System.evtx"
wevtutil.exe export-log Setup "C:\Users\puncher\AppData\Local\Temp\LogCollection\Setup.evtx"
wevtutil.exe export-log Microsoft-Windows-Bits-Client/Operational "C:\Users\puncher\AppData\Local\Temp\LogCollection\Bits.evtx"
wevtutil.exe export-log Microsoft-Windows-TaskScheduler/Operational "C:\Users\puncher\AppData\Local\Temp\LogCollection\TaskScheduler.evtx"
REM -------------
REM * Export OneDrive Standalone Update Task information *
REM -------------
echo.
echo Exporting OneDrive Standalone Update Task information...
schtasks.exe /query /TN "OneDrive Standalone Update Task" /XML > C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDriveStandaloneUpdateTask.xml 2>&1
schtasks.exe /query /TN "OneDrive Standalone Update Task v2" /XML > C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDriveStandaloneUpdateTaskV2.xml 2>&1
schtasks.exe /query /TN "OneDrive Per-Machine Standalone Update Task" /XML > C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDrivePerMachineStandaloneUpdateTask.xml 2>&1
for /f "skip=6 tokens=2" %%i IN ('whoami /user') do (
set SID=%%i
)
schtasks.exe /query /TN "OneDrive Standalone Update Task-%%i" /XML > C:\Users\puncher\AppData\Local\Temp\LogCollection\OneDriveStandaloneUpdateTaskSID.xml 2>&1
echo.
echo.
REM Copy complete.  CAB up files.
echo Writing CAB file to %%~i...
call :CABIT "C:\Users\puncher\AppData\Local\Temp\LogCollection"
if "%%~i"=="C:\Users\puncher\Desktop" (
set SHFOLDER_REGISTRY_KEY="HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders"
for /f "tokens=2*" %%i in (
'reg.exe QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Desktop'
) do (
call set OUTPUTDIR=%%~j
)
)
if not exist "%%~j\" (
echo Error %OUTPUTDIR% does not exist.
move /y "C:\Users\puncher\AppData\Local\Temp\LogCollection\%%~i" C:\Users\puncher\Desktop\. 2>&1>NUL
set RETURNCODE=1
goto :Return
)
move /y "C:\Users\puncher\AppData\Local\Temp\LogCollection\%%~i" "%%~j\." 2>&1>NUL
if ERRORLEVEL 1 (
echo error level 1
move /y "C:\Users\puncher\AppData\Local\Temp\LogCollection\%%~i" C:\Users\puncher\Desktop\. 2>&1>NUL
set RETURNCODE=1
)
rd /s /q "C:\Users\puncher\AppData\Local\Temp\LogCollection"
echo.
echo Log collection complete.  Please upload the following file:
echo.
echo     %%~j\%%~i
echo.
if "1"=="1" (
echo Sending mail...
call :SendMail
)
goto :Return
REM ---- END OF MAIN SCRIPT ---- Sub-Routines follow ----
REM -----------
REM * CAB IT! *
REM -----------
:CABIT
set DIRECTIVEFILE=C:\Users\puncher\AppData\Local\Temp\Schema.ddf
set TARGET=
set TEMPFILE=C:\Users\puncher\AppData\Local\Temp\TEMP-4.tmp
if not exist  (
echo  does not exist.
goto :Return
)
pushd 
echo. > C:\Users\puncher\AppData\Local\Temp\Schema.ddf
echo .set CabinetNameTemplate=%%~i >> C:\Users\puncher\AppData\Local\Temp\Schema.ddf
echo .set DiskDirectoryTemplate= >> C:\Users\puncher\AppData\Local\Temp\Schema.ddf
echo .set InfFileName=C:\Users\puncher\AppData\Local\Temp\TEMP-4.tmp >> C:\Users\puncher\AppData\Local\Temp\Schema.ddf
echo .set RptFileName=C:\Users\puncher\AppData\Local\Temp\TEMP-4.tmp >> C:\Users\puncher\AppData\Local\Temp\Schema.ddf
echo .set MaxDiskSize=0 >> C:\Users\puncher\AppData\Local\Temp\Schema.ddf
echo .set CompressionType=LZX >> C:\Users\puncher\AppData\Local\Temp\Schema.ddf
del /f C:\Users\puncher\AppData\Local\Temp\TEMP-4.tmp 2>NUL
call :CAB_DIR .
makecab.exe /f C:\Users\puncher\AppData\Local\Temp\Schema.ddf
del /f C:\Users\puncher\AppData\Local\Temp\Schema.ddf 2>NUL
del /f C:\Users\puncher\AppData\Local\Temp\TEMP-4.tmp 2>NUL
popd
goto :Return
REM CAB Helper
:CAB_DIR
echo .set DestinationDir= >> C:\Users\puncher\AppData\Local\Temp\Schema.ddf
for /f "tokens=*" %%i in ('dir /b /a:-d ') do (
echo "\%%i" >> C:\Users\puncher\AppData\Local\Temp\Schema.ddf
)
for /f "tokens=*" %%i in ('dir /b /a:d ') do (
call :CAB_DIR "\%%i"
)
goto :Return
REM Calls reg.exe query on the given regkey and appends output to the given file.
REM If regkey didn't exist, logs that it was not found.
REM Parameter 1: regkey subpath (anything after HKLM\Software, HKCU\Software, or HKLM\Software\WOW6432Node etc.)
REM Parameter 2: params for reg query (e.g. /s)
REM Parameter 3: output file to append to
REM Paramter 4 - n: regkey prefixes to query. E.g. HKLM\Software, HKCU\Software, HKLM\Software\WOW6432Node etc.
:LogRegkey
set argCount=0
for %%x in () do (
set /a argCount+=1
if 0 GTR 3 (
reg.exe query "%%x" > nul 2>&1
if 0 EQU 0 (
reg.exe query "%%x"  >> "" 2>&1
) ELSE (
echo "%%x" NOT FOUND >> ""
)
)
)
goto :Return
:SendMail
start mailto:wldrxireport@microsoft.com?subject=[Issue%%20Reporter%%20Logs]%%20New%%20logs%%20from%%20MISCREANTTEARS^&body=A%%20new%%20set%%20of%%20logs%%20have%%20been%%20submitted%%20from%%20device%%20MISCREANTTEARS.%%20The%%20logs%%20can%%20be%%20found%%20here:%%0D%%0A%%20%%~j\%%~i%%0D%%0A%%0D%%0AYou%%20can%%20reference%%20this%%20report%%20at%%20any%%20time%%20by%%20mailing%%20the%%20wldrxireport%%20alias%%20and%%20including%%20the%%20following%%20report%%20identifier:%%0D%%0A%%~i%%0D%%0A%%0D%%0A(Optional)%%20additional%%20comments/repro%%20steps:"
goto :Return
:Return
exit /b 1