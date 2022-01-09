#!/data/data/com.termux/files/usr/bin/bash
folder=raspbian-fs
if [ -d "$folder" ]; then
	first=1
	echo "skipping downloading"
fi
tarball="root.tar.xz"
if [ "$first" != 1 ];then
	if [ ! -f $tarball ]; then
		echo -e "\e[1;33m Check Architecture On Your Device \e[0m"
		case `dpkg --print-architecture` in
		arm)
			archurl="armhf" ;;
		*)
			echo -e "\e[1;31m You Should Use Termux arm For aarch64 \e[0m"; exit 1 ;;
		esac
		wget "http://downloads.raspberrypi.org/raspbian_lite/archive/2018-04-19-15:24/root.tar.xz" #p
		#wget "http://downloads.raspberrypi.org/raspios_lite_armhf/archive/2021-11-08-07:44/root.tar.xz" #"http://downloads.raspberrypi.org/raspios_lite_armhf/root.tar.xz" #b
		#wget "http://downloads.raspberrypi.org/raspios_armhf/archive/2021-11-08-07:41/root.tar.xz" #l
		#wget "http://downloads.raspberrypi.org/raspios_full_armhf/archive/2021-11-08-07:46/root.tar.xz" #g
		#wget "http://downloads.raspberrypi.org/raspbian_full/archive/2020-02-14-13:51/root.tar.xz"#c
	fi
	cur=`pwd`
	mkdir -p "$folder"
	cd "$folder"
	echo "Decompressing Rootfs, please be patient."
	proot --link2symlink tar -xJf ${cur}/${tarball}||:
	cd "$cur"
fi
cur=`pwd`
bin=start-raspbian.sh
echo "writing launch script"
cat > $bin <<- EOM
#!/bin/bash
cd \$(dirname \$0)
## unset LD_PRELOAD in case termux-exec is installed
unset LD_PRELOAD
command="proot"
command+=" --kill-on-exit"
command+=" --link2symlink"
command+=" -0"
command+=" -r $folder"
command+=" -b /dev"
command+=" -b /proc"
command+=" -b /sys"
command+=" -b /data"
command+=" -b raspbian-fs/root:/dev/shm"
command+=" -b /proc/self/fd/2:/dev/stderr"
command+=" -b /proc/self/fd/1:/dev/stdout"
command+=" -b /proc/self/fd/0:/dev/stdin"
command+=" -b /dev/urandom:/dev/random"
command+=" -b /proc/self/fd:/dev/fd"
command+=" -b $cur/$folder/proc/fakethings/stat:/proc/stat"
command+=" -b $cur/$folder/proc/fakethings/vmstat:/proc/vmstat"
command+=" -b $cur/$folder/proc/fakethings/version:/proc/version"
## uncomment the following line to have access to the home directory of termux
#command+=" -b /data/data/com.termux/files/home:/root"
## uncomment the following line to mount /sdcard directly to / 
command+=" -b /sdcard"
command+=" -b /storage"
command+=" -b /data/data/com.termux/files/home/desktop/"
command+=" -w /root"
command+=" /usr/bin/env -i"
command+=" MOZ_FAKE_NO_SANDBOX=1"
command+=" HOME=/root"
command+=" PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games"
command+=" TERM=\$TERM"
command+=" LANG=C.UTF-8"
command+=" /bin/bash --login"
com="\$@"
if [ -z "\$1" ];then
    exec \$command
else
    \$command -c "\$com"
fi
EOM

echo "fixing shebang of $bin"
termux-fix-shebang $bin
chmod u+x $bin
#rm $tarball
echo "You can now launch Debian with the ./${bin} script"
#echo "Script BY EXALAB Github And AkiraYuki"
echo "Authors-orig: https://raw.githubusercontent.com/AllPlatform/Termux-RaspbianOS/master/install.sh"
