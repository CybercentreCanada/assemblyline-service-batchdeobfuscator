@echo off
REM Copyright (c) 2015 - Nick Stanton - SNS Computing - http://Solian.ca - http://www.snscomputing.com/
REM This script has been tested on Windows 7 x86/x64 and Windows 8.1 x64.
REM Change Log:
REM v1.2.6
REM -Added Ammyy Admin, FileZilla, WireShark, and Procmon to download list
REM -Fixed dropbox.exe and hid the error if not found
REM -Encountered a bug where under the right circumstances, commands the toolkit uses are disabled and simply will not
REM 	run from where ever it is located. To test if this is the case, try to access the ping and/or tracert
REM 	commands using a standard command prompt (not elevated). If this is the case, then the pathing to system32 is incorrect.
REM	-WORKAROUND: Place the toolkit inside the system32 folder and it should open normally. There is currently no fix for this.
REM -Added "Power Efficiency Diagnostics Report" to PC House keeping list
REM -If a known PUP has a static uninstaller program, it will be executed during the pup / toolbar script (number 2 in main menu)
REM -Found personally that it's a pain in the ass to keep opening more command prompts on the side, especailly when im trying to
REM 	do other things while running the toolkit.
REM	-Added function where if you type 'cmd' in the main menu, opens an elevated command prompt
REM -Changed System file checker to export found issues to a text file on desktop called 'sfcdetails.txt'
REM -Added programs to bloatware list:
REM	-HP (Added more)
REM	-Microsoft Office Wrapper
REM	-Gadwin PrintScreen
REM	-HP LaserJet Fax Receive Utility
REM 	-UPS Monitor
REM	-TheWeatherNetwork
REM	-Dropbox
REM v1.2.5
REM -Alot of malware programs end up in %temp%. Changed 1 so when it starts killing malware it cleans the temp folder first.
REM -Added VNC Enterprise to Downloads page
REM -Removed any/all traces of "lemons" from when this script was created. Replaced entries with SNS.
REM -Added programs to malware list:
REM	-GlobalUpdate (Added more)
REM	-WordShark
REM	-Space Sound Pro
REM	-Rapid Media Converter
REM 	-System Notifier
REM	-MindSpark (Added more)
REM	-TelevisionFanatic
REM	-Petty Court
REM	-Ioartlieme
REM	-WebSteroids
REM -Added programs to bloatware list:
REM	-ASUS AXSP
REM	-Toshiba FlashCards
REM	-Toshiba Service Station
REM	-Toshiba Power Saver
REM	-Toshiba BulletinBoard
REM	-Toshiba ReelTime
REM	-Toshiba HDD SSD Alert
REM	-Toshiba ConfigFree
REM -Added programs to services list:
REM	-"Petty Court"
REM	-TelevisionFanaticService
REM	-3e02e3c9
REM	-TrustMix
REM	-VideoDownloadConverter_4zService
REM	-VideoDownloadConverterService
REM -fixed CCleaner installer. (everything was still in the old directory on my server of /lemons/ when i was updating the /sns/ folder instead xD
REM v1.2.4
REM -Added a function that attempts to stop the malicious services before disabling them
REM -Made some subtle visual changes.
REM -Changed the disclaimer when running 1. You now have to type in "AGREE" in order to start killing processes.
REM -Added programs to bloatware list:
REM     -ActivateDesktop
REM     -AcerPortal
REM     -MSG
REM     -Setting
REM     -TriggerFramework
REM     -UBTService
REM     -NASvc
REM     -NANotify
REM -Added programs to malware list:
REM     -Privoxy (Added more)
REM     -GlobalUpdate
REM     -"firmware installer"
REM     -desktop
REM     -aLgPg2wPM
REM     -KoOOigEwAlw3ZEOy2NOtE1uFnU
REM     -pmUeRxMXrc2wXt
REM     -check
REM     -utils
REM     -soc3hen
REM     -soc6hen
REM     -socahen
REM     -socdhen
REM     -socwhen
REM     -CinemaPlus-3.2cV23.07
REM     -EpsanDrive
REM     -SoftConfigTest
REM -Added services to malware list:
REM     -bebtosho
REM     -Checker
REM     -ipucatyj
REM     -aaf818c3
REM     -LiveReader
REM     -"Update Mgr SeeResultsHub"
REM     -"Service Mgr SeeResultsHub"
REM v1.2.3
REM -Added programs to malware list:
REM     -CloudScout
REM     -SearchProtect (Added more)
REM     -PluginContainer
REM     -Updater
REM -Added services to malware list:
REM     -Service Mgr RecordPage
REM     -Update Mgr RecordPage
REM     -bca22949
REM v1.2.2
REM -Added programs to malware list:
REM     -SlimCleanerPlus
REM     -mdp
REM     -DriverUpdate
REM -Added programs to bloatware list:
REM     -CNQMACNF
REM     -CNQMINST
REM     -CNQMLNCR
REM     -CNQMSWCS
REM     -CNQMULNC
REM     -CNQMUPDT
REM     -CNSEMAIN
REM v1.2.1
REM -Added services to malware list:
REM 	-WtuSystemSupport
REM 	-vToolbarUpdater18.4.0
REM 	-WajamUpdaterV3
REM -Added programs to malware list:
REM 	-DefaultTab
REM 	-vToolbar
REM 	-PC Health Kit
REM 	-Wajam
REM 	-Betcat
REM -Added programs to bloatware list:
REM 	-Teamviewer 8
REM 	-AVG Web Tuneup
REM 	-Apple Mobile Device Support
REM 	-BingBar
REM 	-HP Software (4500 ENVY)
REM 	-OtShot
REM 	-Speech Recognition Software
REM -Fixed a few more visual glitches.
REM v1.2
REM -Added services to malware list:
REM 	-MapsGalaxyService
REM		-MapsGalaxy_39Service
REM		-EZ Software Updater
REM		-f1f78e38 (WinSpeed)
REM -Added programs to malware list:
REM		-39barsvc.exe (MapsGalaxy)
REM		-AppIntegrator64.exe (MapsGalaxy)
REM		-39SrchMn.exe (MapsGalaxy)
REM		-39bar.dll (MapsGalaxy)
REM		-39SrcAs.dll (MapsGalaxy)
REM		-JYI.exe (SamartCOmpuare)
REM		-EZ Software Updater.exe (EZ%20Software%20Updater.exe)
REM -Cleaned up visuals for 1 & 2
REM -Changed downloads for Java, Adobe Reader, Adobe Flash
REM 	-These programs do not have auto updaters, and it's annoying having to constantly update the files i have on the server (if they're not up to date, they don't even run)
REM 	-Removed the setup file completely, and added a redirect to the website which always has an up to date version that can be downloaded.
REM -Changed "Clean temp and disk" to "PC House Keeping"
REM 	-Added recycle bin cleanup
REM 	-Added Browser Cleanup
REM -Added Menu Option "AV Scan"
REM 	-Clam Anti-Virus
REM -Added a function to remove reg keys when needed. Will be using this later on.
REM -Removed Emergency Scan option from main menu (nobody used it anyways)
REM -Added Teamviewer 10, Google Chrome, and Mozilla FireFox to downloads page.
REM v1.1.1
REM Added programs to bloatware list: LogitechUpdate
REM Added services to malware list:
REM     UpdateCheck, SPBIUpd, SMUpd, OfMQduaBIJq, CoupoonService, BrsHelper,
REM     gykoruqo
REM Added programs to malware list:
REM     a4SpeedCheckJ53, ansv95, beExpU, bnsg82, cltmng, CltMngSvc, cltmngui,
REM     cnsx98, gmsd_ca_497, gmsd_us_619, ConsumerInputUpdate, hnsl69.tmp, jnsz65.tmp,
REM     N2ox192, nsd11E.tmp, nsdBD.tmp, nsf50.tmpfs, nsm519.tmpfs, smss, snss594,
REM     UMVPFSrv, upgmsd_ca_497, upgmsd_us_619, vnsy37, CALMAIN, CameraHelperShell,
REM     COCIManager, crossbrowse, daemonu, dca-monitoring, FlashBeat, upgmsd_ca_493,
REM     gmsd_ca_493, HDeck, IAAnotif, IAANTmon, jnse53A, Kikblaster, LULnchr, LWS,
REM     UpdateCheck, YTDownloader, SSScheduler, unsecapp, wueooalu
REM v1.1
REM -Removed bitsadmin as the download client. Using a custom vbscript to download files now. Will make an exe later on.
REM -Added malware to list
REM     -Privoxy
REM     -MyWinLocker
REM     -GeniusBox
REM     -DriverDetective
REM -Added various acer programs to bloatware list
REM -Updated java, adobe, and mbam installers
REM
REM v1.02
REM -Added ListCWall (Cryptowall Detector) under anti-rootkit
REM -Added RogueKiller under anti-rootkit
REM -Changed how files are downloaded. Using a VBS script now instead of bitsadmin
REM -Added the following malicious programs:
REM	-Privoxy
REM	-PrivoxyService
REM.
REM v1.01
REM -Fixed some visual things
REM -Added the following malicious programs:
REM	-Pokki
REM -Added new kill progs: iTunes, iPod support, Blackberry progs, Android progs, Samsung keis
REM 	-They pose no threat, but are annoying when trying to clean out a pc.
REM v1.0
REM -Initial Release
CLS
ECHO =============================
ECHO Running Admin shell
ECHO =============================
:CHECKPRIVS
REM Checking if we have admin rights.
NET FILE 1>NUL 2>NUL
if '0' == '0' (
 goto ARCHTYPE 
) else (
goto GETPRIVS 
)
:GETPRIVS
REM We don't have admin privs. Writing a temp VBScript file that when executed, will re-open lemonaid with admin rights.
if ''=='ELEV' (
shift
goto gotPrivileges)
ECHO =============================
ECHO Invoking UAC for Privilege Escalation
ECHO =============================
setlocal DisableDelayedExpansion
set "batchPath=script.bat"
setlocal EnableDelayedExpansion
ECHO Set UAC = CreateObject("Shell.Application") > "C:\Users\puncher\AppData\Local\Temp\OEgetPrivileges.vbs"
ECHO UAC.ShellExecute "script.bat"  "ELEV"  ""  "runas"  1 >> "C:\Users\puncher\AppData\Local\Temp\OEgetPrivileges.vbs"
"C:\Users\puncher\AppData\Local\Temp\OEgetPrivileges.vbs"
exit /B
:ARCHTYPE
REM We have admin rights. Let's check to see if we are running x86 or x64 for later use.
setlocal
pushd .
Set RegQry=HKLM\Hardware\Description\System\CentralProcessor\0
REG.exe Query HKLM\Hardware\Description\System\CentralProcessor\0 > checkOS.txt
Find /i "x86" < CheckOS.txt > StringCheck.txt
If 0 == 0 (
SET ARCH=32
) ELSE (
SET ARCH=64
)
GOTO LEMONPREP
:LEMONPREP
REM Creating new sns directory in temp. Cleaning up files left behind by archtype and getprivs.
RD /S /Q C:\Users\puncher\AppData\Local\Temp\sns\
md C:\Users\puncher\AppData\Local\Temp\sns
del checkOS.txt
del StringCheck.txt
Set dlflag=0
Set zipflag=0
GOTO DISCLAIMER
:DISCLAIMER
REM Main disclaimer. Will change in time.
color 17
TITLE Software N Systems Toolkit v1.2.6
cls
echo                        Software N Systems Toolkit v1.2.6
echo -------------------------------------------------------------------------------
echo This program is designed to terminate malware / bloatware processes running
echo in the background on the target computer while providing tools to permanently
echo remove any/all infections that may be present.
echo
echo We are not responsible for any damage caused by this script. By agreeing to
echo this disclaimer and running this script  you (the user) take full
echo responsibility for anything that may happen while this program is removing
echo running processes from this system.
echo.
echo.
echo              =================================================
echo                              Please make sure to
echo               !
echo                               before continuing.
echo              =================================================
echo.
echo.
echo.
SET KFLAG=2
SET /P ANSWER=Type "AGREE" to continue:
IF __input__==AGREE (
GOTO HOME
) ELSE (
EXIT
)
:HOME
REM Main Menu.
cls
echo.
echo SNS Toolkit v1.2.6
ECHO -------------------------------------------
echo.
ECHO Please select one of the following actions:
echo.
echo 1. Kill known malware processes and services
echo 2. Remove PUP toolbars
echo 3. Flush TCP/IP Settings and Winsock Catalog
echo.
echo 4. Anti-Virus Scanners...
echo 5. Downloads...
echo 6. PC House Keeping...
echo 7. Malware/Rootkit Removal...
echo ---
echo.
SET /P ANSWER=Selection:
IF __input__==1 (
GOTO PREKILL
) ELSE IF __input__==2 (
GOTO TOOLBAR
) ELSE IF __input__==3 (
GOTO TCP
) ELSE IF __input__==4 (
GOTO AV
) ELSE IF __input__==5 (
GOTO DOWNLOADS
) ELSE IF __input__==6 (
GOTO HOUSEKEEPING
) ELSE IF __input__==7 (
GOTO ROOTKIT
) ELSE IF __input__==showmesomecrack (
GOTO CRACK
) ELSE IF __input__==putty (
GOTO PUTTY
) ELSE IF __input__==cmd (
GOTO CMDPROMPT
) ELSE (
GOTO HOME
)
:CMDPROMPT
START /realtime cmd.exe
GOTO HOME
:DIST2010CHK
REM Querying the registry to see if a specific folder exists. This folder would have been created if C++ 2010 Redist was installed.
REG.exe Query HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\VisualStudio\10.0\VC\VCRedist
If 0 == 0 (
GOTO 
) ELSE (
GOTO NO2010DIST
)
:NO2010DIST
cls
If 64 == 32 (
Set dlvbsurl=http://solian.ca/sns/vcredist_x86.exe
Set dlvbsexe=vcredist_x86.exe
Set dlvbsreturn=NO2010DIST
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading Microsoft Visual C++ 2010 Redist x86. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo Opening installer... Please follow the prompts that appear on screen.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\vcredist_x86.exe
Set dlflag=0
GOTO DLCLAM2
) ELSE (
Set dlvbsurl=http://solian.ca/sns/vcredist_x64.exe
Set dlvbsexe=vcredist_x64.exe
Set dlvbsreturn=NO2010DIST
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading Microsoft Visual C++ 2010 Redist x64. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo Opening installer... Please follow the prompts that appear on screen.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\vcredist_x64.exe
Set dlflag=0
GOTO DLCLAM2
)
GOTO DLCLAM2
:PUTTY
Set dlvbsurl=http://solian.ca/sns/putty.exe
Set dlvbsexe=putty.exe
Set dlvbsreturn=PUTTY
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading PuTTY SSH/Telnet client. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo.
echo Opening PuTTY. When closed  it will perform a cleanup.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\putty.exe
echo.
echo.
echo.
echo Putty closed. Flushing cache.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\putty.exe -cleanup
echo removing putty.
del C:\Users\puncher\AppData\Local\Temp\sns\putty.exe
Set dlflag=0
GOTO HOME
:DOWNLOADSCRIPT
echo dim xHttp: Set xHttp = createobject("Microsoft.XMLHTTP") > C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo dim bStrm: Set bStrm = createobject("Adodb.Stream") >> C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo xHttp.Open "GET"  "http://solian.ca/sns/putty.exe"  False >> C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo xHttp.Send >> C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo with bStrm >> C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo     .type = 1 '//binary >> C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo     .open >> C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo     .write xHttp.responseBody >> C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo     .savetofile "C:\Users\puncher\AppData\Local\Temp\sns\putty.exe"  2 '//overwrite >> C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo end with >> C:\Users\puncher\AppData\Local\Temp\dl.vbs
Set dlflag=1
GOTO PUTTY
:CRACK
REM Microsoft Activation Toolkit is used for cracking Windows Operating Systems and Microsoft Office installs.
Set dlvbsurl=http://solian.ca/sns/mat.exe
Set dlvbsexe=mat.exe
Set dlvbsreturn=CRACK
IF 1==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading Microsoft Activation Toolkit. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo Opening Activator...
start /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\mat.exe
echo.
echo.
echo.
pause
GOTO HOME
:PREKILL
REM Taking measures before killing processes
echo ---Preparing . . .
del C:\Users\puncher\AppData\Local\Temp\*.* /F /Q 2> nul
RMDIR /S /Q C:\Users\puncher\AppData\Local\Temp\ 2> nul
cls
SET KFLAG=2
GOTO KILL
:AV
cls
echo ---------------ANTI-VIRUS---------------
echo.
echo 1. Clam Anti-Virus Portable [auto-scan]
echo.
echo 4. Microsoft Security Essentials (x86/x64) [.msi installer]
echo.
echo.
echo.
echo 9. back...
echo ---
echo.
SET /P ANSWER=Selection:
IF __input__==1 (
GOTO DLCLAM
) ELSE IF __input__==4 (
GOTO DLMSE
) ELSE IF __input__==9 (
GOTO HOME
) ELSE (
GOTO AV
)
:UNZIP
REM Writing a VBS unzip script with global variables set by the download functions.
echo ZipFile="" > C:\Users\puncher\AppData\Local\Temp\unzip.vbs
echo ExtractTo="" >> C:\Users\puncher\AppData\Local\Temp\unzip.vbs
echo Set fso = CreateObject("Scripting.FileSystemObject") >> C:\Users\puncher\AppData\Local\Temp\unzip.vbs
echo If NOT fso.FolderExists(ExtractTo) Then >> C:\Users\puncher\AppData\Local\Temp\unzip.vbs
echo    fso.CreateFolder(ExtractTo) >> C:\Users\puncher\AppData\Local\Temp\unzip.vbs
echo End If >> C:\Users\puncher\AppData\Local\Temp\unzip.vbs
echo set objShell = CreateObject("Shell.Application") >> C:\Users\puncher\AppData\Local\Temp\unzip.vbs
echo set FilesInZip=objShell.NameSpace(ZipFile).items >> C:\Users\puncher\AppData\Local\Temp\unzip.vbs
echo objShell.NameSpace(ExtractTo).CopyHere(FilesInZip) >> C:\Users\puncher\AppData\Local\Temp\unzip.vbs
echo Set fso = Nothing >> C:\Users\puncher\AppData\Local\Temp\unzip.vbs
echo Set objShell = Nothing >> C:\Users\puncher\AppData\Local\Temp\unzip.vbs
set zipflag=1
GOTO CRACK
:DLCLAM
md C:\Users\puncher\AppData\Local\Temp\sns\av
md C:\Users\puncher\AppData\Local\Temp\sns\av\clam
REM Checking Visual C++ 2010 Redist install
Set returnchk==DLCLAM2
GOTO DIST2010CHK
:DLCLAM2
Set dlvbsurl=http://solian.ca/sns/clamav-0.98.7-win32.zip
Set dlvbsexe=clamav-0.98.7-win32.zip
Set dlvbsreturn=DLCLAM2
IF 1==0 (
GOTO DOWNLOADSCRIPT
)
IF 1==1 (
CLS
)
IF 1==0 (
echo Downloading Clam Anti-Virus. Please Wait...
)
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
set unzipdir=C:\Users\puncher\AppData\Local\Temp\sns\clamav-0.98.7-win32.zip
set unzipnewdir=C:\Users\puncher\AppData\Local\Temp\sns\av\clam\
IF 1==0 (
GOTO UNZIP
)
echo.
echo Unzipping...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\unzip.vbs
md C:\Users\puncher\AppData\Local\Temp\sns\av\clam\ClamAV\database\
md C:\Users\puncher\AppData\Local\Temp\sns\av\clam\ClamAV\quarantine\
echo.
echo Updating virus/malware definitions. This will take a few minutes.
echo.
echo DatabaseMirror database.clamav.net > C:\Users\puncher\AppData\Local\Temp\sns\av\clam\ClamAV\freshclam.conf
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\av\clam\ClamAV\freshclam.exe
echo ---
echo Beginning scan. This can take up to 1 hour to complete for slower machines.
echo.
echo Only infected files will appear in the scan window. You will hear the sound of
echo a bell if an infected file has been found and quarantined.
echo.
echo -Quarantine DIR: C:\Users\puncher\AppData\Local\Temp\sns\av\clam\ClamAV\quarantine\
echo.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\av\clam\ClamAV\clamscan.exe -r --bell --move=C:\Users\puncher\AppData\Local\Temp\sns\av\clam\ClamAV\quarantine\ --scan-pe=yes --scan-elf=yes --scan-pdf=yes --scan-html=yes --scan-archive=yes -r C:\
echo.
echo.
echo.
Set dlflag=0
Set zipflag=0
GOTO HOME
:ROOTKIT
cls
echo ---------------MALWARE/ROOTKIT REMOVAL---------------
echo.
echo 1. MalwareBytes Anti-Malware [installer]
echo 2. MalwareBytes Anti-Exploit [installer]
echo 3. RKILL Anti-Malware
echo 4. AdwCleaner
echo 5. ListCWall - CryptoWall Detector
echo 6. RogueKiller Anti-Malware
echo 7. ComboFix Anti-Malware/Rootkit [installer]
echo 8. TDSS Killer Anti-Rootkit
echo.
echo.
echo.
echo 9. back...
echo ---
echo.
SET /P ANSWER=Selection:
IF __input__==1 (
GOTO DLMBAM
) ELSE IF __input__==2 (
GOTO DLMBAE
) ELSE IF __input__==3 (
GOTO DLRKILL
) ELSE IF __input__==4 (
GOTO DLADW
) ELSE IF __input__==5 (
GOTO DLLCW
) ELSE IF __input__==6 (
GOTO DLROGUE
) ELSE IF __input__==7 (
GOTO DLCOMBO
) ELSE IF __input__==8 (
GOTO DLTDSS
) ELSE IF __input__==9 (
GOTO HOME
) ELSE (
SET ERRORFLAG==1
GOTO ROOTKIT
)
:DLROGUE
Set dlvbsurl=http://solian.ca/sns/roguekiller.exe
Set dlvbsexe=roguekiller.exe
Set dlvbsreturn=DLROGUE
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading RogueKiller Anti-Malware. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo Opening installer... Please follow the prompts that appear on screen.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\roguekiller.exe
echo.
echo.
echo.
Set dlflag=0
GOTO ROOTKIT
:DLLCW
Set dlvbsurl=http://solian.ca/sns/listcwall.exe
Set dlvbsexe=listcwall.exe
Set dlvbsreturn=DLLCW
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading ListCWall Cryptowall Detector. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo Opening installer... Please follow the prompts that appear on screen.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\listcwall.exe
echo.
echo.
echo.
Set dlflag=0
GOTO ROOTKIT
:DLADW
Set dlvbsurl=http://solian.ca/sns/adwcleaner.exe
Set dlvbsexe=adwcleaner.exe
Set dlvbsreturn=DLADW
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading AdwCleaner Anti-Adware. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo Opening installer... Please follow the prompts that appear on screen.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\adwcleaner.exe
echo.
echo.
echo.
Set dlflag=0
GOTO ROOTKIT
:DLCOMBO
Set dlvbsurl=http://solian.ca/sns/combofix.exe
Set dlvbsexe=combofix.exe
Set dlvbsreturn=DLCOMBO
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading ComboFix Anti-Malware/Rootkit. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo.
echo Please save/close all files and programs before proceeding.
echo.
echo.
echo.
pause
echo Opening installer... Please follow the prompts that appear on screen.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\combofix.exe
cls
echo.
echo Please follow the instructions provided by ComboFix.
echo -Waiting 30s then terminating this script.
ping 127.0.0.1 -n 30>nul
exit.
:DLTDSS
Set dlvbsurl=http://solian.ca/sns/tdss.exe
Set dlvbsexe=tdss.exe
Set dlvbsreturn=DLTDSS
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading TDSSKiller Anti-Rootkit. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo Opening installer... Please follow the prompts that appear on screen.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\tdss.exe
echo.
echo.
echo.
Set dlflag=0
GOTO ROOTKIT
:DLRKILL
Set dlvbsurl=http://solian.ca/sns/rkill.exe
Set dlvbsexe=rkill.exe
Set dlvbsreturn=DLRKILL
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading rKill Anti-Rootkit. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo Opening installer... Please follow the prompts that appear on screen.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\rkill.exe
echo.
echo.
echo.
Set dlflag=0
GOTO ROOTKIT
:HOUSEKEEPING
cls
echo ---------------PC House Keeping---------------
echo.
echo 1. Remove all temporary folders and files
echo 2. Verify integrity of system files [sfc]
echo 3. Disk Cleanup
echo 4. Browser Cleanup (Resets to factory default)
echo 5. Power Efficiency Diagnostics Report
echo.
echo.
echo.
echo 9. back...
echo ---
echo.
SET /P ANSWER=Selection:
IF __input__==1 (
GOTO TEMPCLEAN
) ELSE IF __input__==2 (
GOTO WINSFC
) ELSE IF __input__==3 (
GOTO WINCLEAN
) ELSE IF __input__==4 (
GOTO BROWSERS
) ELSE IF __input__==5 (
GOTO POWERCFG
) ELSE IF __input__==9 (
GOTO HOME
) ELSE (
GOTO HOUSEKEEPING
)
:POWERCFG
cls
echo.
echo Starting analysis...
powercfg -energy
echo.
echo.
echo Copying report...
copy C:\Windows\system32\energy-report.html C:\Users\puncher\AppData\Local\Temp\sns\energy-report.html /I
echo Opening report...
start iexplore.exe C:\Users\puncher\AppData\Local\Temp\sns\energy-report.html
echo.
echo.
pause
GOTO HOUSEKEEPING
:BROWSERS
cls
echo Removing temp internet files  history  cookies  etc.
REM Google Chrome
set DataDir=C:\Users\puncher\AppData\Local\Google\Chrome\User Data 2> nul
del /q /s /f "C:\Users\puncher\AppData\Local\Google\Chrome\User Data 2> nul" 2> nul
rd /s /q "C:\Users\puncher\AppData\Local\Google\Chrome\User Data 2> nul" 2> nul
REM Mozilla Firefox
set DataDir=C:\Users\puncher\AppData\Local\Mozilla\Firefox\Profiles 2> nul
del /q /s /f "C:\Users\puncher\AppData\Local\Mozilla\Firefox\Profiles 2> nul" 2> nul
rd /s /q "C:\Users\puncher\AppData\Local\Mozilla\Firefox\Profiles 2> nul" 2> nul
for /d %%x in (C:\Users\puncher\AppData\Roaming\Mozilla\Firefox\Profiles\*) do (
del /q /s /f %%x\*sqlite 2> nul
)
REM Opera
set DataDir=C:\Users\puncher\AppData\Local\Opera\Opera 2> nul
set DataDir2=C:\Users\puncher\AppData\Roaming\Opera\Opera 2> nul
del /q /s /f "C:\Users\puncher\AppData\Local\Opera\Opera 2> nul" 2> nul
rd /s /q "C:\Users\puncher\AppData\Local\Opera\Opera 2> nul" 2> nul
del /q /s /f "C:\Users\puncher\AppData\Roaming\Opera\Opera 2> nul" 2> nul
rd /s /q "C:\Users\puncher\AppData\Roaming\Opera\Opera 2> nul" 2> nul
REM Apple Safari
set DataDir=C:\Users\puncher\AppData\Local\Applec~1\Safari 2> nul
set DataDir2=C:\Users\puncher\AppData\Roaming\Applec~1\Safari 2> nul
del /q /s /f "C:\Users\puncher\AppData\Local\Applec~1\Safari 2> nul\History" 2> nul
rd /s /q "C:\Users\puncher\AppData\Local\Applec~1\Safari 2> nul\History" 2> nul
del /q /s /f "C:\Users\puncher\AppData\Local\Applec~1\Safari 2> nul\Cache.db" 2> nul
del /q /s /f "C:\Users\puncher\AppData\Local\Applec~1\Safari 2> nul\WebpageIcons.db" 2> nul
del /q /s /f "C:\Users\puncher\AppData\Roaming\Applec~1\Safari 2> nul" 2> nul
rd /s /q "C:\Users\puncher\AppData\Roaming\Applec~1\Safari 2> nul" 2> nul
REM Internet Explorer
RunDll32.exe InetCpl.cpl ClearMyTracksByProcess 255 2> nul
RunDll32.exe InetCpl.cpl ClearMyTracksByProcess 4351 2> nul
GOTO HOUSEKEEPING
:TEMPCLEAN
cls
ECHO Deleting temporary files
echo.
del C:\Users\puncher\AppData\Local\Temp\*.* /F /Q 2> nul
ECHO Deleting temporary directories
echo.
RMDIR /S /Q C:\Users\puncher\AppData\Local\Temp\ 2> nul
ECHO Cleaning Recycle Bin
echo.
rmdir /Q /S "C:\$RECYCLE.BIN" 2> nul
md C:\Users\puncher\AppData\Local\Temp\sns
echo.
echo.
echo.
pause
GOTO HOUSEKEEPING
:WINSFC
cls
sfc /scannow
echo.
echo.
echo.
echo ---
echo Exporting results from SFC to text.
findstr /c:"[SR]" C:\WINDOWS\Logs\CBS\CBS.log >"C:\Users\puncher\Desktop\sfcdetails.txt"
echo Location: C:\Users\puncher\Desktop\sfcdetails.txt
echo.
pause
GOTO HOUSEKEEPING
:WINCLEAN
REM Cleaning blank space on hard drive. this may take a while. using 3rd party microsoft program, not through batch file.
cls
echo Launching windows disk cleanup. Please wait.
c:\windows\system32\cleanmgr.exe /lowdiskspace >nul
echo.
echo.
echo.
echo ---
pause
GOTO HOUSEKEEPING
:DOWNLOADS2
cls
echo ---------------DOWNLOADS---------------
echo Note: All downloads are installers unless otherwise specified
echo.
echo.
echo 1. Mozilla FireFox Browser
echo 2. Real VNC Enterprise
echo 3. PuTTY Telnet/SSH Client
echo 4. Ammyy Admin [portable]
echo 5. FileZilla FTP Client
echo 6. Procmon [portable]
echo 7. Wireshark
echo.
echo.
echo.
echo 9. Back...
echo ---
echo.
SET /P ANSWER=Selection:
IF __input__==1 (
GOTO DLFIREFOX
)
IF __input__==2 (
GOTO DLVNC
)
IF __input__==3 (
GOTO PUTTY
)
IF __input__==4 (
GOTO DLAMMYY
)
IF __input__==5 (
GOTO DLFZ
)
IF __input__==6 (
GOTO DLPROCMON
)
IF __input__==7 (
GOTO DLSHARK
)
IF __input__==9 (
GOTO DOWNLOADS
)
:DLSHARK
Set dlvbsurl=http://solian.ca/sns/wireshark.exe
Set dlvbsexe=wireshark.exe
Set dlvbsreturn=DLSHARK
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading WireShark Packet Tracer/Sniffer. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo Opening installer... Please follow the prompts that appear on screen.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\wireshark.exe
echo.
echo.
echo.
Set dlflag=0
GOTO HOME
:DLPROCMON
Set dlvbsurl=http://solian.ca/sns/procmon.exe
Set dlvbsexe=procmon.exe
Set dlvbsreturn=DLPROCMON
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading Procmon Process Analyzer. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo Opening installer... Please follow the prompts that appear on screen.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\procmon.exe
echo.
echo.
echo.
Set dlflag=0
GOTO HOME
:DLFZ
Set dlvbsurl=http://solian.ca/sns/filezilla.exe
Set dlvbsexe=filezilla.exe
Set dlvbsreturn=DLFZ
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading FileZilla FTP Client. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo Opening installer... Please follow the prompts that appear on screen.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\filezilla.exe
echo.
echo.
echo.
Set dlflag=0
GOTO HOME
:DLAMMYY
Set dlvbsurl=http://solian.ca/sns/ammyy.exe
Set dlvbsexe=ammyy.exe
Set dlvbsreturn=DLAMMYY
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading Ammyy Admin Remote Desktop Software. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo Opening installer... Please follow the prompts that appear on screen.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\ammyy.exe
echo.
echo.
echo.
Set dlflag=0
GOTO HOME
:DOWNLOADS
cls
echo ---------------DOWNLOADS---------------
echo Note: All downloads are installers unless otherwise specified
echo.
echo.
echo 1. Teamviewer 10
echo 2. Skype
echo 3. CCleaner
echo 4. Java SE Version 8 Rev 45
echo 5. Adobe Flash Player
echo 6. Adobe Reader DC
echo 7. Google Chrome Browser
echo.
echo.
echo 8. Next page...
echo.
echo.
echo 9. Home...
echo ---
echo.
SET /P ANSWER=Selection:
IF __input__==1 (
GOTO DLTV
)
IF __input__==2 (
GOTO DLSKYPE
)
IF __input__==3 (
GOTO DLCCLEANER
)
IF __input__==4 (
GOTO DLJAVA
)
IF __input__==5 (
GOTO DLFLASH
)
IF __input__==6 (
GOTO DLREADER
)
IF __input__==7 (
GOTO DLCHROME
)
IF __input__==8 (
GOTO DOWNLOADS2
)
IF __input__==9 (
GOTO HOME
)
:DLVNC
Set dlvbsurl=http://solian.ca/sns/VNC_Enterprise_v451.exe
Set dlvbsexe=VNC_Enterprise_v451.exe
Set dlvbsreturn=DLVNC
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading Real VNC Enterprise v451. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo Opening installer... Please follow the prompts that appear on screen.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\VNC_Enterprise_v451.exe
echo.
echo.
echo.
Set dlflag=0
GOTO DOWNLOADS
:DLSKYPE
Set dlvbsurl=http://solian.ca/sns/SkypeSetup.exe
Set dlvbsexe=SkypeSetup.exe
Set dlvbsreturn=DLSKYPE
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading Skype for Windows Desktop. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo Opening installer... Please follow the prompts that appear on screen.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\SkypeSetup.exe
echo.
echo.
echo.
Set dlflag=0
GOTO DOWNLOADS
:DLTV
Set dlvbsurl=http://solian.ca/sns/TeamViewer_Setup_en.exe
Set dlvbsexe=TeamViewer_Setup_en.exe
Set dlvbsreturn=DLTV
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading TeamViewer 10. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo Opening installer... Please follow the prompts that appear on screen.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\TeamViewer_Setup_en.exe
echo.
echo.
echo.
Set dlflag=0
GOTO DOWNLOADS
:DLCHROME
Set dlvbsurl=http://solian.ca/sns/ChromeStandaloneSetup.exe
Set dlvbsexe=ChromeStandaloneSetup.exe
Set dlvbsreturn=DLCHROME
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading Google Chrome Web Browser. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo Opening installer... Please follow the prompts that appear on screen.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\ChromeStandaloneSetup.exe
echo.
echo.
echo.
Set dlflag=0
GOTO DOWNLOADS
:DLFIREFOX
Set dlvbsurl=http://solian.ca/sns/Firefox.exe
Set dlvbsexe=Firefox.exe
Set dlvbsreturn=DLFIREFOX
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading Mozilla FireFox Web Browser. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo Opening installer... Please follow the prompts that appear on screen.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\Firefox.exe
echo.
echo.
echo.
Set dlflag=0
GOTO DOWNLOADS
:DLFLASH
cls
echo Opening download link to Adobe Flash Player 18.
ping 127.0.0.1 >nul
start iexplore "https://get.adobe.com/flashplayer/"
GOTO DOWNLOADS
:DLREADER
cls
echo Opening download link to Adobe Reader DC.
ping 127.0.0.1 >nul
start iexplore "https://get.adobe.com/reader/"
GOTO DOWNLOADS
:DLJAVA
cls
echo Opening download link to Java Version 8.
ping 127.0.0.1 >nul
start iexplore https://www.java.com/inc/BrowserRedirect1.jsp?locale=en
GOTO DOWNLOADS
:DLMBAE
Set dlvbsurl=http://solian.ca/sns/mbae.exe
Set dlvbsexe=mbae.exe
Set dlvbsreturn=DLMBAE
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading MalwareBytes Anti-Expoit. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo Opening installer... Please follow the prompts that appear on screen.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\mbae.exe
echo.
echo.
echo.
Set dlflag=0
GOTO DOWNLOADS
:DLCCLEANER
Set dlvbsurl=http://solian.ca/sns/ccsetup508.exe
Set dlvbsexe=ccsetup504.exe
Set dlvbsreturn=DLCCLEANER
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading CCleaner 5.08. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo Opening installer... Please follow the prompts that appear on screen.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\ccsetup508.exe
echo.
echo.
echo.
Set dlflag=0
GOTO DOWNLOADS
:DLMBAM
Set dlvbsurl=http://solian.ca/sns/mbam.exe
Set dlvbsexe=mbam.exe
Set dlvbsreturn=DLMBAM
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading MalwareBytes Anti-Malware. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo Opening installer... Please follow the prompts that appear on screen.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\mbam.exe
echo.
echo.
echo.
Set dlflag=0
GOTO ROOTKIT
:DLMSE
cls
If 64 == 32 (
Set dlvbsurl=http://solian.ca/sns/mse_x86.exe
Set dlvbsexe=mse_x86.exe
Set dlvbsreturn=DLMSE
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading Microsoft Security Essentials x86. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo Opening installer... Please follow the prompts that appear on screen.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\mse_x86.exe
Set dlflag=0
GOTO AV
) ELSE (
Set dlvbsurl=http://solian.ca/sns/mse_x64.exe
Set dlvbsexe=mse_x64.exe
Set dlvbsreturn=DLMSE
IF 0==0 (
GOTO DOWNLOADSCRIPT
)
cls
echo Downloading Microsoft Security Essentials x64. Please Wait...
START /W /REALTIME C:\Users\puncher\AppData\Local\Temp\dl.vbs
echo.
echo Opening installer... Please follow the prompts that appear on screen.
start /w /REALTIME C:\Users\puncher\AppData\Local\Temp\sns\mse_x64.exe
Set dlflag=0
GOTO AV
)
GOTO HOME
:TCP
cls
echo.
echo ---resetting tcp connections
echo.
netsh interface tcp reset >nul
echo ---resetting https tunnels
echo.
netsh interface httpstunnel reset >nul
echo ---resetting portproxy settings
echo.
netsh interface portproxy reset >nul
echo ---resetting ip interfaces
echo.
netsh int ip reset >nul
echo ---resetting winsock catalog
echo.
netsh winsock reset >nul
echo ---flushing log buffer
echo.
netsh http flush logbuffer >nul
echo ---flushing dns
echo.
ipconfig /flushdns >nul
echo ---registering new dns
echo.
ipconfig /registerdns >nul
echo ---releasing dynamic ip
ipconfig /release >nul
echo      ---waiting 10s for complete release.
ping 127.0.0.1 -n 10 >nul
echo ---renewing dynamic ip
ipconfig /renew >nul
GOTO HOME
:TOOLBAR
cls
echo.
echo.
echo Please close browsers before continuing.
echo.
echo.
echo.
echo.
echo.
pause
cls
echo.
echo ---Killing browsers
echo.
taskkill /f /im iexplore.exe /im firefox.exe /im chrome.exe 2> nul
echo.
echo ---Removing Live Modules
echo.
REM removing Live Mesh
start /wait msiexec.exe /x {DECDCB7C-58CC-4865-91AF-627F9798FE48} /quiet /norestart 2> nul
REM removing Live Mesh ActiveX
start /wait msiexec.exe /x {2902F983-B4C1-44BA-B85D-5C6D52E2C441} /quiet /norestart 2> nul
REM removing Live Messager
start /wait msiexec.exe /x {EB4DF488-AAEF-406F-A341-CB2AAA315B90} /quiet /norestart 2> nul
REM removing Cisco EAP Fast Modules
start /wait msiexec.exe /x {64bf0187-f3d2-498b-99ea-163af9ae6ec9} /qn /norestart 2> nul
REM removing Cisco LEAP Module
start /wait msiexec.exe /x {51c7ad07-c3f6-4635-8e8a-231306d810fe} /qn /norestart 2> nul
REM removing Cisco PEAP Module
start /wait msiexec.exe /x {ed5776d5-59b4-46b7-af81-5f2d94d7c640} /qn /norestart 2> nul
REM removing Energy Star
start /wait msiexec.exe /x {bd1a34c9-4764-4f79-ae1f-112f8c89d3d4} /qn /norestart 2> nul
REM removing Evernote
start /wait msiexec.exe /x {f761359c-9ced-45ae-9a51-9d6605cd55c4} /qn /norestart 2> nul
REM removing Winzip
start /wait msiexec.exe /x {cd95f661-a5c4-44f5-a6aa-ecdd91c240bd} /qn /norestart 2> nul
REM removing SQL Compact
start /wait msiexec.exe /x {f0b430d1-b6aa-473d-9b06-aa3dd01fd0b8} /qn /norestart 2> nul
echo.
echo ---Uninstalling known malware/adware toolbars and PUPs
echo.
REM removing RegClean Pro
"C:\Program Files (x86)\RegClean Pro\unins000.exe" /silent 2> nul
"C:\Program Files\RegClean Pro\unins000.exe" /silent 2> nul
REM removing Registry Mechanic
"C:\Program Files\PC Tools Registry Mechanic\unins000.exe" /SILENT 2> nul
"C:\Program Files (x86)\PC Tools Registry Mechanic\unins000.exe" /SILENT 2> nul
REM removing Arcade Candy
"C:\Users\puncher\Local Settings\Application Data\ArcadeCandy\candyRemove.exe" 2> nul
REM removing PriceGong
"C:\Program Files\PriceGong\Uninst.exe" 2> nul
"C:\Program Files (x86)\PriceGong\Uninst.exe" 2> nul
REM removing Smart Shopper
"C:\Program Files\ShopperReports3\bin\3.0.491.0\ShopperReportsUninstaller.exe" Web 2> nul
"C:\Program Files (x86)\ShopperReports3\bin\3.0.491.0\ShopperReportsUninstaller.exe" Web 2> nul
REM removing Select Rebates
"C:\Program Files\SelectRebates\SelectRebatesUninstall.exe" 2> nul
"C:\Program Files (x86)\SelectRebates\SelectRebatesUninstall.exe" 2> nul
REM vGrabber-software
"C:\Program Files (x86)\vGrabber-software\Uninstall.exe" 2> nul
"C:\Program Files\vGrabber-software\Uninstall.exe" 2> nul
"C:\PROGRA~1\FROMDO~1\bar\1.bin\unins000.exe" 2> nul
"C:\Program Files\TweakBit\PCSpeedUp\unins000.exe" 2> nul
"C:\Program Files\VS Revo Group\Revo Uninstaller Pro\unins000.exe" 2> nul
"C:\Program Files (x86)\Super Optimizer\unins000.exe" 2> nul
"C:\Program Files (x86)\Optimizer Pro 3.56\unins000.exe" 2> nul
"C:\Program Files (x86)\WildTangent Games\App\unins000.exe" 2> nul
"C:\Program Files (x86)\Infonaut_1.10.0.14\Service\insvc.exe -uninstall" 2> nul
"C:\Program Files\015\lxrrlxtleh32\unins000.exe" 2> nul
"C:\Program Files (x86)\VideoDownloadConverter_4zEI\unins000.exe" 2> nul
"C:\Program Files\VideoDownloadConverter_4zEI" 2> nul
"C:\Program Files (x86)\Tuneup computer\unins000.exe" 2> nul
"C:\Program Files (x86)\Portable WeatherApp\unins000.exe" 2> nul
echo.
echo ---Removing mainstream toolbars
echo.
REM removing Ask Toolbar
"C:\Program Files\Ask.com\Updater\Updater.exe" -uninstall 2> nul
"C:\Program Files (x86)\Ask.com\Updater\Updater.exe" -uninstall 2> nul
start /wait msiexec.exe /x {13F537F0-AF09-11D6-9029-0002B31F9E59} /qn /norestart 2> nul
start /wait msiexec.exe /x {2318C2B1-4965-11D4-9B18-009027A5CD4F} /qn /norestart 2> nul
start /wait msiexec.exe /x {2E5E800E-6AC0-411E-940A-369530A35E43} /qn /norestart 2> nul
start /wait msiexec.exe /x {4E7BD74F-2B8D-469E-C0FB-F778B590AD7D} /qn /norestart 2> nul
start /wait msiexec.exe /x {5A263CF7-56A6-4D68-A8CF-345BE45BC911} /qn /norestart 2> nul
start /wait msiexec.exe /x {86D4B82A-ABED-442A-BE86-96357B70F4FE} /qn /norestart 2> nul
start /wait msiexec.exe /x {AA58ED58-01DD-4D91-8333-CF10577473F7} /qn /norestart 2> nul
start /wait msiexec.exe /x {AF69DE43-7D58-4638-B6FA-CE66B5AD205D} /qn /norestart 2> nul
start /wait msiexec.exe /x {D4027C7F-154A-4066-A1AD-4243D8127440} /qn /norestart 2> nul
start /wait msiexec.exe /x {EF99BD32-C1FB-11D2-892F-0090271D4F88} /qn /norestart 2> nul
start /wait MsiExec.exe /X {4152532D-4D45-4400-76A7-A758B70C0A06} /qn /norestart 2> nul
start /wait MsiExec.exe /X {41525333-2D56-3700-76A7-A758B70C0300} /qn /norestart 2> nul
start /wait MsiExec.exe /X {41525333-0076-A76A-76A7-A758B70C0A02} /qn /norestart 2> nul
start /wait MsiExec.exe /X {4F524A2D-5637-4300-76A7-A758B70C0A03} /qn /norestart 2> nul
start /wait msiexec.exe /x {42435041-2d53-4154-00a7-a758b70b0a00} /qn /norestart 2> nul
REM Bing/Windows Live Bar Removal
Start /wait msiexec.exe /x {C28D96C0-6A90-459E-A077-A6706F4EC0FC} /qn /norestart 2> nul
Start /wait MsiExec.exe /X {786C4AD1-DCBA-49A6-B0EF-B317A344BD66} /qn /norestart 2> nul
Start /wait MsiExec.exe /X {A5C4AD72-25FE-4899-B6DF-6D8DF63C93CF} /qn /norestart 2> nul
Start /wait MsiExec.exe /X {341201D4-4F61-4ADB-987E-9CCE4D83A58D} /qn /norestart 2> nul
Start /wait MsiExec.exe /X {F084395C-40FB-4DB3-981C-B51E74E1E83D} /qn /norestart 2> nul
Start /wait MsiExec.exe /X {D5A145FC-D00C-4F1A-9119-EB4D9D659750} /qn /norestart 2> nul
start /wait msiexec.exe /x {1e03db52-d5cb-4338-a338-e526dd4d4db1} /qn /norestart 2> nul
REM Remove AOL Toolbar
"C:\Program Files\AOL\AOL Toolbar 4.0\uninstall.exe" 2> nul
"C:\Program Files (x86)\AOL\AOL Toolbar 4.0\uninstall.exe" 2> nul
"C:\Program Files\AOL\AOL Toolbar 5.0\uninstall.exe" 2> nul
"C:\Program Files (x86)\AOL\AOL Toolbar 5.0\uninstall.exe" 2> nul
REM Remove Yahoo Toolbar
"C:\Program Files\Yahoo\Common\unyt.exe" /S 2> nul
RD "C:\Program Files\Yahoo\" /S /Q 2> nul
"C:\Program Files (x86)\Yahoo\Common\unyt.exe" 2> nul
RD "C:\Program Files (x86)\Yahoo\" /S /Q 2> nul
echo.
echo ---Removing junk toolbars
echo.
REM DVDVideosoftTBToolbar
"C:\Program Files\DVDVideoSoftTB\uninstall.exe" 2> nul
"C:\Program Files (x86)\DVDVideoSoftTB\uninstall.exe" 2> nul
REM removing PDForge Toolbar V6
Start /Wait MsiExec.exe /X{96B3C2A3-ADD6-4E63-89D3-1E3AC115D3FA} /qn /norestart 2> nul
REM Virtual DJ Toolbar
start /wait MsiExec.exe /X{56444A2D-5637-006A-76A7-A758B70C0A06} /qn /norestart 2> nul
REM AVG Toolbars
"C:\Program Files\AVG SafeGuard toolbar\UNINSTALL.exe" /PROMPT /UNINSTALL 2> nul
"C:\Program Files\AVG Secure Search\UNINSTALL.exe" /PROMPT /UNINSTALL 2> nul
"C:\Program Files (x86)\AVG SafeGuard toolbar\UNINSTALL.exe" /PROMPT /UNINSTALL 2> nul
"C:\Program Files (x86)\AVG Secure Search\UNINSTALL.exe" /PROMPT /UNINSTALL 2> nul
REM BT Toolbar
"C:\Program Files (x86)\bttb\uninstall.exe" 2> nul
"C:\Program Files\bttb\uninstall.exe" 2> nul
REM Buenosearch Toolbar
"C:\Program Files (x86)\buenosearch LTD\buenosearch\1.8.28.7\GUninstaller.exe" -uprtc -ask "Bueno Toolbar" -rmbus "buenosearch toolbar" -nontfy -key "buenosearch" 2> nul
"C:\Program Files\buenosearch LTD\buenosearch\1.8.28.7\GUninstaller.exe" -uprtc -ask "Bueno Toolbar" -rmbus "buenosearch toolbar" -nontfy -key "buenosearch" 2> nul
REM removing Xobi
"C:\Program Files (x86)\Xobni\UninstallerWizard.exe" -uninstall 2> nul
"C:\Program Files\Xobni\UninstallerWizard.exe" -uninstall 2> nul
REM Browser Defender
"C:\ProgramData\BrowserDefender\2.6.1562.221\{c16c1ccb-1111-4e5c-a2f3-533ad2fec8e8}\uninstall.exe" /Uninstall /{15D2D75C-9CB2-4efd-BAD7-B9B4CB4BC693} /su=3a6664ea8d80382b /um 2> nul
REM Search Protect by Conduit
"C:\Program Files\SearchProtect\bin\uninstall.exe" /S 2> nul
"C:\Program Files (x86)\SearchProtect\bin\uninstall.exe" /S 2> nul
REM SearchFlyBar2 Toolbar
"C:\Program Files\SearchFlyBar2\uninstall.exe" toolbar 2> nul
"C:\Program Files (x86)\SearchFlyBar2\uninstall.exe" toolbar 2> nul
REM FLV Runner Toolbar
"C:\Program Files\FLV_Runner\uninstall.exe" toolbar 2> nul
"C:\Program Files (x86)\FLV_Runner\uninstall.exe" toolbar 2> nul
"C:\Program Files\FLV_Runner_B2\uninstall.exe" toolbar 2> nul
"C:\Program Files (x86)\FLV_Runner_B2\uninstall.exe" toolbar 2> nul
"C:\Program Files\Begin-download_FLV_B2\uninstall.exe" toolbar 2> nul
"C:\Program Files (x86)\Begin-download_FLV_B2\uninstall.exe" toolbar 2> nul
REM xVidly4 Toolbar
"C:\Program Files\xvidly4\uninstall.exe" toolbar 2> nul
"C:\Program Files (x86)\xvidly4\uninstall.exe" toolbar 2> nul
REM BitTorrentControl_v12 Toolbar
"C:\Program Files (x86)\BitTorrentControl_v12\uninstall.exe" toolbar 2> nul
"C:\Program Files\BitTorrentControl_v12\uninstall.exe" toolbar 2> nul
REM Whittesmoke Toolbar
"C:\Program Files (x86)\WhiteSmoke_New\uninstall.exe" toolbar 2> nul
"C:\Program Files\WhiteSmoke_New\uninstall.exe" toolbar 2> nul
REM Easyfundraising Toolbar
"C:\Program Files (x86)\easyfundraising toolbar\tbunsy24A.tmp\uninstaller.exe" 2> nul
"C:\Program Files\easyfundraising toolbar\tbunsy24A.tmp\uninstaller.exe" 2> nul
REM Inbox Toolbar
"C:\Program Files\Inbox Toolbar\unins000.exe" /silent 2> nul
"C:\Program Files (x86)\Inbox Toolbar\unins000.exe" /silent 2> nul
REM ALOT Toolbar
"C:\Program Files\alot\alotUninst.exe" 2> nul
"C:\Program Files (x86)\alot\alotUninst.exe" 2> nul
REM browserTweeks Toolbar
"C:\Program Files\BrowserTweaks\IEScreenshot\unins000.exe" /silent 2> nul
"C:\Program Files (x86)\BrowserTweaks\IEScreenshot\unins000.exe" /silent 2> nul
REM Chatzum Toolbar
"C:\Program Files (x86)\ChatZum Toolbar\tbunsb9EE4.tmp\uninstaller.exe" 2> nul
"C:\Program Files\ChatZum Toolbar\tbunsb9EE4.tmp\uninstaller.exe" 2> nul
REM Data Toolbar 2.3.2
msiexec.exe /x{39238ce4-f7e3-4289-820d-4575907a2cad} /qn 2> nul
REM Facemoods Toolbar
"C:\Program Files (x86)\facemoods.com\facemoods\1.4.17.11\uninstall.exe" 2> nul
"C:\Program Files\facemoods.com\facemoods\1.4.17.11\uninstall.exe" 2> nul
REM Free_Game_ Bar_2
"C:\Program Files\Free_Game_Bar_2\uninstall.exe" 2> nul
"C:\Program Files (x86)\Free_Game_Bar_2\uninstall.exe" 2> nul
REM Games Bar A Toolbar
"C:\Program Files\Games_Bar_A\uninstall.exe" toolbar 2> nul
"C:\Program Files (x86)\Games_Bar_A\uninstall.exe" toolbar 2> nul
REM FromDoctoPDF Chrome Toolbar
"C:\Program Files\FromDocToPDF_65 Chrome Extension\bar\FromDocToPDFCrxSetup.F5979297-4067-4543-81F5-9A037A2C173B.exe /u mindsparktoolbarkey='FromDocToPDF_65 Chrome Extension'" 2> nul
"C:\Program Files (x86)\FromDocToPDF_65 Chrome Extension\bar\FromDocToPDFCrxSetup.F5979297-4067-4543-81F5-9A037A2C173B.exe /u mindsparktoolbarkey='FromDocToPDF_65 Chrome Extension'" 2> nul
REM Incredibar Toolbar for IE
"C:\Program Files\Incredibar.com\incredibar\1.5.11.14\uninstall.exe" 2> nul
"C:\Program Files\IncrediMail_MediaBar_2\uninstall.exe" toolbar 2> nul
"C:\Program Files (x86)\Incredibar.com\incredibar\1.5.11.14\uninstall.exe" 2> nul
"C:\Program Files (x86)\IncrediMail_MediaBar_2\uninstall.exe" toolbar 2> nul
REM IE Toolbar 4.6 by Sweetpacks
msiexec.exe /x{c3e85ee9-5892-4142-b537-bceb3dac4c3d} /qn 2> nul
REM IsoBuster Toolbar
"C:\Program Files\IsoBuster\uninstall.exe" toolbar 2> nul
"C:\Program Files (x86)\IsoBuster\uninstall.exe" toolbar 2> nul
REM NCH Toolbar
"C:\Program Files\NCH\uninstall.exe" 2> nul
"C:\Program Files (x86)\NCH\uninstall.exe" 2> nul
REM Nectar Search Toolbars
"C:\Program Files\Nectar Search Toolbar\Uninst.exe" 2> nul
"C:\Program Files (x86)\Nectar Search Toolbar\Uninst.exe" 2> nul
REM Winzip Bar
"C:\Program Files\WinZipBar\uninstall.exe" 2> nul
"C:\Program Files (x86)\WinZipBar\uninstall.exe" 2> nul
REM PageRank Toolbar
"C:\Program Files\PageRage\uninstall.exe" 2> nul
"C:\Program Files (X86)\PageRage\uninstall.exe" 2> nul
REM Radio TV 2.1 Toolbar
"C:\Program Files\Radio_TV_2.1\uninstall.exe" 2> nul
"C:\Program Files (x86)\Radio_TV_2.1\uninstall.exe" 2> nul
REM TV Bar 2 B Toolbar
"C:\Program Files (x86)\TV_Bar_2_B\uninstall.exe" 2> nul
"C:\Program Files\TV_Bar_2_B\uninstall.exe" 2> nul
REM Radio Bar 1 Toolbar
"C:\Program Files\Radio_Bar_1\uninstall.exe" 2> nul
"C:\Program Files (x86)\Radio_Bar_1\uninstall.exe" 2> nul
REM StartNow Toolbar
"C:\Program Files (x86)\StartNow Toolbar\StartNowToolbarUninstall.exe" 2> nul
"C:\Program Files\StartNow Toolbar\StartNowToolbarUninstall.exe" 2> nul
REM Search Results Toolbar
"C:\Program Files (x86)\searchresults1\uninstall.exe" 2> nul
"C:\Program Files\searchresults1\uninstall.exe" 2> nul
REM Search-Results Toolbar
C:\PROGRA~1\SEARCH~1\Datamngr\SRTOOL~1\uninstall.exe 2> nul
C:\PROGRA~2\SEARCH~1\Datamngr\SRTOOL~1\uninstall.exe 2> nul
REM SearchQU Toolbar
"C:\Program Files\Searchqu Toolbar\uninstall.exe" 2> nul
"C:\Program Files (x86)\Searchqu Toolbar\uninstall.exe" 2> nul
"C:\Program Files (x86)\Windows searchqu Toolbar\uninstall.exe" 2> nul
"C:\Program Files\Windows searchqu Toolbar\uninstall.exe" 2> nul
REM Stumbleupon Toolbar
"C:\Program Files (x86)\StumbleUpon\uninstall.exe" 2> nul
"C:\Program Files\StumbleUpon\uninstall.exe" 2> nul
REM SmilboxEN Toolbar
"C:\Program Files (x86)\SmileBox_EN\uninstall.exe" 2> nul
"C:\Program Files\SmileBox_EN\uninstall.exe" 2> nul
REM Utorrent Toolbar
"C:\Program Files\uTorrentBar\uninstall.exe" 2> nul
"C:\Program Files (x86)\uTorrentBar\uninstall.exe" 2> nul
REM WiseConvert B Toolbar
"C:\Program Files\WiseConvert_B\uninstall.exe" toolbar 2> nul
"C:\Program Files (x86)\WiseConvert_B\uninstall.exe" toolbar 2> nul
REM Wise Convert B2 Toolbat for IE
"C:\ProgramData\Conduit\IE\CT3297951\UninstallerUI.exe" -ctid=CT3297951 -toolbarName=WiseConvert B2 -toolbarEnv=conduit -type=IE 2> nul
REM WiseConvert Toolbar
"C:\Program Files\WiseConvert\uninstall.exe"  2> nul
"C:\Program Files (x86)\WiseConvert\uninstall.exe" 2> nul
REM xVidly4 Toolbar
"C:\Program Files (x86)\xvidly4\uninstall.exe" toolbar 2> nul
"C:\Program Files\xvidly4\uninstall.exe" toolbar 2> nul
REM YTD Toolbar V7.2
msiexec.exe /x{4bbd417f-13b6-4477-b7c2-ae705864058d} /qn 2> nul
REM YTD Toolbar V7.5
msiexec.exe /x{5af054b4-ee0f-4492-90b2-d82ea28e0711} /qn 2> nul
REM Zynga Toolbar
"C:\Program Files (x86)\Zynga\uninstall.exe" 2> nul
"C:\Program Files\Zynga\uninstall.exe" 2> nul
REM Web Accessibility Toolbar 2011
"C:\Program Files\WAT_EN\unins000.exe" /silent 2> nul
"C:\Program Files (x86)\WAT_EN\unins000.exe" /silent 2> nul
REM Web Accessibility Toolbar
"C:\Program Files\Accessibility_Toolbar\unins000.exe" /silent 2> nul
"C:\Program Files (x86)\Accessibility_Toolbar\unins000.exe" /silent 2> nul
REM Web Accessibility Toolbar 2013
"C:\Program Files (x86)\Accessibility_Toolbar\unins000.exe" /silent 2> nul
"C:\Program Files\Accessibility_Toolbar\unins000.exe" /silent 2> nul
REM Windows iLivid Toolbar
"C:\Program Files\Windows iLivid Toolbar\uninstall.exe" 2> nul
"C:\Program Files (x86)\Windows iLivid Toolbar\uninstall.exe" 2> nul
REM Movies Toolbar
"C:\PROGRA~2\MOVIES~1\Datamngr\SRTOOL~1\GC\uninstall.exe" /UN=CR /PID=AG6 2> nul
"C:\PROGRA~1\MOVIES~1\Datamngr\SRTOOL~1\FF\uninstall.exe" /UN=FF /PID=LVD2-DTX 2> nul
"C:\PROGRA~1\MOVIES~1\Datamngr\SRTOOL~1\IE\uninstall.exe" /UN=IE /PID=LVD2-DTX 2> nul
REM Babylon Toolbar (IE)
"C:\Program Files\BabylonToolbar\BabylonToolbar\1.5.3.17\uninstall.exe" 2> nul
"C:\Program Files (x86)\BabylonToolbar\BabylonToolbar\1.5.3.17\uninstall.exe" 2> nul
REM Babylon Toolbar
msiexec.exe /x{e55e7026-ef2a-4a17-aaa7-db98ea3fd1b1} /qn 2> nul
"C:\Program Files\BabylonToolbar\BabylonToolbar\1.8.4.9\GUninstaller.exe" -uprtc -key "BabylonToolbar" 2> nul
"C:\Program Files (x86)\BabylonToolbar\BabylonToolbar\1.8.4.9\GUninstaller.exe" -uprtc -key "BabylonToolbar" 2> nul
REM Delta Toolbar
"C:\Program Files\Delta\delta\1.8.21.5\GUninstaller.exe" -uprtc -ask -rmbus 'delta' -key "delta" 2> nul
"C:\Program Files\Delta\delta\1.8.24.6\GUninstaller.exe" -uprtc -ask -rmbus "Delta toolbar" -nontfy -bname=dlt -key "delta" 2> nul
"C:\Program Files (x86)\Delta\delta\1.8.21.5\GUninstaller.exe" -uprtc -ask -rmbus 'delta' -key "delta" 2> nul
"C:\Program Files (x86)\Delta\delta\1.8.24.6\GUninstaller.exe" -uprtc -ask -rmbus "Delta toolbar" -nontfy -bname=dlt -key "delta" 2> nul
REM POKKI (Desktop Apps and Game Installer)
"C:\Windows\system32\config\systemprofile\AppData\Local\Pokki\Uninstall.exe" 2> nul
REM FLV Runner Toolbar
"C:\Program Files\FLV_Runner\uninstall.exe" toolbar 2> nul
"C:\Program Files (x86)\FLV_Runner\uninstall.exe" toolbar 2> nul
REM Productivity 3.1 B2 Toolbar
"C:\ProgramData\Conduit\IE\CT3297930\UninstallerUI.exe" -ctid=CT3297930 -toolbarName=Productivity 3.1 B2 -toolbarEnv=conduit -type=IE -origin=AddRemove -userMode=2 2> nul
REM Nation Toolbar
"C:\Program Files\Nation Toolbar\tbunss2A93.tmp\uninstaller.exe" 2> nul
"C:\Program Files (x86)\Nation Toolbar\tbunss2A93.tmp\uninstaller.exe" 2> nul
REM MyToolbar
"C:\Program Files\My Toolbar\ATBPToolbar.1.0.Uninstall.exe" 2> nul
"C:\Program Files (x86)\My Toolbar\ATBPToolbar.1.0.Uninstall.exe" 2> nul
REM Connect DLC Toolbar for IE
"C:\ProgramData\Conduit\IE\CT3306061\UninstallerUI.exe" -ctid=CT3306061 -toolbarName=Connect DLC 5 -toolbarEnv=conduit -type=IE -origin=AddRemove -userMode=2 2> nul
REM BrowserPlus2 Toolbar
"C:\ProgramData\Conduit\IE\CT3309350\UninstallerUI.exe" -ctid=CT3309350 -toolbarName=BrowserPlus2 -toolbarEnv=conduit -type=IE 2> nul
REM removing Coupon
"C:\Program Files\Coupons\uninstall.exe" "/U:C:\Program Files\Coupons\Uninstall\uninstall.xml" 2> nul
"C:\Program Files (x86)\Coupons\uninstall.exe" "/U:C:\Program Files (x86)\Coupons\Uninstall\uninstall.xml" /S 2> nul
"C:\Program Files (x86)\Coupon Printer\uninstall.exe" "/U:C:\Program Files (x86)\Coupon Printer\Uninstall\uninstall.xml" 2> nul
"C:\Program Files\Coupon Printer\uninstall.exe" "/U:C:\Program Files\Coupon Printer\Uninstall\uninstall.xml" 2> nul
IF EXIST "C:\WINDOWS\CouponsBar.dll" regsvr32 /u /s "C:\WINDOWS\CouponsBar.dll" (
2> nul
)
IF EXIST "C:\WINDOWS\CouponsBar.dll" DEL "C:\WINDOWS\CouponsBar.dll" (
2> nul
)
IF EXIST "C:\Windows\cpbrkpie.ocx" DEL "C:\Windows\cpbrkpie.ocx" (
2> nul
)
echo.
ping 127.0.0.1 >nul
GOTO HOME
:KILL
IF 2==1 (
ECHO ---Cleaning up stragglers
)
IF 2==1 (
ECHO.
)
IF 2==2 (
cls
)
IF 2==2 (
ECHO ---Killing known bloatware processes. Please wait...
)
IF 2==1 (
ECHO.
)
echo.
REM =============BLOATWARE==============
REM -----------Found 9/18/2015-----------
REM Acer launch service (ALaunch)
taskkill /im ALaunch.exe /t /f 2> nul
taskkill /im ALaunchSvc.exe /t /f 2> nul
taskkill /im RemoveALaunch.exe /t /f 2> nul
REM Acer Empowering Technology - eSettings - Service
taskkill /im capuserv.exe /t /f 2> nul
REM Acer Empowering Technology - eDataSecurity
taskkill /im decryption.exe /t /f 2> nul
taskkill /im eDS_CCPSD.exe /t /f 2> nul
taskkill /im eDScsp.exe /t /f 2> nul
taskkill /im eDSfsu.exe /t /f 2> nul
taskkill /im eDSloader.exe /t /f 2> nul
taskkill /im eDSnstHelper.exe /t /f 2> nul
taskkill /im eDSft.exe /t /f 2> nul
taskkill /im eDSService.exe /t /f 2> nul
taskkill /im eDStbmngr.exe /t /f 2> nul
taskkill /im encryption.exe /t /f 2> nul
REM Acer Empowering Technology - eLock - Service
taskkill /im eLockServ.exe /t /f 2> nul
taskkill /im eLock.Serv.Service.exe /t /f 2> nul
taskkill /im NotificationTip.exe /t /f 2> nul
REM Acer Empowering Technology - eNet
taskkill /im CompileMOF.exe /t /f 2> nul
taskkill /im "eNet Service.exe" /t /f 2> nul
taskkill /im eNMTray.exe /t /f 2> nul
taskkill /im WriteAcerAdapterKey.exe /t /f 2> nul
REM Acer Empowering Technology - eRecovery
taskkill /im BurnMachine.exe /t /f 2> nul
taskkill /im CheckD2DSystem.exe /t /f 2> nul
taskkill /im eRAgent.exe /t /f 2> nul
taskkill /im eRecovery.exe /t /f 2> nul
taskkill /im eRecoveryForm.exe /t /f 2> nul
taskkill /im eRecoveryService.exe /t /f 2> nul
taskkill /im FullAccess.exe /t /f 2> nul
taskkill /im imagex.exe /t /f 2> nul
taskkill /im MBRwrWin.exe /t /f 2> nul
taskkill /im OSCDIMG.EXE /t /f 2> nul
taskkill /im PopupMsgBackup.exe /t /f 2> nul
taskkill /im PopupMsgUpdat.exe /t /f 2> nul
taskkill /im SetFDFolder.exe /t /f 2> nul
taskkill /im ShowVerifyProgress.exe /t /f 2> nul
taskkill /im SWCDExtract.exe /t /f 2> nul
REM Rand McNally - RNDDock
taskkill /im RNDDock.exe /t /f 2> nul
taskkill /im RNDDockLauncher.exe /t /f 2> nul
taskkill /im RNDSetLanguage.exe /t /f 2> nul
taskkill /im RM_Caliration.exe /t /f 2> nul
taskkill /im RMLayer.exe /t /f 2> nul
taskkill /im NAVI.EXE /t /f 2> nul
taskkill /im NAVIAPP.EXE /t /f 2> nul
taskkill /im OSVer.exe /t /f 2> nul
taskkill /im RESTART.EXE /t /f 2> nul
taskkill /im VideoPlayer.exe /t /f 2> nul
taskkill /im Hermes.exe /t /f 2> nul
taskkill /im Hermes3.exe /t /f 2> nul
taskkill /im Hermes2.exe /t /f 2> nul
taskkill /im pango-querymodules.exe /t /f 2> nul
taskkill /im gspawn-win32-helper.exe /t /f 2> nul
taskkill /im gspawn-win32-helper-console.exe /t /f 2> nul
taskkill /im gtk-query-immodules-2.0.exe /t /f 2> nul
taskkill /im gdk-pixbuf-query-loaders.exe /t /f 2> nul
REM -----------Found 8/13/2015-----------
REM HP
taskkill /im HP_Remote_Solution.exe /t /f 2> nul
taskkill /im HPAdvisor.exe /t /f 2> nul
taskkill /im HPBtnSrv.exe /t /f 2> nul
taskkill /im hppusg.exe /t /f 2> nul
taskkill /im HPSA_Service.exe /t /f 2> nul
taskkill /im HPSIsvc.exe /t /f 2> nul
REM HP Smart Media
taskkill /im StartMenu.exe /t /f 2> nul
REM Microsoft Office Wrapper
taskkill /im OSA.exe /t /f 2> nul
REM Gadwin PrintScreen
taskkill /im PrintScreen.exe /t /f 2> nul
REM HP LaserJet Fax Receive Utility
taskkill /im ReceiveFaxUtility.exe /t /f 2> nul
REM UPS Monitor
taskkill /im UPSMON.exe /t /f 2> nul
taskkill /im UPSMON_Service.exe /t /f 2> nul
REM TheWeatherNetwork
taskkill /im weathereye.exe /t /f 2> nul
REM Dropbox
taskkill /im Dropbox.exe /t /f 2> nul
REM -----------Found 8/6/2015-----------
REM Toshiba FlashCards
taskkill /im DisplayConf.exe /t /f 2> nul
taskkill /im TCrdMain.exe /t /f 2> nul
taskkill /im TfcConf.exe /t /f 2> nul
taskkill /im TosTogKeyMon.exe /t /f 2> nul
REM Toshiba Service Station
taskkill /im TMachInfo.exe /t /f 2> nul
taskkill /im ToshibaServiceStation.exe /t /f 2> nul
taskkill /im TssCleanup.exe /t /f 2> nul
REM Toshiba Power Saver
taskkill /im TosCoSrv.exe /t /f 2> nul
taskkill /im TPSLaunch.exe /t /f 2> nul
taskkill /im TPwrMain.exe /t /f 2> nul
REM Toshiba BulletinBoard
taskkill /im TosBBSplashScreen.exe /t /f 2> nul
taskkill /im TosBulletinBoard.exe /t /f 2> nul
taskkill /im TosNcCore.exe /t /f 2> nul
taskkill /im UrlClipProc.exe /t /f 2> nul
REM Toshiba ReelTime
taskkill /im TosEditFlags.exe /t /f 2> nul
taskkill /im TosReelTime.exe /t /f 2> nul
taskkill /im TosReelTimeMonitor.exe /t /f 2> nul
taskkill /im TosRegisterEdit.exe /t /f 2> nul
taskkill /im TosRTSplashScreen.exe /t /f 2> nul
REM Toshiba HDD SSD Alert
taskkill /im OpenMUIHelp.exe /t /f 2> nul
taskkill /im TosCPCBackup.exe /t /f 2> nul
taskkill /im TosSENotify.exe /t /f 2> nul
taskkill /im TosSmartSrv.exe /t /f 2> nul
taskkill /im TosSSDAlert.exe /t /f 2> nul
taskkill /im TosWaitSrv.exe /t /f 2> nul
REM Toshiba ConfigFree
taskkill /im AddGadget.exe /t /f 2> nul
taskkill /im cfAddGadgets.exe /t /f 2> nul
taskkill /im CFIWmxSvcs64.exe /t /f 2> nul
taskkill /im cfmain.exe /t /f 2> nul
taskkill /im CFProcSRVC.exe /t /f 2> nul
taskkill /im CFProfile.exe /t /f 2> nul
taskkill /im CFSvcs.exe /t /f 2> nul
taskkill /im CFSwHost.exe /t /f 2> nul
taskkill /im CFSwHostU.exe /t /f 2> nul
taskkill /im CFSwMgr.exe /t /f 2> nul
taskkill /im sftsksch.exe /t /f 2> nul
taskkill /im CFWAN.exe /t /f 2> nul
taskkill /im NDSTray.exe /t /f 2> nul
taskkill /im RunRegSvr32.exe /t /f 2> nul
taskkill /im RunSidebar.exe /t /f 2> nul
taskkill /im tosOpenProp.exe /t /f 2> nul
REM -----------Found 7/21/2015-----------
REM ~Qualcomm Atheros Bluetooth~
taskkill /im ActivateDesktop.exe /t /f 2> nul
REM ~Acer Bloatware~
taskkill /im AcerPortal.exe /t /f 2> nul
REM ~Acer User Experience Improvement Program~
taskkill /im MSG.exe /t /f 2> nul
taskkill /im Setting.exe /t /f 2> nul
taskkill /im TriggerFramework.exe /t /f 2> nul
taskkill /im UBTService.exe /t /f 2> nul
REM ~Nero~
taskkill /im NASvc.exe /t /f 2> nul
taskkill /im NANotify.exe /t /f 2> nul
REM -----------Found 7/9/2015-----------
REM Cannon Printer Software~
taskkill /im CNQMACNF.exe /t /f 2> nul
taskkill /im CNQMINST.exe /t /f 2> nul
taskkill /im CNQMLNCR.exe /t /f 2> nul
taskkill /im CNQMSWCS.exe /t /f 2> nul
taskkill /im CNQMULNC.exe /t /f 2> nul
taskkill /im CNQMUPDT.exe /t /f 2> nul
taskkill /im CNSEMAIN.exe /t /f 2> nul
REM -----------Found 7/2/2015-----------
REM HTC CellPhone~
taskkill /im adb.exe /t /f 2> nul
taskkill /im adb_cos.exe /t /f 2> nul
taskkill /im NOutlookAccessX64.exe /t /f 2> nul
taskkill /im NOutlookAccess.exe /t /f 2> nul
taskkill /im fastboot.exe /t /f 2> nul
taskkill /im HTCSyncManager.exe /t /f 2> nul
taskkill /im HTCSyncManagerUpdate.exe /t /f 2> nul
taskkill /im HSMConsole.exe /t /f 2> nul
taskkill /im 7za.exe /t /f 2> nul
taskkill /im CrashSender.exe /t /f 2> nul
taskkill /im 7zr.exe /t /f 2> nul
taskkill /im NMDllHost.exe /t /f 2> nul
taskkill /im HSMServiceEntry.exe /t /f 2> nul
taskkill /im PassThruSvr.exe /t /f 2> nul
taskkill /im htcnat.exe /t /f 2> nul
REM Andrea Filters APO access service~
taskkill /im AESTSr.exe /t /f 2> nul
taskkill /im AESTSr64.exe /t /f 2> nul
REM ccleaner~
taskkill /im CCleaner.exe /t /f 2> nul
taskkill /im CCleaner64.exe /t /f 2> nul
REM Windows Metadata Export service~
taskkill /im DVMExportService.exe /t /f 2> nul
REM Geek Buddy Remote Screen service~
REM Part of team COMODO, legit but annoying~
taskkill /im GeekBuddyRSP.exe /t /f 2> nul
REM Windows 10 Upgrade~
taskkill /im GWX.exe /t /f 2> nul
taskkill /im GWXConfigManager.exe /t /f 2> nul
taskkill /im GWXUX.exe /t /f 2> nul
taskkill /im GWXUXWorker.exe /t /f 2> nul
REM HP~
taskkill /im CaslVer.exe /t /f 2> nul
taskkill /im hpCaslNotification.exe /t /f 2> nul
taskkill /im HPdvrMntSvc.exe /t /f 2> nul
taskkill /im hpgac.exe /t /f 2> nul
taskkill /im HpqToaster.exe /t /f 2> nul
taskkill /im hpqWmiEx.exe /t /f 2> nul
taskkill /im MCOEMInfo.exe /t /f 2> nul
taskkill /im MCOEMInfo64.exe /t /f 2> nul
taskkill /im Wireless.exe /t /f 2> nul
taskkill /im WizLink.exe /t /f 2> nul
REM HP Wireless Assistant~
taskkill /im DelayedAppStarter.exe /t /f 2> nul
taskkill /im HPWA_Main.exe /t /f 2> nul
taskkill /im HPWA_MobilityCenterTile.exe /t /f 2> nul
taskkill /im HPWA_MobilityCenterTileLink.exe /t /f 2> nul
taskkill /im HPWA_Service.exe /t /f 2> nul
taskkill /im UninstallHelper.exe /t /f 2> nul
taskkill /im WAMobCtr.exe /t /f 2> nul
taskkill /im wireless.exe /t /f 2> nul
REM HP Quick Launch~
taskkill /im Beats.exe /t /f 2> nul
taskkill /im cnbSysInfo.exe /t /f 2> nul
taskkill /im HPMSGSVC.exe /t /f 2> nul
taskkill /im HPSCRCTL.exe /t /f 2> nul
taskkill /im hpSmartAdapterHelp.exe /t /f 2> nul
taskkill /im HPUSRMSG.exe /t /f 2> nul
taskkill /im HPWMISVC.exe /t /f 2> nul
REM LightScribe~
taskkill /im LightScribeControlPanel.exe /t /f 2> nul
taskkill /im LSLauncher.exe /t /f 2> nul
taskkill /im LSPrintDialog.exe /t /f 2> nul
taskkill /im LSPrintingDialog.exe /t /f 2> nul
taskkill /im LSRunOnce.exe /t /f 2> nul
taskkill /im LSSrvc.exe /t /f 2> nul
REM Windows Live Updater Service~
taskkill /im WLIDSVC.exe /t /f 2> nul
taskkill /im WLIDSVCM.exe /t /f 2> nul
REM ------------Found in earlier versions-------------
REM Any remaining VBScripts running in the background.
taskkill /im wscript.exe /t /f 2> nul
REM AVG Web Tuneup
taskkill /im BundleInstall.exe /t /f 2> nul
taskkill /im lip.exe /t /f 2> nul
taskkill /im Uninstall.exe /t /f 2> nul
taskkill /im vprot.exe /t /f 2> nul
taskkill /im WtuSystemSupport.exe /t /f 2> nul
REM Apple Mobile Device Support
taskkill /im AppleMobileBackup.exe /t /f 2> nul
taskkill /im AppleMobileDeviceHelper.exe /t /f 2> nul
taskkill /im AppleMobileDeviceService.exe /t /f 2> nul
taskkill /im AppleMobileSync.exe /t /f 2> nul
taskkill /im AppleSyncMapiInterfaceHelper_x64.exe /t /f 2> nul
taskkill /im ATH.exe /t /f 2> nul
taskkill /im com.apple.IE.client.exe /t /f 2> nul
taskkill /im com.apple.WindowsContacts.client.exe /t /f 2> nul
taskkill /im com.apple.WindowsMail.client.exe /t /f 2> nul
taskkill /im MDCrashReportTool.exe /t /f 2> nul
taskkill /im Mingler.exe /t /f 2> nul
taskkill /im SyncDiagnostics.exe /t /f 2> nul
taskkill /im syncli.exe /t /f 2> nul
taskkill /im SyncPlanObserver.exe /t /f 2> nul
taskkill /im SyncServer.exe /t /f 2> nul
taskkill /im SyncUIHandler.exe /t /f 2> nul
taskkill /im upgradedb.exe /t /f 2> nul
REM Microsoft Bing Bar
taskkill /im BBSvc.EXE /t /f 2> nul
taskkill /im BingApp.exe /t /f 2> nul
taskkill /im BingBar.exe /t /f 2> nul
taskkill /im bingsurrogate.exe /t /f 2> nul
taskkill /im DefaultPack.exe /t /f 2> nul
taskkill /im SeaPort.exe /t /f 2> nul
REM Kodak EasyShare Software
taskkill /im EasyShare.exe /t /f 2> nul
taskkill /im ptswia.exe /t /f 2> nul
REM HP Software
taskkill /im DeviceSetup.exe /t /f 2> nul
taskkill /im DeviceSetupLauncher.exe /t /f 2> nul
taskkill /im HPCustPartic.exe /t /f 2> nul
taskkill /im HPCustParticUI.exe /t /f 2> nul
taskkill /im HPDeviceUpdateHost.exe /t /f 2> nul
taskkill /im HPGoogleChromeLauncher.exe /t /f 2> nul
taskkill /im HPNetworkCommunicatorCom.exe /t /f 2> nul
taskkill /im HPPSDrDownloader.exe /t /f 2> nul
taskkill /im hpqDTSS.exe /t /f 2> nul
taskkill /im HPRewards.exe /t /f 2> nul
taskkill /im HPSmartDeals.exe /t /f 2> nul
taskkill /im InstanceFinderDlg.exe /t /f 2> nul
taskkill /im ScanToPCActivationApp.exe /t /f 2> nul
taskkill /im Toolbox.exe /t /f 2> nul
taskkill /im "HP Envy 4500 series.exe" /t /f 2> nul
REM HP Software Update
taskkill /im hpwucli.exe /t /f 2> nul
taskkill /im hpwuschd2.exe /t /f 2> nul
REM OtShot
taskkill /im otshot.exe /t /f 2> nul
REM Microsoft Speech Recognition Software
taskkill /im sapisvr.exe /t /f 2> nul
REM Skype
taskkill /im skype.exe /t /f 2> nul
REM ePower Software
taskkill /im ePowerEvent.exe /t /f 2> nul
taskkill /im ePowerSvc.exe /t /f 2> nul
taskkill /im ePowerTray.exe /t /f 2> nul
REM Apple Application Support
taskkill /im APSDaemon.exe /t /f 2> nul
taskkill /im defaults.exe /t /f 2> nul
taskkill /im distnoted.exe /t /f 2> nul
taskkill /im plutil.exe /t /f 2> nul
taskkill /im WebKit2WebProcess.exe /t /f 2> nul
REM Apple Internet Services
taskkill /im AppleOutlookDAVConfig.exe /t /f 2> nul
taskkill /im ApplePhotoStreams.exe /t /f 2> nul
taskkill /im ApplePhotoStreamsDownloader.exe /t /f 2> nul
taskkill /im BookmarkDAV_client.exe /t /f 2> nul
taskkill /im iCloud.exe /t /f 2> nul
taskkill /im iCloudServices.exe /t /f 2> nul
taskkill /im MobileDocuments.exe /t /f 2> nul
taskkill /im ubd.exe /t /f 2> nul
REM Acer Updater
taskkill /im ALU.exe /t /f 2> nul
taskkill /im ALU_Notify.exe /t /f 2> nul
taskkill /im UpdaterService.exe /t /f 2> nul
REM Acer Backup Manager
taskkill /im BackupManager.exe /t /f 2> nul
taskkill /im BackupManagerTray.exe /t /f 2> nul
taskkill /im IScheduleSvc.exe /t /f 2> nul
taskkill /im StartServices.exe /t /f 2> nul
REM Rogers Connection Manager (Cell stick)
REM This will kill an active internet connection if being used.
taskkill /im AutoDect.exe /t /f 2> nul
taskkill /im CMUpdater.exe /t /f 2> nul
taskkill /im ejectdisk.exe /t /f 2> nul
taskkill /im KillProcess2.exe /t /f 2> nul
taskkill /im TUpdateConfig.exe /t /f 2> nul
taskkill /im UIMain.exe /t /f 2> nul
taskkill /im UpdateVersion.exe /t /f 2> nul
taskkill /im USBDriverInstaller_x64.exe /t /f 2> nul
taskkill /im USBDriverInstaller_x86.exe /t /f 2> nul
REM AGR/LSI Soft Modem
taskkill /im agr64svc.exe /t /f 2> nul
REM Acer Arcade Deluxe
taskkill /im AcradeDeluxeAgent.exe /t /f 2> nul
taskkill /im CLDrvChk.exe /t /f 2> nul
taskkill /im CLSM.exe /t /f 2> nul
taskkill /im discautorun.exe /t /f 2> nul
taskkill /im PlayMovie.exe /t /f 2> nul
taskkill /im PMVService.exe /t /f 2> nul
taskkill /im HomeMedia.exe /t /f 2> nul
taskkill /im Launch_Movie.exe /t /f 2> nul
taskkill /im Launch_SDMA.exe /t /f 2> nul
taskkill /im RmDL.exe /t /f 2> nul
taskkill /im TaskScheduler.exe /t /f 2> nul
taskkill /im Update.exe /t /f 2> nul
REM GoogleUpdate
Taskkill /im GoogleUpdate.exe /t /f 2> nul
REM Microsoft Office One Note
taskkill /im ONENOTEM.exe /t /f 2> nul
REM Razer Synapse
taskkill /im RzSynapse.exe /t /f 2> nul
REM Spotify
taskkill /im SpotifyWebHelper.exe /t /f 2> nul
REM Steam
taskkill /im Steam.exe /t /f 2> nul
taskkill /im steamwebhelper.exe /t /f 2> nul
REM Acer Bloatware
taskkill /im abDocsDllLoader.exe /t /f 2> nul
taskkill /im abDocsDllLoaderMonitor.exe /t /f 2> nul
taskkill /im BackgroundAgent.exe /t /f 2> nul
REM Acer Portal Bloatware
taskkill /im AcerCloudTaskScheduler.exe /t /f 2> nul
taskkill /im AcerPortalSetup.exe /t /f 2> nul
taskkill /im acerVirtualDriveSetup.exe /t /f 2> nul
taskkill /im acpanel_win.exe /t /f 2> nul
taskkill /im actool_win.exe /t /f 2> nul
taskkill /im ccd.exe /t /f 2> nul
taskkill /im CCDMonitorService.exe /t /f 2> nul
taskkill /im ClearfiPreferencePage.exe /t /f 2> nul
taskkill /im cloudMediaAgent.exe /t /f 2> nul
taskkill /im EnableWakeUpOption.exe /t /f 2> nul
taskkill /im LauncherAsUser.exe /t /f 2> nul
taskkill /im medialistdumper.exe /t /f 2> nul
REM ePower Bloatware
taskkill /im ePowerEvent.exe /t /f 2> nul
taskkill /im ePowerSvc.exe /t /f 2> nul
taskkill /im ePowerTray.exe /t /f 2> nul
taskkill /im ePowerWinMonitor.exe /t /f 2> nul
REM Acer Quick Access Bloatware
taskkill /im QAEvent.exe /t /f 2> nul
taskkill /im QAMsg.exe /t /f 2> nul
taskkill /im QASvc.exe /t /f 2> nul
taskkill /im QuickAccess.exe /t /f 2> nul
taskkill /im RMSvc.exe /t /f 2> nul
REM Cyberlink Bloatware
taskkill /im EffectExtractr.exe /t /f 2> nul
taskkill /im RichVideo.exe /t /f 2> nul
taskkill /im richvideoinstall.exe /t /f 2> nul
taskkill /im richvideouninstall.exe /t /f 2> nul
REM Pokki start Menu Bloatware
REM Uninstaller: C:\Users\mlissa\AppData\Local\Pokki\Uninstall.exe
taskkill /im HostAppService.exe /t /f 2> nul
taskkill /im StartMenuIndexer.exe /t /f 2> nul
taskkill /im wow_helper.exe /t /f 2> nul
REM Android Software
taskkill /im PCCompanion.exe /t /f 2> nul
taskkill /im MyPhoneExplorer.exe /t /f 2> nul
REM Blackberry Software
taskkill /im BbDevMgr.exe /t /f 2> nul
taskkill /im BlackBerryLauncher.exe /t /f 2> nul
taskkill /im Rim.Desktop.AutoUpdate.exe /t /f 2> nul
taskkill /im Rim.Desktop.exe /t /f 2> nul
taskkill /im Rim.DesktopHelper.exe /t /f 2> nul
taskkill /im RIMBBLaunchAgent.exe /t /f 2> nul
taskkill /im RIMDEV~1.exe /t /f 2> nul
REM iPod services
taskkill /im iTunes.exe /t /f 2> nul
taskkill /im iTunesHelper.exe /t /f 2> nul
taskkill /im iPodService.exe /t /f 2> nul
taskkill /im AppleMobileDeviceService.exe /t /f 2> nul
REM Adobe Acrobat Update Service
taskkill /im armsvc.exe /t /f 2> nul
REM ==============MALWARE=============
IF 2==2 (
ECHO ---Killing known malware processes. Please wait...
)
IF 2==2 (
ECHO.
)
REM -----------Found 9/15/2015-----------
taskkill /im lwsvc.exe /t /f 2> nul
REM vGrabber software
taskkill /im VideoDownloader.exe /t /f 2> nul
REM Web Companion
taskkill /im Lavasoft.SearchProtect.WinService.exe /t /f 2> nul
taskkill /im WebCompanion.exe /t /f 2> nul
taskkill /im AASearchCompanion.exe /t /f 2> nul
taskkill /im "Ad-Aware Web Companion.exe" /t /f 2> nul
taskkill /im WebCompanionInstaller.exe /t /f 2> nul
REM Web Companion TCP Service
taskkill /im LavasoftTcpService.exe /t /f 2> nul
taskkill /im LavasoftLSPInstaller.exe /t /f 2> nul
taskkill /im LavasoftLSPInstaller64.exe /t /f 2> nul
REM Could be anything at this point... We warned you to close all programs and save your work...
taskkill /im Setup.exe /t /f 2> nul
REM TweakBit PCSpeedUp
REM C:\Program Files\TweakBit\PCSpeedUp
taskkill /im Downloader.exe /t /f 2> nul
taskkill /im GASender.exe /t /f 2> nul
taskkill /im SendDebugLog.exe /t /f 2> nul
taskkill /im unins000.exe /t /f 2> nul
taskkill /im PCSpeedUp.exe /t /f 2> nul
REM Revo App
REM C:\Program Files\VS Revo Group
REM C:\Program Files\VS Revo Group\Revo Uninstaller Pro
taskkill /im RevoAppBar.exe /t /f 2> nul
taskkill /im RevoCmd.exe /t /f 2> nul
taskkill /im RevoUninPro.exe /t /f 2> nul
taskkill /im ruplp.exe /t /f 2> nul
taskkill /im unins000.exe /t /f 2> nul
REM -----------Found 8/6/2015-----------
REM TelevisionFanatic
taskkill /im 64barsvc.exe /t /f 2> nul
taskkill /im 64brmon.exe /t /f 2> nul
taskkill /im 64brmon64.exe /t /f 2> nul
taskkill /im 64highin.exe /t /f 2> nul
taskkill /im 64medint.exe /t /f 2> nul
taskkill /im 64skplay.exe /t /f 2> nul
taskkill /im 64SrchMn.exe /t /f 2> nul
taskkill /im APPINTEGRATOR.exe /t /f 2> nul
taskkill /im AppIntegrator64.exe /t /f 2> nul
taskkill /im CrExtP64.exe /t /f 2> nul
taskkill /im TPIMANAGERCONSOLE.exe /t /f 2> nul
taskkill /im ASSIST.exe /t /f 2> nul
REM Petty Court
taskkill /im "Petty Court.exe" /t /f 2> nul
REM Ioartlieme
taskkill /im sreoraoi.exe /t /f 2> nul
REM WebSteroids
taskkill /im Websteroids.exe /t /f 2> nul
taskkill /im Websteroids64.exe /t /f 2> nul
taskkill /im WebsteroidsService.exe /t /f 2> nul
taskkill /im WebsteroidsUpdate.exe /t /f 2> nul
REM -----------Found 8/5/2015-----------
REM WordShark
taskkill /im wssvc.exe /t /f 2> nul
REM Space Sound Pro
taskkill /im SpaceSoundPro.exe /t /f 2> nul
taskkill /im silentconfigurator.exe /t /f 2> nul
taskkill /im silentunconfigurator.exe /t /f 2> nul
taskkill /im Uninstall.exe /t /f 2> nul
REM SpaceSondPro - Trojan.MSIL.Dropper
taskkill /im SpaceSondPro_Service.exe /t /f 2> nul
taskkill /im Spacesoundpro.exe /t /f 2> nul
taskkill /im uninstall.exe /t /f 2> nul
REM Rapid Media Converter
taskkill /im ffmpeg.exe /t /f 2> nul
taskkill /im RapidMediaConverter.exe /t /f 2> nul
taskkill /im RapidMediaConverterApp.exe /t /f 2> nul
taskkill /im RapidMediaConverterappuninstall.exe /t /f 2> nul
taskkill /im unins000.exe /t /f 2> nul
REM System Notifier V30.05
taskkill /im 8a620da3-3138-4f95-a61c-3e490464bccb-10.exe /t /f 2> nul
taskkill /im 8a620da3-3138-4f95-a61c-3e490464bccb-5.exe /t /f 2> nul
taskkill /im utils.exe /t /f 2> nul
taskkill /im UninstallBrw.exe /t /f 2> nul
taskkill /im Uninstall.exe /t /f 2> nul
REM -----------Found 7/30/2015-----------
REM Found this shit on my own pc. Took a while to kill it. Found a method that works.
REM This desktop.exe thing opens about 2-3 processes on your computer, and will keep 2-3 open at all times incase
REM one of the instances shuts off. Best thing to do is run through this to kill all of them before they have a chance
REM to open another instance and keep it alive. There's also a service running in the background that interacts with
REM these instances, not quite sure what it's doing but it can't be good. It's called FLI20.
taskkill /im desktop.exe /t /f 2> nul
taskkill /im desktop.exe /t /f 2> nul
taskkill /im desktop.exe /t /f 2> nul
taskkill /im desktop.exe /t /f 2> nul
taskkill /im desktop.exe /t /f 2> nul
taskkill /im desktop.exe /t /f 2> nul
taskkill /im desktop.exe /t /f 2> nul
taskkill /im desktop.exe /t /f 2> nul
taskkill /im ITHelper.exe /t /f 2> nul
taskkill /im ITHelper.exe /t /f 2> nul
taskkill /im ITHelper.exe /t /f 2> nul
net stop FLI20 2> nul
taskkill /im desktop.exe /t /f 2> nul
taskkill /im desktop.exe /t /f 2> nul
taskkill /im desktop.exe /t /f 2> nul
taskkill /im desktop.exe /t /f 2> nul
taskkill /im desktop.exe /t /f 2> nul
taskkill /im desktop.exe /t /f 2> nul
taskkill /im 23erxzvc.exe /t /f 2> nul
taskkill /im b5h0fd11.exe /t /f 2> nul
taskkill /im rigsnmrr.exe /t /f 2> nul
taskkill /im w0t2xdoh.exe /t /f 2> nul
REM -----------Found 7/24/2015-----------
REM Privoxy
taskkill /im amjob.exe /t /f 2> nul
taskkill /im checkproxy.exe /t /f 2> nul
taskkill /im gmff.exe /t /f 2> nul
REM GlobalUpdate
taskkill /im globalupdate.exe /t /f 2> nul
taskkill /im globalupdateBroker.exe /t /f 2> nul
taskkill /im globalupdateCrashHandler.exe /t /f 2> nul
taskkill /im globalupdateOnDemand.exe /t /f 2> nul
REM firmware
taskkill /im "firmware installer.exe" /t /f 2> nul
REM Misc files
taskkill /im desktop.exe /t /f 2> nul
taskkill /im aLgPg2wPM.exe /t /f 2> nul
taskkill /im KoOOigEwAlw3ZEOy2NOtE1uFnU.exe /t /f 2> nul
taskkill /im pmUeRxMXrc2wXt.exe /t /f 2> nul
taskkill /im check.exe /t /f 2> nul
taskkill /im utils.exe /t /f 2> nul
taskkill /im soc3hen.exe /t /f 2> nul
taskkill /im soc6hen.exe /t /f 2> nul
taskkill /im socahen.exe /t /f 2> nul
taskkill /im socdhen.exe /t /f 2> nul
taskkill /im socwhen.exe /t /f 2> nul
REM CinemaPlus-3.2cV23.07
taskkill /im feab5f2b-8f2c-4846-9e79-044fd5cffcab-1-6.exe /t /f 2> nul
taskkill /im feab5f2b-8f2c-4846-9e79-044fd5cffcab-1-7.exe /t /f 2> nul
taskkill /im feab5f2b-8f2c-4846-9e79-044fd5cffcab-3.exe /t /f 2> nul
taskkill /im feab5f2b-8f2c-4846-9e79-044fd5cffcab-4.exe /t /f 2> nul
taskkill /im feab5f2b-8f2c-4846-9e79-044fd5cffcab-5.exe /t /f 2> nul
taskkill /im feab5f2b-8f2c-4846-9e79-044fd5cffcab-6.exe /t /f 2> nul
taskkill /im feab5f2b-8f2c-4846-9e79-044fd5cffcab-7.exe /t /f 2> nul
taskkill /im feab5f2b-8f2c-4846-9e79-044fd5cffcab-10.exe /t /f 2> nul
taskkill /im Uninstall.exe /t /f 2> nul
taskkill /im UninstallBrw.exe /t /f 2> nul
REM EpsanDrive
taskkill /im EpsanDrive.exe /t /f 2> nul
taskkill /im SoftConfigTest.exe /t /f 2> nul
REM -----------Found 7/15/2015-----------
REM CloudScout
taskkill /im CloudOGLESBY.exe /t /f 2> nul
REM SearchProtect
REM Doesn't completely kill the processes if run once. Must run multiple times.
taskkill /im cltmng.exe /t /f 2> nul
taskkill /im CltMngSvc.exe /t /f 2> nul
taskkill /im cltmngui.exe /t /f 2> nul
taskkill /im SPtool64.exe /t /f 2> nul
taskkill /im cltmng.exe /t /f 2> nul
taskkill /im CltMngSvc.exe /t /f 2> nul
taskkill /im cltmngui.exe /t /f 2> nul
taskkill /im SPtool64.exe /t /f 2> nul
taskkill /im cltmng.exe /t /f 2> nul
taskkill /im CltMngSvc.exe /t /f 2> nul
taskkill /im cltmngui.exe /t /f 2> nul
taskkill /im SPtool64.exe /t /f 2> nul
taskkill /im cltmng.exe /t /f 2> nul
taskkill /im CltMngSvc.exe /t /f 2> nul
taskkill /im cltmngui.exe /t /f 2> nul
taskkill /im SPtool64.exe /t /f 2> nul
REM PluginContainer
taskkill /im plugincontainer.exe /t /f 2> nul
taskkill /im PluginContainer.exe /t /f 2> nul
REM Updater
taskkill /im updater.exe /t /f 2> nul
REM ----------Found 7/9/2015-----------
REM SlimCleaner
REM C:\Program Files\SlimCleaner Plus\
taskkill /im SlimCleanerPlus.exe /t /f 2> nul
taskkill /im mdp.exe /t /f 2> nul
REM SlimService
REM C:\Program Files\SlimService
taskkill /im SlimService.exe /t /f 2> nul
taskkill /im SlimServiceFactory.exe /t /f 2> nul
taskkill /im mdp.exe /t /f 2> nul
taskkill /im DriverUpdate.exe /t /f 2> nul
REM -----------Found 7/2/2015-----------
REM %temp%~
taskkill /im ansnE3AE.exe /t /f 2> nul
taskkill /im rnssF04D.exe /t /f 2> nul
taskkill /im cnssF04C.tmp /t /f 2> nul
REM Infected Chrome~
taskkill /im Discover.exe /t /f 2> nul
REM Ninja Loader~
taskkill /im "Ninja Loader.exe" /t /f 2> nul
taskkill /im NinjaMaintainer.exe /t /f 2> nul
REM PC Matic Plus~
taskkill /im PCTunerFG.exe /t /f 2> nul
taskkill /im Popialert.exe /t /f 2> nul
taskkill /im Probsalert.exe /t /f 2> nul
taskkill /im unitrack.exe /t /f 2> nul
taskkill /im updater.exe /t /f 2> nul
REM Wajam~
taskkill /im wajam.exe /t /f 2> nul
taskkill /im wajam_64.exe /t /f 2> nul
REM -----------Found 6/23/2015-----------
taskkill /im DefaultTabStart.exe /t /f 2> nul
taskkill /im DefaultTabStart64.exe /t /f 2> nul
taskkill /im DefaultTabUninstaller.exe /t /f 2> nul
taskkill /im DTUpdate.exe /t /f 2> nul
taskkill /im uninstalldt.exe /t /f 2> nul
taskkill /im update.exe /t /f 2> nul
taskkill /im loggingserver.exe /t /f 2> nul
taskkill /im ToolbarUpdater.exe /t /f 2> nul
taskkill /im PCHealthKit.exe /t /f 2> nul
taskkill /im PCHKGuard.exe /t /f 2> nul
taskkill /im PCHKLauncher.exe /t /f 2> nul
taskkill /im PCHKReminder.exe /t /f 2> nul
taskkill /im PCHKSchedule.exe /t /f 2> nul
taskkill /im PCHKSmartScan.exe /t /f 2> nul
taskkill /im PCHKUninstaller.exe /t /f 2> nul
taskkill /im NativeMessageHost.exe /t /f 2> nul
taskkill /im WajamUpdaterV3.exe /t /f 2> nul
taskkill /im unins000.exe /t /f 2> nul
taskkill /im uninstall.exe /t /f 2> nul
taskkill /im WebCakeDesktop.exe /t /f 2> nul
REM Found and added 6-1-2015
taskkill /im 39barsvc.exe /t /f 2> nul
taskkill /im AppIntegrator64.exe /t /f 2> nul
taskkill /im 39SrchMn.exe /t /f 2> nul
taskkill /im 39bar.dll /t /f 2> nul
taskkill /im 39SrcAs.dll /t /f 2> nul
taskkill /im JYI.exe /t /f 2> nul
REM Found and added 5-25-2015
taskkill /im a4SpeedCheckJ53.exe /t /f 2> nul
taskkill /im ansv95.exe /t /f 2> nul
taskkill /im beExpU.exe /t /f 2> nul
taskkill /im bnsg82.exe /t /f 2> nul
taskkill /im cltmng.exe /t /f 2> nul
taskkill /im CltMngSvc.exe /t /f 2> nul
taskkill /im cltmngui.exe /t /f 2> nul
taskkill /im cnsx98.exe /t /f 2> nul
taskkill /im gmsd_ca_497.exe /t /f 2> nul
taskkill /im gmsd_us_619.exe /t /f 2> nul
taskkill /im ConsumerInputUpdate.exe /t /f 2> nul
taskkill /im hnsl69.tmp /t /f 2> nul
taskkill /im jnsz65.tmp /t /f 2> nul
taskkill /im mainserv.exe /t /f 2> nul
taskkill /im N2ox192.exe /t /f 2> nul
taskkill /im nsd11E.tmp /t /f 2> nul
taskkill /im nsdBD.tmp /t /f 2> nul
taskkill /im nsf50.tmpfs /t /f 2> nul
taskkill /im nsm519.tmpfs /t /f 2> nul
taskkill /im smss.exe /t /f 2> nul
taskkill /im snss594.exe /t /f 2> nul
taskkill /im UMVPFSrv.exe /t /f 2> nul
taskkill /im upgmsd_ca_497.exe /t /f 2> nul
taskkill /im upgmsd_us_619.exe /t /f 2> nul
taskkill /im vnsy37.tmp /t /f 2> nul
taskkill /im CALMAIN.exe /t /f 2> nul
taskkill /im CameraHelperShell.exe /t /f 2> nul
taskkill /im COCIManager.exe /t /f 2> nul
taskkill /im crossbrowse.exe /t /f 2> nul
taskkill /im daemonu.exe /t /f 2> nul
taskkill /im dca-monitoring.exe /t /f 2> nul
taskkill /im FlashBeat.exe /t /f 2> nul
taskkill /im upgmsd_ca_493.exe /t /f 2> nul
taskkill /im gmsd_ca_493.exe /t /f 2> nul
taskkill /im HDeck.exe /t /f 2> nul
taskkill /im IAAnotif.exe /t /f 2> nul
taskkill /im IAANTmon.exe /t /f 2> nul
taskkill /im jnse53A.tmp /t /f 2> nul
taskkill /im Kikblaster.exe /t /f 2> nul
taskkill /im LogitechUpdate.exe /t /f 2> nul
taskkill /im LULnchr.exe /t /f 2> nul
taskkill /im LWS.exe /t /f 2> nul
taskkill /im UpdateCheck.exe /t /f 2> nul
taskkill /im YTDownloader.exe /t /f 2> nul
taskkill /im SSScheduler.exe /t /f 2> nul
taskkill /im unsecapp.exe /t /f 2> nul
taskkill /im wueooalu.exe /t /f 2> nul
REM MyWinLocker (EgisTec Software)
REM C:\Program Files (x86)\EgisTec Egis Software Update
REM C:\Program Files (x86)\EgisTec\MyWinLocker 3
taskkill /im EgisUpdate.exe /t /f 2> nul
taskkill /im Decryption.exe /t /f 2> nul
taskkill /im Encryption.exe /t /f 2> nul
taskkill /im mwlCCPSD.exe /t /f 2> nul
taskkill /im mwlCSP.exe /t /f 2> nul
taskkill /im mwlDaemon.exe /t /f 2> nul
taskkill /im MSLfsu.exe /t /f 2> nul
taskkill /im mwlMgtConsole.exe /t /f 2> nul
taskkill /im mwlInstHelper.exe /t /f 2> nul
taskkill /im mwlRF.exe /t /f 2> nul
taskkill /im MWLService.exe /t /f 2> nul
taskkill /im mwlTBMNGR.exe /t /f 2> nul
taskkill /im OnlineHelp.exe /t /f 2> nul
taskkill /im PMMdatamgr.exe /t /f 2> nul
taskkill /im MiniLauncher.exe /t /f 2> nul
taskkill /im Shredder.exe /t /f 2> nul
REM Privoxy
REM C:\Program Files (x86)\Megasoft Security
taskkill /im jptask.exe /t /f 2> nul
taskkill /im jsff.exe /t /f 2> nul
taskkill /im privoxy.exe /t /f 2> nul
taskkill /im swchromium.exe /t /f 2> nul
taskkill /im swchromium64.exe /t /f 2> nul
REM GeniusBox
taskkill /im client.exe /t /f 2> nul
taskkill /im certmanager.exe /t /f 2> nul
taskkill /im makecert.exe /t /f 2> nul
taskkill /im Tasks.exe /t /f 2> nul
taskkill /im Uninstall.exe /t /f 2> nul
taskkill /im Updater.exe /t /f 2> nul
taskkill /im certutil.exe /t /f 2> nul
REM Driver Detective
taskkill /im DriversHQ.DriverDetective.Client.exe /t /f 2> nul
REM Roller Coaster Park
REM C:\Program Files (x86)\roller coaster park
taskkill /im roller_coaster_park_notifier.exe /t /f 2> nul
REM Ask Toolbar
REM C:\Program Files (x86)\AskPartnerNetwork\Toolbar
REM C:\Program Files (x86)\AskPartnerNetwork
taskkill /im TBNotifier.exe /t /f 2> nul
REM Have to run this one a few times. it tends to create child processes that appear shortly after it has been killed...
taskkill /im apnmcp.exe /t /f 2> nul
REM Mindspark
taskkill /im 65barsvc.exe /t /f 2> nul
taskkill /im APPINTEGRATOR.EXE /t /f 2> nul
taskkill /im AppIntegrator.exe /t /f 2> nul
taskkill /im APPINTEGRATOR64.exe /t /f 2> nul
taskkill /im AppIntegrator64.exe /t /f 2> nul
taskkill /im bfbarsvc.exe /t /f 2> nul
taskkill /im cebarsvc.exe /t /f 2> nul
taskkill /im CrExtPbf.exe /t /f 2> nul
taskkill /im CrExtPce.exe /t /f 2> nul
taskkill /im RebootRequired.exe /t /f 2> nul
taskkill /im SnapMyScreen.exe /t /f 2> nul
taskkill /im 4zbarsvc.exe /t /f 2> nul
taskkill /im 4zbrmon.exe /t /f 2> nul
taskkill /im 4zbrmon64.exe /t /f 2> nul
taskkill /im 4zhighin.exe /t /f 2> nul
taskkill /im 4zmedint.exe /t /f 2> nul
taskkill /im 4zskplay.exe /t /f 2> nul
taskkill /im 4zSrchMn.exe /t /f 2> nul
taskkill /im AppIntegrator64.exe /t /f 2> nul
taskkill /im CrExtP4z.exe /t /f 2> nul
taskkill /im VideoDownloadConverterSetup.exe /t /f 2> nul
REM CrossBrowse
REM This program will install CinemaPlus, or vice versa
taskkill /im crossbrowse.exe /t /f 2> nul
REM Compete DCA Host ?? <-- Look into this
taskkill /im dca-host.exe /t /f 2> nul
taskkill /im dca-monitoring.exe /t /f 2> nul
REM Block and surf
taskkill /im BlockAndSurf.exe /t /f 2> nul
REM Boost
taskkill /im Boost.exe /t /f 2> nul
REM YSLoader
taskkill /im AppleMobileDeviceService.exe /t /f 2> nul
REM PalMall exe
taskkill /im 7e0c8f1a-041f-4b28-9c69-165dde7038f0-10.exe /t /f 2> nul
REM VideoDownloader_4z
REM C:\Program Files\VideoDownloadConverter_4zEI
REM C:\Program Files (x86)\VideoDownloadConverter_4zEI
taskkill /im VideoDownloadConvert.exe /t /f 2> nul
taskkill /im 4zbarsvc.exe /t /f 2> nul
taskkill /im 4zbrmon.exe /t /f 2> nul
taskkill /im 4zbrmon64.exe /t /f 2> nul
REM Tuneup Computer
REM C:\Program Files (x86)\Tuneup computer\
taskkill /im updater.exe /t /f 2> nul
taskkill /im unitrack.exe /t /f 2> nul
taskkill /im Probsalert.exe /t /f 2> nul
taskkill /im PCTunerFG.exe /t /f 2> nul
taskkill /im Popialert.exe /t /f 2> nul
REM Super Optimizer
REM C:\Program Files (x86)\Super Optimizer\
taskkill /im SuperOptimizer.exe /t /f 2> nul
taskkill /im SupOptGuard.exe /t /f 2> nul
taskkill /im SupOptLauncher.exe /t /f 2> nul
taskkill /im SupOptReminder.exe /t /f 2> nul
taskkill /im SupOptScheduler.exe /t /f 2> nul
taskkill /im SupOptSmartScan.exe /t /f 2> nul
taskkill /im SupOptStart.exe /t /f 2> nul
taskkill /im unins000.exe /t /f 2> nul
REM Portable WeatherApp
REM C:\Program Files (x86)\Portable WeatherApp\
taskkill /im IEerror.exe /t /f 2> nul
taskkill /im IEerror.vshost.exe /t /f 2> nul
taskkill /im unitrack.exe /t /f 2> nul
taskkill /im unitrack.vshost.exe /t /f 2> nul
taskkill /im updater.exe /t /f 2> nul
taskkill /im wdrguid.exe /t /f 2> nul
taskkill /im wdrguid.vshost.exe /t /f 2> nul
taskkill /im Weather.exe /t /f 2> nul
taskkill /im Weather.vshost.exe /t /f 2> nul
REM Optimizer Pro
REM C:\Program Files (x86)\Optimizer Pro 3.56\
taskkill /im OptimizerPro.exe /t /f 2> nul
taskkill /im OptProGuard.exe /t /f 2> nul
taskkill /im OptProLauncher.exe /t /f 2> nul
taskkill /im OptProReminder.exe /t /f 2> nul
taskkill /im OptProSchedule.exe /t /f 2> nul
taskkill /im OptProSmartScan.exe /t /f 2> nul
taskkill /im OptProStart.exe /t /f 2> nul
taskkill /im OptProUninstaller.exe /t /f 2> nul
REM WildTangent Games
REM Not really malware, but really annoying.
REM C:\Program Files (x86)\WildTangent Games\App\
taskkill /im GameConsole.exe /t /f 2> nul
taskkill /im GameConsole-wt.exe /t /f 2> nul
taskkill /im GameLauncher.exe /t /f 2> nul
taskkill /im GameLicensing.exe /t /f 2> nul
taskkill /im GamesAppService.exe /t /f 2> nul
taskkill /im PatchHelper.exe /t /f 2> nul
taskkill /im GamesAppIntegrationService.exe /t /f 2> nul
taskkill /im wtapp_ProtocolHandler.exe /t /f 2> nul
taskkill /im BSDiff_Patch.exe /t /f 2> nul
taskkill /im Park.exe /t /f 2> nul
taskkill /im Updater.exe /t /f 2> nul
REM CinemaPlus-3.4cV18.04
taskkill /im 4fe643af-6590-4f8e-a033-9b5cadb6ddc4-10.exe /t /f 2> nul
taskkill /im f32c2b3f-2a90-4330-906c-411ddbdd2be4-1-6.exe /t /f 2> nul
taskkill /im f32c2b3f-2a90-4330-906c-411ddbdd2be4-1-7.exe /t /f 2> nul
taskkill /im f32c2b3f-2a90-4330-906c-411ddbdd2be4-5.exe /t /f 2> nul
taskkill /im f32c2b3f-2a90-4330-906c-411ddbdd2be4-10.exe /t /f 2> nul
REM Gambali
taskkill /im Gambali.exe /t /f 2> nul
REM Games Desktop Utility
taskkill /im gmsd_us_458.exe /t /f 2> nul
taskkill /im gmsd_us_467.exe /t /f 2> nul
taskkill /im gamesdesktop_widget.exe /t /f 2> nul
taskkill /im predm.exe /t /f 2> nul
REM shopperz
taskkill /im csrcc.exe /t /f 2> nul
taskkill /im grunt.exe /t /f 2> nul
taskkill /im nfregdrv64.exe /t /f 2> nul
taskkill /im nseven.exe /t /f 2> nul
taskkill /im wrex.exe /t /f 2> nul
taskkill /im wrex64.exe /t /f 2> nul
taskkill /im 70F4EEDB-1367-4b4f-8247-3133551A7415.exe /t /f 2> nul
REM coupoon
taskkill /im iiwjljrnpc64.exe /t /f 2> nul
taskkill /im nfregdrv.exe /t /f 2> nul
REM Infonaut_1.10.0.14
REM C:\Program Files (x86)\Infonaut_1.10.0.14\Service\insvc.exe -uninstall
REM 015
REM C:\Program Files\015\lxrrlxtleh32
taskkill /im lxrrlxtleh32.exe /t /f 2> nul
REM OLBPre
taskkill /im OLBPre.exe /t /f 2> nul
REM Plugin
taskkill /im plugin.exe /t /f 2> nul
taskkill /im plugincontainer.exe /t /f 2> nul
REM SlimService
taskkill /im SlimService.exe /t /f 2> nul
taskkill /im SlimServiceFactory.exe /t /f 2> nul
REM SmartWebApp
taskkill /im __u.exe /t /f 2> nul
taskkill /im SmartWebApp.exe /t /f 2> nul
taskkill /im SmartWebHelper.exe /t /f 2> nul
REM updater
taskkill /im updater.exe /t /f 2> nul
REM WebProtectorPlus
taskkill /im WebProtectorPlus.exe /t /f 2> nul
taskkill /im SetupComponents.exe /t /f 2> nul
taskkill /im LiveUpdateWWP.exe /t /f 2> nul
IF 2==1 (
ECHO.
)
IF 2==1 (
ECHO.
)
IF 2==1 (
ECHO.
)
IF 2==1 (
ECHO.
)
IF 2==1 (
ECHO.
)
IF 2==1 (
ECHO                All known malware and bloatware has been terminated.
)
IF 2==1 (
ECHO.
)
IF 2==1 (
ECHO --------------------------------------------------------------------------------
)
IF 2==1 (
ECHO     This means that you can continue to manually remove the infection (if any
)
)
IF 2==1 (
ECHO     manually or using tools that are provided under the Downloads/Rootkit
)
IF 2==1 (
ECHO     sections in the main menu.
)
IF 2==1 (
ECHO.
)
IF 2==1 (
ECHO.
)
IF 2==1 (
ECHO.
)
IF 2==1 (
ECHO.
)
IF 2==1 (
ECHO.
)
IF 2==1 (
PAUSE
)
IF 2==1 (
GOTO HOME
)
IF 2==2 (
GOTO KILLSERV
)
:KILLSERV
echo ---Stopping known malware services.
echo.
REM Found and added 9-15-2015
net stop SearchProtectionService 2> nul
net stop FromDocToPDF_65Service 2> nul
REM Found and added 8-6-2015
net stop "Petty Court" 2> nul
net stop TelevisionFanaticService 2> nul
net stop 3e02e3c9 2> nul
net stop TrustMix 2> nul
net stop VideoDownloadConverter_4zService 2> nul
net stop VideoDownloadConverterService 2> nul
REM Found and added 7-24-2015
net stop bebtosho 2> nul
net stop Checker 2> nul
net stop ipucatyj 2> nul
net stop aaf818c3 2> nul
net stop LiveReader 2> nul
net stop "Update Mgr SeeResultsHub" 2> nul
net stop "Service Mgr SeeResultsHub" 2> nul
REM Found and added 7-15-2015
net stop "Service Mgr RecordPage" 2> nul
net stop "Update Mgr RecordPage" 2> nul
net stop bca22949 2> nul
REM Found and added 6-23-2015
net stop WtuSystemSupport 2> nul
net stop vToolbarUpdater18.4.0 2> nul
net stop WajamUpdaterV3 2> nul
REM Found and added 6-1-2015
net stop MapsGalaxyService 2> nul
net stop MapsGalaxy_39Service 2> nul
net stop EZ Software Updater 2> nul
net stop f1f78e38 2> nul
REM Found and added 5-25-2015
net stop UpdateCheck 2> nul
net stop SPBIUpd 2> nul
net stop SMUpd 2> nul
net stop OfMQduaBIJq 2> nul
net stop CoupoonService 2> nul
net stop BrsHelper 2> nul
net stop gykoruqo 2> nul
net stop 70F4EEDB-1367-4b4f-8247-3133551A7415 2>nul
net stop CoupoonService64 2> nul
net stop csrcc 2> nul
net stop EasyPDFCombineService 2> nul
net stop FlashBeat 2> nul
net stop FromDocToPDFService 2> nul
net stop lxrrlxtleh32 2> nul
net stop VideoDownloadConverterService 2> nul
net stop SnapMyScreen 2> nul
net stop shopperz 2> nul
net stop PrivoxyService 2> nul
net stop WINZIPSSDiskOptimizer 2> nul
net stop MWLService 2> nul
echo ---Disabling known malware services.
echo.
REM Found and added 9-15-2015
sc config SearchProtectionService start= disabled >nul
sc config FromDocToPDF_65Service start= disabled >nul
REM Found and added 8-6-2015
sc config "Petty Court" start= disabled >nul
sc config TelevisionFanaticService start= disabled >nul
sc config 3e02e3c9 start= disabled >nul
sc config TrustMix start= disabled >nul
sc config VideoDownloadConverter_4zService start= disabled >nul
sc config VideoDownloadConverterService start= disabled >nul
REM Found and added 7-24-2015
sc config bebtosho start= disabled >nul
sc config Checker start= disabled >nul
sc config ipucatyj start= disabled >nul
sc config aaf818c3 start= disabled >nul
sc config LiveReader start= disabled >nul
sc config "Update Mgr SeeResultsHub" start= disabled >nul
sc config "Service Mgr SeeResultsHub" start= disabled >nul
REM Found and added 7-15-2015
sc config "Service Mgr RecordPage" start= disabled >nul
sc config "Update Mgr RecordPage" start= disabled >nul
sc config bca22949 start= disabled >nul
REM Found and added 6-23-2015
sc config WtuSystemSupport start= disabled >nul
sc config vToolbarUpdater18.4.0 start= disabled >nul
sc config WajamUpdaterV3 start= disabled >nul
REM Found and added 6-1-2015
sc config MapsGalaxyService start= disabled >nul
sc config MapsGalaxy_39Service start= disabled >nul
sc config EZ Software Updater start= disabled >nul
sc config f1f78e38 start= disabled >nul
REM Found and added 5-25-2015
sc config UpdateCheck start= disabled >nul
sc config SPBIUpd start= disabled >nul
sc config SMUpd start= disabled >nul
sc config OfMQduaBIJq start= disabled >nul
sc config CoupoonService start= disabled >nul
sc config BrsHelper start= disabled >nul
sc config gykoruqo start= disabled >nul
sc config 70F4EEDB-1367-4b4f-8247-3133551A7415 start= disabled >nul
sc config CoupoonService64 start= disabled >nul
sc config csrcc start= disabled >nul
sc config EasyPDFCombineService start= disabled >nul
sc config FlashBeat start= disabled >nul
sc config FromDocToPDFService start= disabled >nul
sc config lxrrlxtleh32 start= disabled >nul
sc config VideoDownloadConverterService start= disabled >nul
sc config SnapMyScreen start= disabled >nul
sc config shopperz start= disabled >nul
sc config PrivoxyService start= disabled >nul
sc config WINZIPSSDiskOptimizer start= disabled >nul
sc config MWLService start= disabled >nul
set KFLAG=1
GOTO KILL