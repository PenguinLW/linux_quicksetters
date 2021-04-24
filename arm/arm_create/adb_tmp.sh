#in termux
apt update -y && apt-get update -y

apt upgrade -y && apt-get upgrade -y

termux-setup-storage

apt install android-tools -y

adb devices -l
