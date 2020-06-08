@echo off

cd C:\Users\samee\Documents\zoom_auto_join
timeout /t 5

call clear_schedule.bat
timeout /t 5
python scrape.py
timeout /t 360
call schedule.bat
timeout /t 5
