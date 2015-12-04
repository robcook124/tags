@echo off

REM for /f "tokens=*" %%I in ('git diff') do (
REM 	SET VAR=%%I
REM 	echo %VAR%
REM )

if ('git diff') echo 1