#in termux
apt update -y && apt-get update -y

apt upgrade -y && apt-get upgrade -y

termux-setup-storage

apt install android-tools -y

adb devices -l

#update-alternatives --install /usr/bin/arm_up arm_up /root/Programm/arm/arm_create/arm_up.sh 1

#update-alternatives --set arm_up /root/Programm/arm/arm_create/arm_up.sh
