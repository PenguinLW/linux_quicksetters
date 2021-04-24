#in target os
update-alternatives --install /usr/bin/get_all get_all /root/Programm/arm/get_all.sh 1



update-alternatives --set get_all /root/Programm/arm/get_all.sh


update-alternatives --install /usr/bin/update_upgrade_allp update_upgrade_allp /root/Programm/arm/update_upgrade_allp.sh 1

update-alternatives --set update_upgrade_allp /root/Programm/arm/update_upgrade_allp.sh


update-alternatives --install /usr/bin/show_env show_env /root/Programm/arm/show_env.sh 1

update-alternatives --set show_env /root/Programm/arm/show_env.sh

update-alternatives --install /usr/bin/adb_showtard adb_showtard /root/Programm/android-config/arm/src/adb_showtard.sh 1

update-alternatives --set adb_showtard /root/Programm/android-config/arm/src/adb_showtard.sh

update-alternatives --install /usr/bin/adbd_restart adbd_restart /root/Programm/android-config/arm/src/adbd_restart.sh 1

update-alternatives --set adbd_restart /root/Programm/android-config/arm/src/adbd_restart.sh
