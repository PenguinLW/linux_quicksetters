@echo off
rem #adb -s <your-device-id> tcpip 5555
rem #adb connect <your-device-id>

rem start /min ixion_unlock_screen
rem start /min adb_hotspot_enabled_0
rem start /min adb_hotspot_enabled_1
rem start /min adbd_restart
rem timeout /t 25
rem adb connect 192.168.43.1
rem adb connect 192.168.0.3:5555
adb connect 192.168.43.223:5555
rem exit