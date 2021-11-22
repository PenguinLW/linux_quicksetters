
##https://www.raspberrypi.com/software/operating-systems/ ##https://github.com/AllPlatform/Termux-RaspbianOS
##http://downloads.raspberrypi.org/raspbian_lite/archive/2018-04-19-15:24/root.tar.xz ##
##http://downloads.raspberrypi.org/raspbian_full/root.tar.xz ##http://downloads.raspberrypi.org/raspbian_full/archive/2020-02-14-13:51/root.tar.xz
##http://downloads.raspberrypi.org/raspios_armhf/archive/2021-11-08-07:41/root.tar.xz ##https://downloads.raspberrypi.org/raspios_armhf/images/raspios_armhf-2021-11-08/2021-10-30-raspios-bullseye-armhf.zip

##http://downloads.raspberrypi.org/raspios_lite_armhf/archive/2021-11-08-07:44/root.tar.xz ##https://downloads.raspberrypi.org/raspios_lite_armhf/images/raspios_lite_armhf-2021-11-08/2021-10-30-raspios-bullseye-armhf-lite.zip
##http://downloads.raspberrypi.org/raspios_full_armhf/archive/2021-11-08-07:46/root.tar.xz ##https://downloads.raspberrypi.org/raspios_full_armhf/images/raspios_full_armhf-2021-11-08/2021-10-30-raspios-bullseye-armhf-full.zip

##in target os
sudo apt update -y && sudo apt upgrade -y
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install raspberrypi-ui-mods -y --fix-missing
sudo apt-get install lxterminal -y
sudo apt-get install tightvncserver -y
sudo apt-get install firefox-esr -y #sudo apt-get remove firefox-esr -y
export USER=root && vncserver ##export USER=root && vncserver -kill :1 ##Xvnc
sudo raspi-config
ln -s /sdcard/ Desktop/

rm -fr vnc_restart.sh && echo "# chmod u+x vnc_restart.sh && ./vnc_restart.sh #bash vnc_restart.sh
rm -fr /tmp/.X*
export USER=root && vncserver -kill :1
export USER=root && vncserver" >> vnc_restart.sh


##https://qastack.ru/raspberrypi/9395/i-accidently-deleted-my-taskbar-how-do-i-get-it-back
#ls -al .config/lxpanel/LXDE-pi/panels/
#ls -al ../usr/share/lxpanel/
#cd .config/lxpanel/LXDE-pi/panels/
#curl -O https://gist.githubusercontent.com/ColinNg/9ed317308a9a0f75824f828e75c8469c/raw/a72176416201a0e6ebbce30608e6f7eceb379e0e/panel
##sudo reboot


##https://www.fossmint.com/web-browsers-for-raspberry-pi/
#sudo apt-get update
#sudo apt-get dist-upgrade
#sudo apt-get install rpi-chromium-mods -y
#sudo apt-get install python-sense-emu python3-sense-emu -y
