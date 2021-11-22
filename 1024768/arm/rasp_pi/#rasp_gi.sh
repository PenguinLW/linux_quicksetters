#in termux
#rasp_gi

mkdir rasp_gi && cd rasp_gi
wget https://raw.githubusercontent.com/AllPlatform/Termux-RaspbianOS/master/install.sh

##wget http://downloads.raspberrypi.org/raspios_full_armhf/archive/2021-11-08-07:46/root.tar.xz

nano install.sh
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
# command+=" -b /data/data/com.termux/files/home/rasp_gi/raspbian-fs/proc/fakethings/stat:/proc/stat"
# command+=" -b /data/data/com.termux/files/home/rasp_gi/raspbian-fs/proc/fakethings/vmstat:/proc/vmstat"
# command+=" -b /data/data/com.termux/files/home/rasp_gi/raspbian-fs/proc/fakethings/version:/proc/version"
# ..
# command+=" -b /sdcard"
# ..
# command+=" MOZ_FAKE_NO_SANDBOX=1"
# ..
./start-raspbian.sh
