::@echo off
set "EXIT_CODE=0"
chcp 65001 2>nul >nul

if ["%~1"] equ [""] ( goto ERR_NO_ARG )

set "SOURCE=%~f1\"
set "TARGET=%~f1_tmp\"
if not exist %~s1\NUL ( goto ERR_NOT_FOLDER )

xcopy /E /Y /F /C /G /Z /B "%~1" "%TARGET%"
set "EXIT_CODE=%ErrorLevel%"
if ["%EXIT_CODE%"] NEQ ["0"] ( goto ERR_COPY )


::------------------------------------------------- accessing the target-folder.
cd /d "%TARGET%"

::------------------------------------------------- cleaning up stuff.
del /f /q "README.md"
cd "resources/"
del /f /q "_*"
del /f /q "*.txt"
del /f /q "*.7z"
del /f /q "*.pdn"
del /f /q "tile.png"
del /f /q "screenshot*.*"

cd ..

7z a -y -ssw "plain.zip" *

cd "resources/"
for %%f in (*.js) do (
  call "C:\www\mods\Closure-Compiler\example3_ignore_undefined_variables__include_webext_globals__simple__noprettyprint.cmd" "%%~f"
)
for %%f in (*.min.js) do (
 call "C:\www\mods\javascript-obfuscator\javascript-obfuscator_config.cmd" "%%~f"
)


echo.
echo.---------------------------------------------------------------------------
echo.- rename the files and organise everything and press-any-key to continue. -
echo.---------------------------------------------------------------------------
echo.
pause

cd ..

7z a -x!"plain.zip" -y -ssw -sdel "obfuscated.zip" *

goto END

:ERR_NO_ARG
  echo please provide an argument which is the path to a folder, 1>&2
  echo that will be copied and compressed to plain.zip, then obfuscated and zipped again. 1>&2
  set "EXIT_CODE=111"
  goto END

:ERR_NOT_FOLDER
  echo please provide a path to a folder. 1>&2
  set "EXIT_CODE=222"
  goto END
  
:ERR_COPY
  echo there was an error while trying to copy %SOURCE% to %TARGET%                     1>&2
  echo please check you have permissions to access the folders,                         1>&2
  echo and that the target-folder is not already-exist and used by another application. 1>&2
  set "EXIT_CODE=333"
  goto END

:END
  pause
  exit /b %EXIT_CODE%
