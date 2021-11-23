#in termux
#rasp_pi

mkdir rasp_pi && cd rasp_pi

wget https://raw.githubusercontent.com/Kovalsky95/linux_quicksetters/master/1024768/arm/rasp_pi/install.sh
##wget http://downloads.raspberrypi.org/raspbian_lite/archive/2018-04-19-15:24/root.tar.xz

nano install.sh
##choose/uncomment link&&filename.archive in install.sh
chmod u+x install.sh && ./install.sh

nano start-raspbian.sh
# ..
./start-raspbian.sh
