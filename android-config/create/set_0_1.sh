echo #power plus poweroff plusoff ¿onedown onepower?

mount -rw /system/

mount -o remount -rw /system/

mount -o remount -rw /data/

cat /proc/mounts

chmod 666 /system/build.prop

chmod 666 /system/build.prop.bak

chmod 666 /data/system/users/0/settings_global.xml

chown root:root /data/system/users/0/settings_global.xml

chmod 666 /data/system/users/0/settings_secure.xml

chown root:root /data/system/users/0/settings_secure.xml

chmod 666 /data/system/users/0/settings_system.xml

chown root:root /data/system/users/0/settings_system.xml

ls /system/

ls -l /system/

ls /data/system/users/0/

ls -l /data/system/users/0/

#adb pull /system/build.prop /storage/C759-1BFD/Videos/backup

#adb pull /system/build.prop.bak /storage/C759-1BFD/Videos/backup

#adb pull /system/build.prop c:\Programm\android-config\resources\

#adb pull /system/build.prop.bak c:\Programm\android-config\resources\

#adb pull /data/system/users/0/settings_global.xml /storage/C759-1BFD/Videos/backup

#adb pull /data/system/users/0/settings_secure.xml /storage/C759-1BFD/Videos/backup

#adb pull /data/system/users/0/settings_system.xml /storage/C759-1BFD/Videos/backup

#adb pull /data/system/users/0/settings_global.xml c:\Programm\android-config\resources\

#adb pull /data/system/users/0/settings_secure.xml c:\Programm\android-config\resources\

#adb pull /data/system/users/0/settings_system.xml c:\Programm\android-config\resources\

rm /data/property/persist.service.adb.enable

rm /data/property/persist.sys.usb.config

#rm /system/build.prop

#rm /system/build.prop.bak

#rm /data/system/users/0/settings_global.xml

#rm /data/system/users/0/settings_secure.xml

#rm /data/system/users/0/settings_system.xml

ls /system/

ls -l /system/

ls /data/system/users/0/

ls -l /data/system/users/0/

echo #"build.prop" && echo "build.prop.bak"

echo "ro.build.type=userdebug"

echo "persist.service.adb.enable=1"

echo "persist.service.debuggable=1"

echo "persist.sys.usb.config=mtp,adb"

echo #"settings_global.xml"

echo "<setting id="168" name="adb_enabled" value="1" package="android" />"

cat /system/build.prop

cat /system/build.prop.bak

cat /data/system/users/0/settings_global.xml

cat /data/system/users/0/settings_secure.xml

cat /data/system/users/0/settings_system.xml

#echo "persist.service.adb.enable=1

persist.service.debuggable=1

persist.sys.usb.config=mtp,adb" >> /system/build.prop

echo "<setting id=\"168\" name=\"adb_enabled\" value=\"1\" package=\"android\" />" >> /data/system/users/0/settings_global.xml

#adb push c:\Programm\android-config\s\resourcesrc\build.prop /system/

#adb push c:\Programm\android-config\resources\build.prop.bak /system/

#adb push c:\Programm\android-config\resources\settings_global.xml /data/system/users/0/

#adb push c:\Programm\android-config\resources\settings_secure.xml /data/system/users/0/

#adb push c:\Programm\android-config\resources\settings_system.xml /data/system/users/0/

ls /system/

ls -l /system/

ls /data/system/users/0/

ls -l /data/system/users/0/

chmod 644 /system/build.prop

chown root:root /system/build.prop

chmod 644 /system/build.prop.bak

chown root:root /system/build.prop.bak

chmod 600 /data/system/users/0/settings_global.xml

chown system:system /data/system/users/0/settings_global.xml

chmod 600 /data/system/users/0/settings_secure.xml

chown system:system /data/system/users/0/settings_secure.xml

chmod 600 /data/system/users/0/settings_system.xml

chown system:system /data/system/users/0/settings_system.xml

ls /system/

ls -l /system/

ls /data/system/users/0/

ls -l /data/system/users/0/

mount -o remount -r /data/

mount -o remount -r /system/ #mount -r /system/

umount /system/

cat /proc/mounts

#############

mount -o remount -rw /data/

cat /proc/mounts

ls /data/misc/adb/

ls -l /data/misc/adb/

#copy c:\Users\diana\.android\adbkey.pub c:\Programm\android-config\backup\ /y

#adb pull /data/misc/adb/adb_keys c:\Programm\android-config\backup\

#adb push c:\Users\diana\.android\adbkey.pub /data/misc/adb/adb_keys

ls /data/misc/adb/

ls -l /data/misc/adb/

mount -o remount -r /data/

cat /proc/mounts

#find -name password*.* #grep -r pass*.*

ls -al /data/system/*gate*

rm -fr /data/system/*gate* 
