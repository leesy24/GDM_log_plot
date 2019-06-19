@echo off
if "%~1"=="" goto ERROR
rem echo Current directory: %cd%
rem echo Batch file's directory: %~dp0
echo Preparing data from %1 ...
findstr $PASHR %1 > %~dp0\log.dat
echo Plotting data, wait a moment ...
gnuplot --persist -c %~dp0\GDM_log_plot.plt %1 %~dp0\log.dat
echo Plot exit.
del %~dp0\log.dat
rem pause
exit

:ERROR
echo ====================================================
echo You need to drag and drop the log file on this batch
echo ====================================================
timeout 30 > NUL
exit /b -1
