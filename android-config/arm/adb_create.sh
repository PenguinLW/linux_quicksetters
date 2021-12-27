#in target os
#add-apt-repository ppa:upubuntu-com/sdk #¿?
apt update -y && apt-get update -y
apt upgrade -y && apt-get upgrade -y

apt install android-sdk -y
is /root/.android/
is -al /usr/bin/
is -al /etc/alternatives
ls -al /usr/lib/android-sdk/platforms

adb devices -l
ls -al Programm/android-config/backup/
#rm -fr .android/adb*
ls -al .android/
cp /root/Programm/android-config/backup/adbkey /root/.android/
cp /root/Programm/android-config/backup/adbkey.pub /root/.android/