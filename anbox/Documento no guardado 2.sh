sudo snap info anbox
sudo snap remove anbox
sudo apt remove -y android-tools-adb android-tools-fastboot

sudo apt remove -y linux-headers-generic anbox-modules-dkms

sudo apt remove -y software-properties-common

sudo snap remove snapcraft
sudo snap remove snap-store
sudo apt remove -y snapd

sudo rm -d /dev/{ashmem,binder}
hash -r
sudo apt-get update
sudo apt-get -y upgrade
sudo apt full-upgrade
