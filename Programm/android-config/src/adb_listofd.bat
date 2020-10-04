@echo off
cd .. && cd sdk-tools-windows-4333796\platform-tools\
echo #list of devices
adb devices -l
timeout /t 25
exit
