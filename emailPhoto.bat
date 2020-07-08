@echo off

cd C:\Users\samee\Documents\zoom_auto_join\

nircmd exec hide startEmailServer.bat

timeout /t 5

del Capture.png

nircmd.exe savescreenshot Capture.png

python emailPhoto.py

start turnoffmonitor.bat

rem start killcmd.bat
