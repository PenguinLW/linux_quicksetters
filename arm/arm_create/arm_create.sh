#in termux
apt install git -y
apt install wget -y

wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/SSH/Apt/ssh-apt.sh && bash ssh-apt.sh

apt install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh && bash ubuntu.sh



#update-alternatives --install /usr/bin/arm_up arm_up /root/Programm/arm/arm_create/arm_up.sh 1

#update-alternatives --set arm_up /root/Programm/arm/arm_create/arm_up.sh
./start-ubuntu.sh

##in target os
cd ~
mv .* ../home/
cd ..
mv root/ _root
ln -s home/ root
cd ~
apt update -y && apt-get update -y
apt upgrade -y && apt-get upgrade -y
apt-get install nano -y
