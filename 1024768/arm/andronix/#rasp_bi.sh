#in termux
#rasp_bi

##https://www.raspberrypi.com/software/operating-systems/ ##https://github.com/AllPlatform/Termux-RaspbianOS
##https://downloads.raspberrypi.org/raspios_lite_armhf/images/raspios_lite_armhf-2021-11-08/2021-10-30-raspios-bullseye-armhf-lite.zip ##http://downloads.raspberrypi.org/raspbian_lite/archive/2018-04-19-15:24/root.tar.xz
##https://downloads.raspberrypi.org/raspios_armhf/images/raspios_armhf-2021-11-08/2021-10-30-raspios-bullseye-armhf.zip
##https://downloads.raspberrypi.org/raspios_full_armhf/images/raspios_full_armhf-2021-11-08/2021-10-30-raspios-bullseye-armhf-full.zip


mkdir rasp_bi && cd rasp_bi
wget https://raw.githubusercontent.com/AllPlatform/Termux-RaspbianOS/master/install.sh

wget https://downloads.raspberrypi.org/raspios_lite_armhf/images/raspios_lite_armhf-2021-11-08/2021-10-30-raspios-bullseye-armhf-lite.zip
unzip 2021-10-30-raspios-bullseye-armhf-lite.zip #unzip ".zip" -d ""

nano install.sh
##put/replace link&&filename.archive in install.sh
chmod u+x install.sh && ./install.sh
unset LD_PRELOAD
./start-raspbian.sh

##in target os
sudo apt update -y && sudo apt upgrade -y
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install raspberrypi-ui-mods -y
sudo apt-get install lxterminal -y
sudo apt-get install tightvncserver -y
export USER=root && vncserver
sudo apt-get install firefox-esr -y
sudo raspi-config
