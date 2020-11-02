cd .. && cd sdk-tools-windows-4333796\platform-tools\
adb root
adb shell mount -rw /system/
adb shell mount -o remount -rw /system/
adb shell mount -o remount -rw /data/
adb shell cat /proc/mounts
adb shell "chmod 666 /system/build.prop"
adb shell "chmod 666 /system/build.prop.bak"
adb shell "chmod 666 /data/system/users/0/settings_global.xml"
adb shell "chown root:root /data/system/users/0/settings_global.xml"
adb shell "chmod 666 /data/system/users/0/settings_secure.xml"
adb shell "chown root:root /data/system/users/0/settings_secure.xml"
adb shell "chmod 666 /data/system/users/0/settings_system.xml"
adb shell "chown root:root /data/system/users/0/settings_system.xml"
adb shell ls /system/
adb shell ls -l /system/
adb shell ls /data/system/users/0/
adb shell ls -l /data/system/users/0/
pause
adb pull /system/build.prop c:\Programm\android-config\backup\
adb pull /system/build.prop.bak c:\Programm\android-config\backup\
adb pull /system/build.prop c:\Programm\android-config\resources\
adb pull /system/build.prop.bak c:\Programm\android-config\resources\
adb pull /data/system/users/0/settings_global.xml c:\Programm\android-config\backup\
adb pull /data/system/users/0/settings_secure.xml c:\Programm\android-config\backup\
adb pull /data/system/users/0/settings_system.xml c:\Programm\android-config\backup\
adb pull /data/system/users/0/settings_global.xml c:\Programm\android-config\resources\
adb pull /data/system/users/0/settings_secure.xml c:\Programm\android-config\resources\
adb pull /data/system/users/0/settings_system.xml c:\Programm\android-config\resources\
pause
adb shell rm /data/property/persist.service.adb.enable
adb shell rm /data/property/persist.sys.usb.config
adb shell rm /system/build.prop
adb shell rm /system/build.prop.bak
adb shell rm /data/system/users/0/settings_global.xml
adb shell rm /data/system/users/0/settings_secure.xml
adb shell rm /data/system/users/0/settings_system.xml
adb shell ls /system/
adb shell ls -l /system/
adb shell ls /data/system/users/0/
adb shell ls -l /data/system/users/0/
pause
echo "build.prop" && echo "build.prop.bak"
echo "ro.build.type=userdebug"
echo "persist.service.adb.enable=1"
echo "persist.service.debuggable=1"
echo "persist.sys.usb.config=mtp,adb"
pause
echo "settings_global.xml"
echo "<setting id="168" name="adb_enabled" value="1" package="android" />"
pause
adb push c:\Programm\android-config\s\resourcesrc\build.prop /system/
adb push c:\Programm\android-config\resources\build.prop.bak /system/
adb push c:\Programm\android-config\resources\settings_global.xml /data/system/users/0/
adb push c:\Programm\android-config\resources\settings_secure.xml /data/system/users/0/
adb push c:\Programm\android-config\resources\settings_system.xml /data/system/users/0/
adb shell ls /system/
adb shell ls -l /system/
adb shell ls /data/system/users/0/
adb shell ls -l /data/system/users/0/
pause
adb shell "chmod 644 /system/build.prop"
adb shell "chown root:root /system/build.prop"
adb shell "chmod 644 /system/build.prop.bak"
adb shell "chown root:root /system/build.prop.bak"
adb shell "chmod 600 /data/system/users/0/settings_global.xml"
adb shell "chown system:system /data/system/users/0/settings_global.xml"
adb shell "chmod 600 /data/system/users/0/settings_secure.xml"
adb shell "chown system:system /data/system/users/0/settings_secure.xml"
adb shell "chmod 600 /data/system/users/0/settings_system.xml"
adb shell "chown system:system /data/system/users/0/settings_system.xml"
adb shell ls /system/
adb shell ls -l /system/
adb shell ls /data/system/users/0/
adb shell ls -l /data/system/users/0/
pause
adb shell mount -o remount -r /data/
adb shell mount -o remount -r /system/ #mount -r /system/
adb shell umount /system/
adb shell cat /proc/mounts
pause
