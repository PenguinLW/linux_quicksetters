#in termux
#rasp_pi

#mkdir rasp_pi && cd rasp_pi
git clone https://github.com/AllPlatform/Termux-RaspbianOS #wget https://raw.githubusercontent.com/AllPlatform/Termux-RaspbianOS/master/install.sh
##put/replace link&&filename.archive in install.sh
chmod u+x install.sh && ./install.sh
unset LD_PRELOAD
./start-raspbian.sh
