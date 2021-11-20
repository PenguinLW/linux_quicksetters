#in target os
#chmod u+x Programm/arm/set_env.sh && . Programm/arm/set_env.sh
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

update-alternatives --install /usr/bin/all_ejecution all_ejecution /root/Programm/1024768/all_ejecution.sh 1
update-alternatives --set all_ejecution /root/Programm/1024768/all_ejecution.sh
update-alternatives --install /usr/bin/sh_reboot sh_reboot /root/Programm/1024768/sh_reboot.sh 1
update-alternatives --set sh_reboot /root/Programm/1024768/sh_reboot.sh
update-alternatives --install /usr/bin/screen_off screen_off /root/Programm/1024768/screen_off.sh 1
update-alternatives --set screen_off /root/Programm/1024768/screen_off.sh

update-alternatives --install /usr/bin/ixion_connect ixion_connect /root/Programm/1024768/ixion_connect.sh 1
update-alternatives --set ixion_connect /root/Programm/1024768/ixion_connect.sh
update-alternatives --install /usr/bin/huawei_connect huawei_connect /root/Programm/1024768/huawei_connect.sh 1
update-alternatives --set huawei_connect /root/Programm/1024768/huawei_connect.sh
update-alternatives --install /usr/bin/y5_connect y5_connect /root/Programm/1024768/y5_connect.sh 1
update-alternatives --set y5_connect /root/Programm/1024768/y5_connect.sh
update-alternatives --install /usr/bin/xm_connect xm_connect /root/Programm/1024768/xm_connect.sh 1
update-alternatives --set xm_connect /root/Programm/1024768/xm_connect.sh

update-alternatives --install /usr/bin/ixion_show ixion_show /root/Programm/1024768/ixion_show.sh 1
update-alternatives --set ixion_show /root/Programm/1024768/ixion_show.sh
update-alternatives --install /usr/bin/huawei_show huawei_show /root/Programm/1024768/huawei_show.sh 1
update-alternatives --set huawei_show /root/Programm/1024768/huawei_show.sh
update-alternatives --install /usr/bin/y5_show y5_show /root/Programm/1024768/y5_show.sh 1
update-alternatives --set y5_show /root/Programm/1024768/y5_show.sh
update-alternatives --install /usr/bin/xm_show xm_show /root/Programm/1024768/xm_show.sh 1
update-alternatives --set xm_show /root/Programm/1024768/xm_show.sh

update-alternatives --install /usr/bin/ixion_ssh ixion_ssh /root/Programm/1024768/ixion_ssh.sh 1
update-alternatives --set ixion_ssh /root/Programm/1024768/ixion_ssh.sh
update-alternatives --install /usr/bin/hw_ssh hw_ssh /root/Programm/1024768/hw_ssh.sh 1
update-alternatives --set hw_ssh /root/Programm/1024768/hw_ssh.sh
update-alternatives --install /usr/bin/y5_ssh y5_ssh /root/Programm/1024768/y5_ssh.sh 1
update-alternatives --set y5_ssh /root/Programm/1024768/y5_ssh.sh
update-alternatives --install /usr/bin/xm_ssh xm_ssh /root/Programm/1024768/xm_ssh.sh 1
update-alternatives --set xm_ssh /root/Programm/1024768/xm_ssh.sh

update-alternatives --install /usr/bin/y5_unlock_screen y5_unlock_screen /root/Programm/1024768/y5_unlock_screen.sh 1
update-alternatives --set y5_unlock_screen /root/Programm/1024768/y5_unlock_screen.sh
update-alternatives --install /usr/bin/xm_unlock_screen xm_unlock_screen /root/Programm/1024768/xm_unlock_screen.sh 1
update-alternatives --set xm_unlock_screen /root/Programm/1024768/xm_unlock_screen.sh

chmod u+x /root/Programm/arm/*.sh
chmod u+x /root/Programm/1024768/*.sh
chmod u+x /root/Programm/1024768/*.py
chmod u+x /root/Programm/1024768/arm/*.sh
chmod u+x /root/Programm/android-config/src/*.sh
chmod u+x /root/Programm/android-config/arm/src/*.sh
