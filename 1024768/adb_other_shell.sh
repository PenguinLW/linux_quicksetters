adb shell pm list packages -d

adb shell am switch-user 0 #10 #11 #12
adb shell settings put global --user 0 development_settings_enabled 1 
#adb shell am start --user 0 -n com.android.settings/.DevelopmentSettings
