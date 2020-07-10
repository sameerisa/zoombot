@echo off


taskkill /F /IM python.exe
start turnoffmonitor.bat
timeout /t 10
taskkill /F /IM cmd.exe
