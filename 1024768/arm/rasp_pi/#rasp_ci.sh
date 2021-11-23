#in termux
#rasp_ci

mkdir rasp_gi && cd rasp_ci

wget https://raw.githubusercontent.com/Kovalsky95/linux_quicksetters/master/1024768/arm/rasp_pi/install.sh
##wget http://downloads.raspberrypi.org/raspbian_full/archive/2020-02-14-13:51/root.tar.xz ##http://downloads.raspberrypi.org/raspbian_full/root.tar.xz

nano install.sh
##choose/uncomment link&&filename.archive in install.sh
chmod u+x install.sh && ./install.sh

nano start-raspbian.sh
# ..
./start-raspbian.sh
