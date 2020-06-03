@echo off


:RUNONCE

REG ADD HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnceEx
SET KEY=HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnceEx

REG ADD %KEY% /V TITLE /D "Installing applications" /f  

REG ADD %KEY%\001 /VE /D "Microsoft Visual C++ 2008 Redistributable X86" /f
REG ADD %KEY%\001 /V 1 /D "%systemdrive%\Software\Microsoft\Microsoft Visual C++\vcredist_2008_x86.exe /q /log %TEMP%\VS_2008_X86 /norestart" /f

REG ADD %KEY%\002 /VE /D "Microsoft Visual C++ 2008 Redistributable X64" /f
REG ADD %KEY%\002 /V 1 /D "%systemdrive%\Software\Microsoft\Microsoft Visual C++\vcredist_2008_x64.exe /q /log %TEMP%\VS_2008_X64 /norestart" /f

REG ADD %KEY%\003 /VE /D "Microsoft Visual C++ 2010 Redistributable X86" /f
REG ADD %KEY%\003 /V 1 /D "%systemdrive%\Software\Microsoft\Microsoft Visual C++\vcredist_2010_x86.exe /q /log %TEMP%\VS_2010_X86 /norestart" /f

REG ADD %KEY%\004 /VE /D "Microsoft Visual C++ 2010 Redistributable X64" /f
REG ADD %KEY%\004 /V 1 /D "%systemdrive%\Software\Microsoft\Microsoft Visual C++\vcredist_2010_x64.exe /q /log %TEMP%\VS_2010_X64 /norestart" /f

REG ADD %KEY%\006 /VE /D "Microsoft Visual C++ 2012 Redistributable X86" /f
REG ADD %KEY%\006 /V 1 /D "%systemdrive%\Software\Microsoft\Microsoft Visual C++\vcredist_2012_x86.exe /q /log %TEMP%\VS_2012_X86 /norestart" /f

REG ADD %KEY%\007 /VE /D "Microsoft Visual C++ 2012 Redistributable X64" /f
REG ADD %KEY%\007 /V 1 /D "%systemdrive%\Software\Microsoft\Microsoft Visual C++\vcredist_2010_x64.exe /q /log %TEMP%\VS_2010_X64 /norestart" /f

REG ADD %KEY%\008 /VE /D "Microsoft Visual C++ 2013 Redistributable X86" /f
REG ADD %KEY%\008 /V 1 /D "%systemdrive%\Software\Microsoft\Microsoft Visual C++\vcredist_2013_x86.exe /q /log %TEMP%\VS_2013_X86 /norestart" /f

REG ADD %KEY%\009 /VE /D "Microsoft Visual C++ 2013 Redistributable X64" /f
REG ADD %KEY%\009 /V 1 /D "%systemdrive%\Software\Microsoft\Microsoft Visual C++\vcredist_2013_x64.exe /q /log %TEMP%\VS_2013_X64 /norestart" /f

REG ADD %KEY%\010 /VE /D "Microsoft Visual C++ 2015 Redistributable X86" /f
REG ADD %KEY%\010 /V 1 /D "%systemdrive%\Software\Microsoft\Microsoft Visual C++\vcredist_2015_x86.exe /q /log %TEMP%\VS_2015_X86 /norestart" /f

REG ADD %KEY%\011 /VE /D  "Microsoft Visual C++ 2015 Redistributable X64" /f
REG ADD %KEY%\011 /V 1 /D "%systemdrive%\Software\Microsoft\Microsoft Visual C++\vcredist_2015_x64.exe /q /log %TEMP%\VS_2015_X64 /norestart" /f

REG ADD %KEY%\012 /VE /D  "Microsoft Edge" /f
REG ADD %KEY%\012 /V 1 /D "%systemdrive%\Software\Microsoft\MicrosoftEdgeEnterpriseX64.msi /qn /norestart" /f

REG ADD %KEY%\013 /VE /D  "K-Lite Codec Pack" /f
REG ADD %KEY%\013 /V 1 /D "%systemdrive%\Software\Media\K-Lite_Codec_Pack_1544_Full.exe /VERYSILENT /NORESTART" /f

REG ADD %KEY%\014 /VE /D "Notepad2" /f
REG ADD %KEY%\014 /V 1 /D "%systemdrive%\Software\Office\Notepad2_4.2.25_x64.exe /SILENT" /f

REG ADD %KEY%\015 /VE /D "7zip" /f
REG ADD %KEY%\015 /V 1 /D "%systemdrive%\Software\Compression\7z1900-x64.msi /q" /f

REG ADD %KEY%\0016 /VE /D "DotNet Framework All OS 4.6" /f
REG ADD %KEY%\0016 /V 1 /D "%systemdrive%\Software\Microsoft\DotNet\NDP46-KB3045557-x86-x64-AllOS-ENU.exe /q /norestart" /f

EXIT

:CLEANUP
del /F /Q %systemroot%\setup\scripts\OOBE.cmd
RMDIR "%SystemDrive%\Software"

