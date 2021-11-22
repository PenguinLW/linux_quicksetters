#in termux
#rasp_ci

mkdir rasp_gi && cd rasp_ci
wget https://raw.githubusercontent.com/AllPlatform/Termux-RaspbianOS/master/install.sh

##wget http://downloads.raspberrypi.org/raspbian_full/archive/2020-02-14-13:51/root.tar.xz ##http://downloads.raspberrypi.org/raspbian_full/root.tar.xz

nano install.sh
##put/replace link&&filename.archive in install.sh
chmod u+x install.sh && ./install.sh
unset LD_PRELOAD
./start-raspbian.sh
