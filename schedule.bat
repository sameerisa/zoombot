@echo off
schtasks /create /sc DAILY /tn schedule1 /tr C:\Users\samee\Documents\zoom_auto_join\meeting1.bat /st 00:18 /f
schtasks /create /sc DAILY /tn schedule2 /tr C:\Users\samee\Documents\zoom_auto_join\meeting2.bat /st 02:18 /f
schtasks /create /sc DAILY /tn schedule3 /tr C:\Users\samee\Documents\zoom_auto_join\meeting3.bat /st 04:18 /f
rem schtasks /create /sc DAILY /tn schedule4 /tr C:\Users\samee\Documents\zoom_auto_join\meeting4.bat /st 03:18 /f

schtasks /create /sc DAILY /tn monitor1 /tr C:\Users\samee\Documents\zoom_auto_join\emailPhoto.bat /st 01:00 /f
schtasks /create /sc DAILY /tn monitor2 /tr C:\Users\samee\Documents\zoom_auto_join\emailPhoto.bat /st 03:00 /f
schtasks /create /sc DAILY /tn monitor3 /tr C:\Users\samee\Documents\zoom_auto_join\emailPhoto.bat /st 05:00 /f
rem schtasks /create /sc DAILY /tn monitor4 /tr C:\Users\samee\Documents\zoom_auto_join\emailPhoto.bat /st 01:10 /f

rem schtasks /create /sc DAILY /tn killcmd1 /tr C:\Users\samee\Documents\zoom_auto_join\killcmd.bat /st 00:20 /f
rem schtasks /create /sc DAILY /tn killcmd2 /tr C:\Users\samee\Documents\zoom_auto_join\killcmd.bat /st 02:20 /f
rem schtasks /create /sc DAILY /tn killcmd3 /tr C:\Users\samee\Documents\zoom_auto_join\killcmd.bat /st 04:20 /f
rem schtasks /create /sc DAILY /tn killcmd1 /tr C:\Users\samee\Documents\zoom_auto_join\killcmd.bat /st 02:00 /f

rem schtasks /create /sc DAILY /tn killemail1 /tr C:\Users\samee\Documents\zoom_auto_join\killcmd.bat /st 01:02 /f
rem schtasks /create /sc DAILY /tn killemail2 /tr C:\Users\samee\Documents\zoom_auto_join\killcmd.bat /st 03:02 /f
rem schtasks /create /sc DAILY /tn killemail3 /tr C:\Users\samee\Documents\zoom_auto_join\killcmd.bat /st 05:02 /f
rem schtasks /create /sc DAILY /tn killemail4 /tr C:\Users\samee\Documents\zoom_auto_join\emailPhoto.bat /st 00:20 /f

rem schtasks /create /sc DAILY /tn kill3 /tr C:\Users\samee\Documents\zoom_auto_join\kill.bat /st 04:00 /f
rem schtasks /create /sc DAILY /tn kill1 /tr C:\Users\samee\Documents\zoom_auto_join\kill.bat /st 01:15 /f
rem schtasks /create /sc DAILY /tn kill4 /tr C:\Users\samee\Documents\zoom_auto_join\kill.bat /st 05:00 /f
rem schtasks /create /sc DAILY /tn kill2 /tr C:\Users\samee\Documents\zoom_auto_join\kill.bat /st 02:15 /f

schtasks /create /sc DAILY /tn shutdown /tr C:\Users\samee\Documents\zoom_auto_join\shutdown.bat /st 06:00 /f
