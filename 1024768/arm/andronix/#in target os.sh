#in target os
apt install htop -y
apt install curl -y
apt install git -y
apt install net-tools -y

vncserver-start
vncserver -list
192.168.43.223::5901
vncserver -kill :*
vncserver-stop