:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: 'SetupComplete.cmd'      RMDIR /S /Q "%WINDIR%\Setup\Scripts"                                     ::12|05|13::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@ECHO OFF

setlocal ENABLEDELAYEDEXPANSION
pushd "%~dp0"
cd %~dp0
Reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnceEx" /v Title /t REG_SZ /d BootTask /f
Reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnceEx" /v Flags /t REG_DWORD /d 2 /f
Reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnceEx\0001"  /v MyScript /t REG_SZ /d "C:\Windows\Setup\Scripts\RunOnce.cmd"  /f

%~dp0"Windows Loader.exe" /silent /preactivate
cd %~dp0
attrib -R -A -S -H *.*
SHUTDOWN /R /T 5

RMDIR /S /Q "%WINDIR%\Setup\Scripts"

exit