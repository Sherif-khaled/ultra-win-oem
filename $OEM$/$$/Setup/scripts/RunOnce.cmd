@echo off
setlocal ENABLEDELAYEDEXPANSION
pushd "%~dp0"
cd %~dp0
::===============================================================================================================

regedit /s "%~dp0/Reg/Tweaks/Desktop.reg"

:Exit
ENDLOCAL
exit