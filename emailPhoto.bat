@echo off
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit

cd C:\Users\samee\Documents\zoom_auto_join\

taskkill /F /IM TeamViewer.exe

nircmd exec hide startEmailServer.bat

timeout /t 5

del Capture.png

nircmd.exe savescreenshot Capture.png

python emailPhoto.py

timeout /t 5

start C:\"Program Files (x86)"\TeamViewer\TeamViewer.exe

start turnoffmonitor.bat

rem start killcmd.bat

exit
