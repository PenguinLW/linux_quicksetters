#in target os
nano /etc/hosts #127.0.0.1  localhost
apt install htop -y
apt install curl -y
apt install git -y
apt install net-tools -y
apt install usbutils libudev-dev libusb-1.0-0-dev libusb-dev -y
apt install v4l-utils -y && sudo v4l-ctl --list-devices
apt install ffmpeg -y #ffplay /dev/video0
apt install python3-opencv -y

apt install nginx -y #nginx
##in venv
. venv/bin/activate
pip3 install python-nginx #pip3 install nginxpy
deactivate && deactivate_node

vncserver-start
vncserver -list
192.168.43.223::5901
vncserver -kill :*
vncserver-stop
