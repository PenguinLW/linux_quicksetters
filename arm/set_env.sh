#in target os
update-alternatives --install /usr/bin/get_all get_all /Programm/arm/get_all.sh 1

update-alternatives --set get_all /Programm/arm/get_all.sh


update-alternatives --install /usr/bin/update_upgrade_allp update_upgrade_allp /Programm/arm/update_upgrade_allp.sh 1

update-alternatives --set update_upgrade_allp /Programm/arm/update_upgrade_allp.sh


update-alternatives --install /usr/bin/show_env show_env /Programm/arm/show_env.sh 1

update-alternatives --set show_env /Programm/arm/show_env.sh

update-alternatives --install /usr/bin/adb_showtard adb_showtard /Programm/android-config/arm/src/adb_showtard.sh 1

update-alternatives --set adb_showtard /Programm/android-config/arm/src/adb_showtard.sh

update-alternatives --install /usr/bin/adbd_restart adbd_restart /Programm/android-config/arm/src/adbd_restart.sh 1

update-alternatives --set adbd_restart /Programm/android-config/arm/src/adbd_restart.sh

update-alternatives --install /usr/bin/y5_connect y5_connect /Programm/1024768/arm/y5_connect.sh 1

update-alternatives --set y5_connect /Programm/1024768/arm/y5_connect.sh


update-alternatives --install /usr/bin/all_ejecution all_ejecution /Programm/1024768/all_ejecution.sh 1

update-alternatives --set all_ejecution /Programm/1024768/all_ejecution.sh
