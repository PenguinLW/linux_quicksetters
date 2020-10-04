cd .. && cd e:\Programm\android-config\sdk-tools-windows-4333796\platform-tools\
adb root
adb shell mount -o remount -rw /data/
adb shell cat /proc/mounts
adb shell ls /data/misc/adb/
adb shell ls -l /data/misc/adb/
pause
copy c:\Users\diana\.android\adbkey.pub e:\Programm\android-config\backup\ /y
adb pull /data/misc/adb/adb_keys e:\Programm\android-config\backup\
adb push c:\Users\diana\.android\adbkey.pub /data/misc/adb/adb_keys
adb shell ls /data/misc/adb/
adb shell ls -l /data/misc/adb/
pause
adb shell mount -o remount -r /data/
adb shell cat /proc/mounts
pause