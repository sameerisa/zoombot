@echo off
schtasks /delete /tn schedule1 /f
schtasks /delete /tn schedule2 /f
schtasks /delete /tn schedule3 /f
schtasks /delete /tn schedule4 /f
rem schtasks /delete /tn kill1 /f
rem schtasks /delete /tn kill2 /f
rem schtasks /delete /tn kill3 /f
rem schtasks /delete /tn kill4 /f
schtasks /delete /tn shutdown /f
