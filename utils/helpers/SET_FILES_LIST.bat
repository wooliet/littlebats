@ECHO OFF
REM arg1 - required = Directory
REM arg2 - optional = File extention (defaults to all files)
REM result stored in FILES_LIST

SET FILES_LIST=

SET TARGET_DIR="%~1"

if %TARGET_DIR% == "" EXIT /B


REM Is directory?
if not exist %TARGET_DIR%\* EXIT /B

SET EXT=%2
if "%2" == "" SET EXT=*


CD /d %TARGET_DIR%
(for %%f in ("*.%EXT%") do (
    CALL :CONCAT "%%f"
))

:CONCAT
    REM do not add directories
    IF NOT EXIST %1\* SET FILES_LIST=%FILES_LIST% %1
GOTO :EOF