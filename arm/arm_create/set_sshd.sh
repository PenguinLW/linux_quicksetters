#in termux
apt install termux-services -y
apt install openssh -y
pkill sshd
passwd
sshd #. /Programm/1024768/arm/sshd.sh
#ssh -p 8022 192.168.43.62 #ssh -p 8022 192.168.0.17
