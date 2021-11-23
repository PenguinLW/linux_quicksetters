#in termux
#rasp_bi

mkdir rasp_bi && cd rasp_bi

wget https://raw.githubusercontent.com/Kovalsky95/linux_quicksetters/master/1024768/arm/rasp_pi/install.sh
##wget http://downloads.raspberrypi.org/raspios_lite_armhf/archive/2021-11-08-07:44/root.tar.xz ##wget http://downloads.raspberrypi.org/raspios_lite_armhf/root.tar.xz

nano install.sh
##choose/uncomment link&&filename.archive in install.sh
chmod u+x install.sh && ./install.sh

nano start-raspbian.sh
# ..
./start-raspbian.sh
