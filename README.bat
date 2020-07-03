@echo off

setlocal enabledelayedexpansion

for %%i in ("%cd%") do set the_dir=%%~ni

echo #%the_dir% > README.md

for /f %%i in ('dir /b screenshots') do (

	echo ^^![image]^(https://github.com/liujidong/%the_dir%/raw/master/screenshots/%%i^) >> README.md

)

type README.md

endlocal

rem pause