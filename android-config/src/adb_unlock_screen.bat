@echo off
cd .. && cd sdk-tools-windows-4333796\platform-tools\
adb shell input keyevent 26
timeout /t 4
adb shell input keyevent 66
adb shell input keyevent 66
set /p psw=Enter Password: 
adb shell input text %psw%
adb shell input keyevent 66
adb shell input keyevent 3
adb shell input keyevent --longpress 1
adb shell input touchscreen tap 320 1182
exit