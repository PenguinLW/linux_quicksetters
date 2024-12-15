#!/bin/bash

##in termux

#apt install pacman -y
#pacman-key --init

##pacman -Sy --noconfirm wget && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/DesktopEnvironment/Pacman/de-pac.sh --no-check-certificate && bash de-pac.sh
#wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/DesktopEnvironment/Apt/Xfce4/de-apt-xfce4.sh --no-check-certificate && bash de-apt-xfce4.sh

#out for sound
pkg install wget && wget https://andronixos.sfo2.cdn.digitaloceanspaces.com/OS-Files/setup-audio.sh && chmod +x setup-audio.sh && ./setup-audio.sh

##+lxde
pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Manjaro/manjaro-lxde.sh -O manjaro-lxde.sh && chmod +x manjaro-lxde.sh && bash manjaro-lxde.sh

##xfce
pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Manjaro/manjaro-xfce.sh -O manjaro-xfce.sh && chmod +x manjaro-xfce.sh && bash manjaro-xfce.sh

##lxqt
pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Manjaro/manjaro-lxqt.sh -O manjaro-lxqt.sh && chmod +x manjaro-lxqt.sh && bash manjaro-lxqt.sh



##+de awesome
pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Manjaro/manjaro-awesome.sh -O manjaro-awesome.sh && chmod +x manjaro-awesome.sh && bash manjaro-awesome.sh

##de openbox
pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Manjaro/manjaro-openbox.sh -O manjaro-openbox.sh && chmod +x manjaro-openbox.sh && bash manjaro-openbox.sh

#de i3
pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Manjaro/manjaro-i3.sh -O manjaro-i3.sh && chmod +x manjaro-i3.sh && bash manjaro-i3.sh
