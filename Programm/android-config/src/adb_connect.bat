@echo off
cd .. && cd sdk-tools-windows-4333796\platform-tools\
adb tcpip 5555
pause
adb devices -l
pause
adb shell ip route
pause
set /p ip=Enter IP: 
adb connect %ip%
pause
adb devices -l
pause
scrcpy-noconsole --help
pause
start scrcpy-noconsole -s %ip%:5555
timeout /t 25
exit
