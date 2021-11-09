#in target os
apt install htop -y
apt install curl -y
apt install git -y
apt install net-tools -y
apt install usbutils libudev-dev libusb-1.0-0-dev libusb-dev -y
apt install v4l-utils -y && sudo v4l-ctl --list-devices

vncserver-start
vncserver -list
192.168.43.223::5901
vncserver -kill :*
vncserver-stop
