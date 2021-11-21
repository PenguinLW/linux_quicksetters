#in termux
#rasp_gi

mkdir rasp_gi && cd rasp_gi
wget https://raw.githubusercontent.com/AllPlatform/Termux-RaspbianOS/master/install.sh

##wget http://downloads.raspberrypi.org/raspios_full_armhf/archive/2021-11-08-07:46/root.tar.xz

nano install.sh
##put/replace link&&filename.archive in install.sh
chmod u+x install.sh && ./install.sh
unset LD_PRELOAD
./start-raspbian.sh
