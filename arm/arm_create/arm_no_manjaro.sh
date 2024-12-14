#!/bin/bash
#in termux
apt install git -y
apt install wget -y
apt install tsu -y
uname -m #unam,e -a #uname -r
ls -al storage/downloads/
mkdir storage/downloads/termux_data/

#####################################################
ls -al ../../
cd ../../
#cp -R files non-files
chown -R u0_a273:u0_a273 * & chown -R u0_a273:u0_a273 /storage/emulated/0/Download/termux_data/
chmod -R 0777 * & chmod -R 0777 /storage/emulated/0/Download/termux_data/

chown -R u0_a273:u0_a273 /storage/emulated/0/
chmod -R 0777 /storage/emulated/0/

#cd files/
#cp -R home non_home

#mv home/ /data/data/com.termux/files/home/storage/downloads/termux_data/ #cp -R files/ /data/data/com.termux/files/home/storage/downloads/termux_data/
#mv home/ /storage/emulated/0/Download/termux_data/
#ln -s /storage/emulated/0/Download/termux_data/home/
#####################################################
cd ~
pwd

ln -s /storage/emulated/0/Download/termux_data/
#####################################################
cd ~
pwd
mkdir manjaro && cd manjaro
##rm -dfr * && rm -fr * && rm -fr .* && ls -al
pkg install git wget proot pv pulseaudio tar -y
#wget https://osdn.net/projects/manjaro-arm/storage/xfce/22.06/manjaro-xfce-22.06-armv7h-rootfs.tar.gz
#proot --link2symlink tar -xvpf manjaro-xfce-22.06-armv7h-rootfs.tar.gz
##https://manjaro.org/products/download/arm
#wget https://github.com/manjaro-arm/generic-images/releases/download/23.02/Manjaro-ARM-gnome-generic-23.02.img.xz
#proot --link2symlink tar -xf Manjaro-ARM-gnome-generic-23.02.img.xz
##https://mirror.clarkson.edu/manjaro/arm-stable/mobile/aarch64/
#wget https://mirror.clarkson.edu/manjaro/arm-stable/mobile/aarch64/mobile.files.tar.gz

#wget https://raw.githubusercontent.com/krmanik/Manjaro-Linux-on-Android/master/manjaro.sh ; chmod u+x manjaro.sh ; nano manjaro.sh
##https://archlinuxarm.org/about/downloads
#wget http://os.archlinuxarm.org/os/ArchLinuxARM-rpi-aarch64-latest.tar.gz
#proot --link2symlink tar -xvpf *.gz | proot --link2symlink tar -xvpf *.xz
#proot -0 -r ~/manjaro /bin/bash






#https://github.com/wahasa/Manjaro
#mkdir manjaro
#cd manjaro
#wget https://raw.githubusercontent.com/wahasa/Manjaro/refs/heads/main/Install/manjaro.sh ; chmod u+x manjaro.sh ; ./manjaro.sh
#wget https://raw.githubusercontent.com/wahasa/Manjaro/refs/heads/main/Install/manjarodev.sh ; chmod u+x manjarodev.sh ; ./manjarodev.sh
#nano manjaro.sh
#which manjaro
#manjaro

#in target os
#pacman -S tigervnc
#vncserver :1
##pacman -Syu
##pacman -S xfce4 xfce4-goodies network-manager-applet engrampa firefox pulseaudio gst-libav dbus --noconfirm


#####################################################
#not a worked
#####################################################
#https://wiki.manjaro.org/index.php/Manjaro-ARM
#https://gitlab.manjaro.org/manjaro-arm/applications/manjaro-arm-installer
#####################################################
