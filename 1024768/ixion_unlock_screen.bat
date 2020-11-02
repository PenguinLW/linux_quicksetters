@echo off
adb shell input keyevent 26
timeout /t 4
adb shell input keyevent 66
adb shell input keyevent 66
timeout /t 4
adb shell input text "0_penguinl"
adb shell input keyevent 66
adb shell input keyevent 3
adb shell input keyevent --longpress 1
adb shell input touchscreen tap 320 1182
exit
