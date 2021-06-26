@echo off
cd .. && cd sdk-tools-windows-4333796\platform-tools\
adb kill-server
adb start-server
timeout /t 25
exit