#in target os
nano /etc/hosts #127.0.0.1  localhost
apt install htop -y
apt install curl -y
apt install git -y
apt install net-tools proot neofetch sl -y
apt install cmake -y
apt install libpq-dev -y #apt install libgnutls28-dev -y

#setupcon

vncserver-start
vncserver -list
192.168.43.223::5901
vncserver -kill :*
vncserver-stop


rm -fr vnc_restart.sh && echo "# chmod +x vnc_restart.sh && ./vnc_restart.sh #bash vnc_restart.sh
vncserver-stop
vncserver -kill :*
vncserver-start
vncserver -list" >> vnc_restart.sh
