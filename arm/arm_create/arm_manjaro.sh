#!/bin/bash
#in termux
apt install git -y
apt install wget -y
apt install tsu -y

ls -al storage/downloads/
mkdir storage/downloads/termux_data/

#####################################################
ls -al ../../
cd ../../
cp -R files non-files
chown -R u0_a273:u0_a273 * & chown -R u0_a273:u0_a273 /storage/emulated/0/Download/termux_data/
chmod -R 0777 * & chmod -R 0777 /storage/emulated/0/Download/termux_data/

chown -R u0_a273:u0_a273 /storage/emulated/0/
chmod -R 0777 /storage/emulated/0/

cd files/
cp -R home non_home

#mv home/ /data/data/com.termux/files/home/storage/downloads/termux_data/ #cp -R files/ /data/data/com.termux/files/home/storage/downloads/termux_data/
mv home/ /storage/emulated/0/Download/termux_data/
ln -s /storage/emulated/0/Download/termux_data/home/
#####################################################
cd ~
pwd

ln -s /storage/emulated/0/Download/termux_data/
#####################################################
cd ~
pwd

#https://github.com/wahasa/Manjaro
mkdir manjaro
cd manjaro
wget https://raw.githubusercontent.com/wahasa/Manjaro/refs/heads/main/Install/manjaro.sh ; chmod u+x manjaro.sh ; ./manjaro.sh
#wget https://raw.githubusercontent.com/wahasa/Manjaro/refs/heads/main/Install/manjarodev.sh ; chmod u+x manjarodev.sh ; ./manjarodev.sh
nano manjaro.sh
which manjaro
manjaro

#in target os
pacman -Syu
pacman -S xfce4 xfce4-goodies network-manager-applet engrampa firefox pulseaudio gst-libav dbus --noconfirm


#####################################################
#not a worked
#####################################################
#https://wiki.manjaro.org/index.php/Manjaro-ARM
#https://gitlab.manjaro.org/manjaro-arm/applications/manjaro-arm-installer
#####################################################
