#!/bin/bash


##in target os
############################################worked
#wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/DesktopEnvironment/Apt/Xfce4/de-apt-xfce4.sh --no-check-certificate && bash de-apt-xfce4.sh
wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/WindowManager/Apt/Awesome/de-apt-awesome.sh --no-check-certificate && bash de-apt-awesome.sh

apt-get install tightvncserver -y #apt-get remove tightvncserver -y
#nano ~/.vnc/xstartup
#nano ~/.vnc/localhost:1.log
#echo -e '#!/bin/sh\nxrdb $HOME/.Xresources\nstartawesome &' > ~/.vnc/xstartup && chmod u+x ~/.vnc/xstartup
#source ~/.vnc/xstartup

#export USER=root #$whoami
#export HOME=/home/ #$whoami
#env | grep USER
#env | grep HOME
USER=_p vncserver :1 -geometry 1920x1080 -depth 24 #USER=_p vncserver :1 -geometry 1280x720 -depth 24
USER=_p vncserver -kill :1

############################################not worked
#apt-get install x11vnc -y
#x11vnc -storepasswd
#x11vnc -display :0 -rfbauth ~/.vnc/passwd -forever -loop -noxdamage -shared
