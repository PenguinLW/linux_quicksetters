#in termux
#rasp_gi

mkdir rasp_gi && cd rasp_gi

wget https://raw.githubusercontent.com/Kovalsky95/linux_quicksetters/master/1024768/arm/rasp_pi/install.sh
##wget http://downloads.raspberrypi.org/raspios_full_armhf/archive/2021-11-08-07:46/root.tar.xz

nano install.sh
##choose/uncomment link&&filename.archive in install.sh
chmod u+x install.sh && ./install.sh

nano start-raspbian.sh
# ..
./start-raspbian.sh
