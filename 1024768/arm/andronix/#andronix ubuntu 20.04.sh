#in termux
#andronix ubuntu 20.04

##pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu20/ubuntu20.sh -O ubuntu20.sh && chmod +x ubuntu20.sh && bash ubuntu20.sh
mkdir ubuntu20-awesome/ & mkdir ubuntu20-i3/ & mkdir ubuntu20-lxde & mkdir ubuntu20-xfce & mkdir ubuntu20-lxqt & mkdir ubuntu20-openbox
pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu20/ubuntu20-awesome.sh -O ubuntu20-awesome.sh && chmod +x ubuntu20-awesome.sh && bash ubuntu20-awesome.sh
##pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu20/ubuntu20-i3.sh -O ubuntu20-i3.sh && chmod +x ubuntu20-i3.sh && bash ubuntu20-i3.sh
##pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu20/ubuntu20-openbox.sh -O ubuntu20-openbox.sh && chmod +x ubuntu20-openbox.sh && bash ubuntu20-openbox.sh
##pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu20/ubuntu20-lxde.sh -O ubuntu20-lxde.sh && chmod +x ubuntu20-lxde.sh && bash ubuntu20-lxde.sh
pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu20/ubuntu20-xfce.sh -O ubuntu20-xfce.sh && chmod +x ubuntu20-xfce.sh && bash ubuntu20-xfce.sh
pkg update -y && pkg install wget curl proot tar -y && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu20/ubuntu20-lxqt.sh -O ubuntu20-lxqt.sh && chmod +x ubuntu20-lxqt.sh && bash ubuntu20-lxqt.sh

wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Uninstall/Ubuntu20/UNI-ubuntu20.sh | bash
chmod +x UNI*.sh #./UNI*.sh

ls -al ubuntu20*