@echo off


taskkill /F /IM python.exe
start turnoffmonitor.bat
timeout /t 5
taskkill /F /IM cmd.exe
