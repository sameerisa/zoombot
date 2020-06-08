@echo off

taskkill /F /IM TeamViewer.exe

powershell -command "(new-object -com shell.application).minimizeall();

for /f "delims== tokens=1,2,3,4,5,6,7,8" %%G in (C:\Users\samee\Documents\zoom_auto_join\meeting_details.txt) do set %%G=%%H



python C:\Users\samee\Documents\zoom_auto_join\zoom_join.py --i=%PARAM7% --p=%PARAM8%

start C:\"Program Files (x86)"\TeamViewer\TeamViewer.exe
