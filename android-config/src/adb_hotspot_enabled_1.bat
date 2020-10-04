@echo off
cd .. && cd sdk-tools-windows-4333796\platform-tools\
echo #enabled tethering por usb
adb shell am start -n com.android.settings/.TetherSettings
adb shell input keyevent 20
adb shell input keyevent 66
exit