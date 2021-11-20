#in target os
#chmod u+x Programm/set_env.sh && . Programm/set_env.sh
sudo update-alternatives --install /usr/bin/set_env set_env /home/penguinl/Programm/set_env.sh 1
sudo update-alternatives --set set_env /home/penguinl/Programm/set_env.sh
sudo update-alternatives --install /usr/bin/get_all get_all /home/penguinl/Programm/arm/get_all.sh 1
sudo update-alternatives --set get_all /home/penguinl/Programm/arm/get_all.sh
sudo update-alternatives --install /usr/bin/update_upgrade_allp update_upgrade_allp /home/penguinl/Programm/update_upgrade_allp.sh 1
sudo update-alternatives --set update_upgrade_allp /home/penguinl/Programm/update_upgrade_allp.sh
sudo update-alternatives --install /usr/bin/show_env show_env /home/penguinl/Programm/show_env.sh 1
sudo update-alternatives --set show_env /home/penguinl/Programm/show_env.sh

sudo update-alternatives --install /usr/bin/adb_showtard adb_showtard /home/penguinl/Programm/android-config/arm/src/adb_showtard.sh 1
sudo update-alternatives --set adb_showtard /home/penguinl/Programm/android-config/arm/src/adb_showtard.sh
sudo update-alternatives --install /usr/bin/adbd_restart adbd_restart /home/penguinl/Programm/android-config/src/adbd_restart.sh 1
sudo update-alternatives --set adbd_restart /home/penguinl/Programm/android-config/src/adbd_restart.sh

sudo update-alternatives --install /usr/bin/all_ejecution all_ejecution /home/penguinl/Programm/1024768/all_ejecution.sh 1
sudo update-alternatives --set all_ejecution /home/penguinl/Programm/1024768/all_ejecution.sh
sudo update-alternatives --install /usr/bin/sh_reboot sh_reboot /home/penguinl/Programm/1024768/sh_reboot.sh 1
sudo update-alternatives --set sh_reboot /home/penguinl/Programm/1024768/sh_reboot.sh
sudo update-alternatives --install /usr/bin/screen_off screen_off /home/penguinl/Programm/1024768/screen_off.sh 1
sudo update-alternatives --set screen_off /home/penguinl/Programm/1024768/screen_off.sh

sudo update-alternatives --install /usr/bin/ixion_connect ixion_connect /home/penguinl/Programm/1024768/ixion_connect.sh 1
sudo update-alternatives --set ixion_connect /home/penguinl/Programm/1024768/ixion_connect.sh
sudo update-alternatives --install /usr/bin/huawei_connect huawei_connect /home/penguinl/Programm/1024768/huawei_connect.sh 1
sudo update-alternatives --set huawei_connect /home/penguinl/Programm/1024768/huawei_connect.sh
sudo update-alternatives --install /usr/bin/y5_connect y5_connect /home/penguinl/Programm/1024768/y5_connect.sh 1
sudo update-alternatives --set y5_connect /home/penguinl/Programm/1024768/y5_connect.sh
sudo update-alternatives --install /usr/bin/xm_connect xm_connect /home/penguinl/Programm/1024768/xm_connect.sh 1
sudo update-alternatives --set xm_connect /home/penguinl/Programm/1024768/xm_connect.sh

sudo update-alternatives --install /usr/bin/ixion_show ixion_show /home/penguinl/Programm/1024768/ixion_show.sh 1
sudo update-alternatives --set ixion_show /home/penguinl/Programm/1024768/ixion_show.sh
sudo update-alternatives --install /usr/bin/huawei_show huawei_show /home/penguinl/Programm/1024768/huawei_show.sh 1
sudo update-alternatives --set huawei_show /home/penguinl/Programm/1024768/huawei_show.sh
sudo update-alternatives --install /usr/bin/y5_show y5_show /home/penguinl/Programm/1024768/y5_show.sh 1
sudo update-alternatives --set y5_show /home/penguinl/Programm/1024768/y5_show.sh
sudo update-alternatives --install /usr/bin/xm_show xm_show /home/penguinl/Programm/1024768/xm_show.sh 1
sudo update-alternatives --set xm_show /home/penguinl/Programm/1024768/xm_show.sh

sudo update-alternatives --install /usr/bin/ixion_ssh ixion_ssh /home/penguinl/Programm/1024768/ixion_ssh.sh 1
sudo update-alternatives --set ixion_ssh /home/penguinl/Programm/1024768/ixion_ssh.sh
sudo update-alternatives --install /usr/bin/hw_ssh hw_ssh /home/penguinl/Programm/1024768/hw_ssh.sh 1
sudo update-alternatives --set hw_ssh /home/penguinl/Programm/1024768/hw_ssh.sh
sudo update-alternatives --install /usr/bin/y5_ssh y5_ssh /home/penguinl/Programm/1024768/y5_ssh.sh 1
sudo update-alternatives --set y5_ssh /home/penguinl/Programm/1024768/y5_ssh.sh
sudo update-alternatives --install /usr/bin/xm_ssh xm_ssh /home/penguinl/Programm/1024768/xm_ssh.sh 1
sudo update-alternatives --set xm_ssh /home/penguinl/Programm/1024768/xm_ssh.sh

sudo update-alternatives --install /usr/bin/y5_unlock_screen y5_unlock_screen /home/penguinl/Programm/1024768/y5_unlock_screen.sh 1
sudo update-alternatives --set y5_unlock_screen /home/penguinl/Programm/1024768/y5_unlock_screen.sh
sudo update-alternatives --install /usr/bin/xm_unlock_screen xm_unlock_screen /home/penguinl/Programm/1024768/xm_unlock_screen.sh 1
sudo update-alternatives --set xm_unlock_screen /home/penguinl/Programm/1024768/xm_unlock_screen.sh

chmod u+x Programm/*.sh
chmod u+x Programm/arm/*.sh
chmod u+x Programm/1024768/*.sh
chmod u+x Programm/1024768/*.py
chmod u+x Programm/android-config/src/*.sh
chmod u+x Programm/android-config/arm/src/*.sh
