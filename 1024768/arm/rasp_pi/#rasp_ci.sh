#in termux
#rasp_ci

mkdir rasp_gi && cd rasp_ci
wget https://raw.githubusercontent.com/AllPlatform/Termux-RaspbianOS/master/install.sh

##wget http://downloads.raspberrypi.org/raspbian_full/archive/2020-02-14-13:51/root.tar.xz ##http://downloads.raspberrypi.org/raspbian_full/root.tar.xz

nano install.sh
##put/replace link&&filename.archive in install.sh
chmod u+x install.sh && ./install.sh
unset LD_PRELOAD

#wget https://raw.githubusercontent.com/Kovalsky95/linux_quicksetters/master/1024768/arm/rasp_pi/start-raspbian.sh
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
# command+=" -b /data/data/com.termux/files/home/rasp_ci/raspbian-fs/proc/fakethings/stat:/proc/stat"
# command+=" -b /data/data/com.termux/files/home/rasp_ci/raspbian-fs/proc/fakethings/vmstat:/proc/vmstat"
# command+=" -b /data/data/com.termux/files/home/rasp_ci/raspbian-fs/proc/fakethings/version:/proc/version"
# ..
# command+=" -b /sdcard"
# ..
# command+=" MOZ_FAKE_NO_SANDBOX=1"
# ..
./start-raspbian.sh
