import pyautogui
import argparse
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument("--i")
parser.add_argument("--p")
args = parser.parse_args()
pyautogui.FAILSAFE = False

def execute(id, password):
    #click win key
    #pyautogui.moveTo(5,1200, duration = 10)
    #pyautogui.click(5,1200)
    #pyautogui.moveTo(5,1200, duration = 5)
    #search zoom
    #pyautogui.typewrite("zoom")
    #click zoom
    #pyautogui.moveTo(137, 372, duration = 5)
    #pyautogui.click(137, 372)
    #click join meeting
    pyautogui.moveTo(972, 516, duration = 10)
    pyautogui.click(972,516)
    #enter meeting id
    pyautogui.moveTo(800,475, duration = 4)
    pyautogui.click(800,475)
    #type meeting id
    pyautogui.typewrite(str(id))
    #disable audio and video
    #pyautogui.moveTo(760,630, duration = 1)
    #pyautogui.click(760,630)
    pyautogui.moveTo(760,670, duration = 1)
    pyautogui.click(760,670)
    #join meeting
    pyautogui.moveTo(1000,700, duration = 1)
    pyautogui.click(1000,700)
    #enter meeting meeting_password
    pyautogui.moveTo(900, 475, duration = 5)
    pyautogui.click(900,475)
    pyautogui.typewrite(str(password))
    #click join meeting
    pyautogui.moveTo(1000,700, duration = 1)
    pyautogui.click(1000,700)




meeting_id = args.i
meeting_password = args.p
print(len(meeting_password))
if len(meeting_password) == 6:
    execute(meeting_id, meeting_password)
else:
    subprocess.call([r'C:\Users\samee\Documents\zoom_auto_join\clear_schedule.bat.bat'])



    
