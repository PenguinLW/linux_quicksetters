#in target os
#chmod +x Programm/arm/set_env.sh && . Programm/arm/set_env.sh
update-alternatives --install /usr/bin/set_env set_env /root/Programm/arm/set_env.sh 1
update-alternatives --set set_env /root/Programm/arm/set_env.sh

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

update-alternatives --install /usr/bin/y5_connect y5_connect /root/Programm/1024768/y5_connect.sh 1
update-alternatives --set y5_connect /root/Programm/1024768/y5_connect.sh

update-alternatives --install /usr/bin/ixion_connect ixion_connect /root/Programm/1024768/ixion_connect.sh 1
update-alternatives --set ixion_connect /root/Programm/1024768/ixion_connect.sh

update-alternatives --install /usr/bin/ixion_ssh ixion_ssh /root/Programm/1024768/ixion_ssh.sh 1
update-alternatives --set ixion_ssh /root/Programm/1024768/ixion_ssh.sh

update-alternatives --install /usr/bin/all_ejecution all_ejecution /root/Programm/1024768/all_ejecution.sh 1
update-alternatives --set all_ejecution /root/Programm/1024768/all_ejecution.sh

update-alternatives --install /usr/bin/y5_ssh y5_ssh /root/Programm/1024768/y5_ssh.sh 1
update-alternatives --set y5_ssh /root/Programm/1024768/y5_ssh.sh

update-alternatives --install /usr/bin/hw_ssh hw_ssh /root/Programm/1024768/hw_ssh.sh 1
update-alternatives --set hw_ssh /root/Programm/1024768/hw_ssh.sh

update-alternatives --install /usr/bin/y5_unlock_screen y5_unlock_screen /root/Programm/1024768/y5_unlock_screen.sh 1
update-alternatives --set y5_unlock_screen /root/Programm/1024768/y5_unlock_screen.sh

update-alternatives --install /usr/bin/huawei_connect huawei_connect /root/Programm/1024768/huawei_connect.sh 1
update-alternatives --set huawei_connect /root/Programm/1024768/huawei_connect.sh

chmod +x /root/Programm/arm/*.sh
chmod +x /root/Programm/1024768/*.sh
chmod +x /root/Programm/1024768/*.py
chmod +x /root/Programm/1024768/arm/*.sh
chmod +x /root/Programm/android-config/src/*.sh
chmod +x /root/Programm/android-config/arm/src/*.sh
