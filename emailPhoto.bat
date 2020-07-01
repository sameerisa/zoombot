@echo off

cd C:\Users\samee\Documents\zoom_auto_join\

del Capture.png

nircmd.exe savescreenshot Capture.png

python emailPhoto.py

start turnoffmonitor.bat
