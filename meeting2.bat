@echo off

taskkill /F /IM Zoom.exe

taskkill /F /IM TeamViewer.exe

start startEmailServer.bat

powershell -command "(new-object -com shell.application).minimizeall();

for /f "delims== tokens=1,2,3,4,5,6" %%G in (C:\Users\samee\Documents\zoom_auto_join\meeting_details.txt) do set %%G=%%H

start C:\Users\samee\AppData\Roaming\Zoom\bin\Zoom.exe

timeout /t 5

python C:\Users\samee\Documents\zoom_auto_join\zoom_join.py --i=%PARAM3% --p=%PARAM4%

timeout /t 5

start emailPhoto.bat

timeout /t 5

start C:\"Program Files (x86)"\TeamViewer\TeamViewer.exe

start killcmd.bat


start turnoffmonitor.bat
