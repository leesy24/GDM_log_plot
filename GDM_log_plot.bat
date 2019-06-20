@echo off
if "%~1"=="" goto ERROR_PARAM
rem echo Current directory: %cd%
rem echo Batch file's directory: %~dp0

echo Preparing data from %1 ...
start /b /wait "" /realtime cmd.exe /C ^(findstr $PASHR %1 ^> %~dp0\log_.dat^)
for %%A in ("%~dp0\log_.dat") do if %%~zA==0 goto ERROR_LOG_FILE
start /b /wait "" /realtime "%~dp0\GDM_log_shrink.bat" %~dp0\log_.dat %~dp0\log.dat
del %~dp0\log_.dat

echo Plotting data, wait a moment ...
start /b /wait /max "" /realtime "gnuplot.exe" --persist -c "%~dp0\GDM_log_plot.plt" "%1" "%~dp0\log.dat"

echo Plot exit.
del %~dp0\log.dat
rem pause
exit

:ERROR_PARAM
echo =====================================================
echo You need to drag and drop the log file on this batch.
echo =====================================================
timeout 30 > NUL
exit /b -1

:ERROR_LOG_FILE
echo ====================================================
echo You need to check drop file is correct GDM log file.
echo ====================================================
timeout 30 > NUL
exit /b -1
