#adb install {app_nm}.apk
adb install "Activity Launcher  1.15.2".apk
#adb shell cmd package install-existing
adb shell cmd package install-existing com.google.android.gms
#adb shell pm disable-user
adb shell pm uninstall -k --user 0 com.google.android.youtube
adb shell pm uninstall -k --user 0 com.google.android.apps.maps
adb shell pm uninstall -k --user 0 com.google.android.gm
adb shell pm uninstall -k --user 0 com.xiaomi.glgm
adb shell pm uninstall -k --user 0 com.mi.globalbrowser
#adb shell am start -a android.intent.action.DELETE -d package:
