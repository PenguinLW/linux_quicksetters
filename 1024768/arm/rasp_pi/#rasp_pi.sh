#in termux
#rasp_pi

#mkdir rasp_pi && cd rasp_pi

git clone https://github.com/AllPlatform/Termux-RaspbianOS
#wget https://raw.githubusercontent.com/AllPlatform/Termux-RaspbianOS/master/install.sh
##wget http://downloads.raspberrypi.org/raspbian_lite/archive/2018-04-19-15:24/root.tar.xz

##put/replace link&&filename.archive in install.sh
chmod u+x install.sh && ./install.sh
unset LD_PRELOAD

nano start-raspbian.sh
# ..
# command+=" --kill-on-exit"
# ..
# command+=" -b /sys"
# command+=" -b /data"
# ..
# command+=" -b /proc/self/fd/2:/dev/stderr"
# command+=" -b /proc/self/fd/1:/dev/stdout"
# command+=" -b /proc/self/fd/0:/dev/stdin"
# command+=" -b /dev/urandom:/dev/random"
# command+=" -b /proc/self/fd:/dev/fd"
# command+=" -b /data/data/com.termux/files/home/rasp_bi/raspbian-fs/proc/fakethings/stat:/proc/stat"
# command+=" -b /data/data/com.termux/files/home/rasp_bi/raspbian-fs/proc/fakethings/vmstat:/proc/vmstat"
# command+=" -b /data/data/com.termux/files/home/rasp_bi/raspbian-fs/proc/fakethings/version:/proc/version"
# ..
# command+=" -b /sdcard"
# ..
# command+=" MOZ_FAKE_NO_SANDBOX=1"
# ..
./start-raspbian.sh
