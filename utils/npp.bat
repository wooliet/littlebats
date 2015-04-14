@ECHO OFF
SETLOCAL

SET DIR=%~dp0
CALL "%DIR%helpers\SET_FILES_LIST.bat" %1 %2

REM If running standalone version this will need to be updated
REM to the full path
SET NPP=notepad++.exe

REM Start Notepad++ in a new instance
START %NPP% -multiInst -nosession %FILES_LIST%