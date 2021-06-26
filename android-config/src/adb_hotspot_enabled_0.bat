@echo off
cd .. && cd sdk-tools-windows-4333796\platform-tools\
echo #enabled tethering por wifi
adb shell am start -n com.android.settings/.TetherSettings
adb shell input keyevent 19
adb shell input keyevent 66
adb shell input keyevent 19
adb shell input keyevent 66
exit