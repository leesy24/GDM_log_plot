@echo off
if "%~1"=="" goto ERROR_PARAM
if "%~2"=="" goto ERROR_PARAM

(for /f "tokens=1,8,9 delims=, " %%i in (%1) do echo %%i,%%j,%%k) > %2

exit

:ERROR_PARAM
exit /b -1
