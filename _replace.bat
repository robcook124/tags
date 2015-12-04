@echo off

set IN_FILE=version_test.h
set OUT_FILE=version_test_out.h
set NEW_MAJOR=%1
set NEW_MINOR=%2
set NEW_BUILD=%3

goto :START

REM
REM	Parse file to get version numbers
REM
:GETVERSION
for /f "tokens=2,3" %%A in (%IN_FILE%) do (
if %%A==VERSION_MAJOR SET VERSION_MAJOR=%%B
if %%A==VERSION_MINOR SET VERSION_MINOR=%%B
if %%A==VERSION_BUILD SET VERSION_BUILD=%%B
)
goto :EOF



:START
C:\Users\rcook\AppData\Local\GitHub\PortableGit_c2ba306e536fdf878271f7fe636a147ff37326ad\bin\git.exe describe --tags
call :GETVERSION
echo %VERSION_MAJOR%.%VERSION_MINOR%.%VERSION_BUILD%
echo %NEW_MAJOR%.%NEW_MINOR%.%NEW_BUILD%