@echo off
start /min ixion_unlock_screen
start /min adb_hotspot_enabled_0
start /min adb_hotspot_enabled_1
start /min adbd_restart
timeout /t 25
adb connect 192.168.43.1
adb connect 192.168.0.3:5555
adb connect 192.168.0.4:5555
exit
