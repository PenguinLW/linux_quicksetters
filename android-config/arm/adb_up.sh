#in target os
cd /root/Programm/android-config

#cd /root/Programm/android-config/create

#chmod +x *

#./install.sh

#/root/Programm/android-config/tools/tools/bin/sdkmanager --list

#update-alternatives --install "/usr/bin/adb" "adb" "/root/Programm/android-config/tools/platform-tools/adb" 1

#update-alternatives --set adb /root/Programm/android-config/tools/platform-tools/adb

update-alternatives --install /usr/bin/adb_listofd adb_listofd /root/Programm/android-config/src/adb_listofd.sh 1

update-alternatives --set adb_listofd /root/Programm/android-config/src/adb_listofd.sh

update-alternatives --install /usr/bin/adb_restart adb_restart /root/Programm/android-config/src/adb_restart.sh 1

update-alternatives --set adb_restart /root/Programm/android-config/src/adb_restart.sh

update-alternatives --install /usr/bin/adbd_restart adbd_restart /root/Programm/android-config/src/adbd_restart.sh 1

update-alternatives --set adbd_restart /root/Programm/android-config/src/adbd_restart.sh

chmod +x /root/Programm/android-config/src/*.sh

#which adb

which adb_listofd

which adb_restart

which adbd_restart

#update-alternatives --remove adb /root/Programm/android-config/tools/platform-tools/adb

#update-alternatives --remove adb_listofd /root/Programm/android-config/src/adb_listofd.sh

#update-alternatives --remove adb_restart /root/Programm/android-config/src/adb_restart.sh

#update-alternatives --remove adbd_restart /root/Programm/android-config/src/adbb_restart.sh
