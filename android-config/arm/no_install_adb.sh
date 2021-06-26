#in target os
apt update -y && apt-get update -y
apt upgrade -y && apt-get upgrade -y
apt install wget -y && wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip --no-check-certificate
apt install git -y
git clone -o linux_quicksetters https://github.com/Kovalsky95/linux_quicksetters.git

#mkdir Programm
mv linux_quicksetters/* Programm/
rm -d -r -f linux_quicksetters
ls -al
apt install unzip -y
pwd
unzip "/root/sdk-tools-linux-4333796.zip" -d "/root/Programm/android-config/"
rm -f -r sdk-tools-linux-4333796.zip
mkdir Programm/android-config/tools/tools/
mv Programm/android-config/tools/* Programm/android-config/tools/tools/