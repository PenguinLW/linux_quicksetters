
##https://www.raspberrypi.com/software/operating-systems/ ##https://github.com/AllPlatform/Termux-RaspbianOS
##http://downloads.raspberrypi.org/raspbian_lite/archive/2018-04-19-15:24/root.tar.xz ##
##http://downloads.raspberrypi.org/raspbian_full/root.tar.xz ##http://downloads.raspberrypi.org/raspbian_full/archive/2020-02-14-13:51/root.tar.xz
##http://downloads.raspberrypi.org/raspios_armhf/archive/2021-11-08-07:41/root.tar.xz ##https://downloads.raspberrypi.org/raspios_armhf/images/raspios_armhf-2021-11-08/2021-10-30-raspios-bullseye-armhf.zip

##http://downloads.raspberrypi.org/raspios_lite_armhf/archive/2021-11-08-07:44/root.tar.xz ##https://downloads.raspberrypi.org/raspios_lite_armhf/images/raspios_lite_armhf-2021-11-08/2021-10-30-raspios-bullseye-armhf-lite.zip
##http://downloads.raspberrypi.org/raspios_full_armhf/archive/2021-11-08-07:46/root.tar.xz ##https://downloads.raspberrypi.org/raspios_full_armhf/images/raspios_full_armhf-2021-11-08/2021-10-30-raspios-bullseye-armhf-full.zip

##in target os
sudo apt update -y && sudo apt upgrade -y
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install raspberrypi-ui-mods -y
sudo apt-get install lxterminal -y
sudo apt-get install tightvncserver -y
export USER=root && vncserver
sudo apt-get install firefox-esr -y
sudo raspi-config
