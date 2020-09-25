sudo apt-get update
sudo apt install snapd
sudo snap install snap-store
sudo snap install snapcraft --classic
hash -r
#sudo apt install software-properties-common

sudo add-apt-repository ppa:morphis/anbox-support
sudo apt-get update
sudo apt install linux-headers-generic anbox-modules-dkms
sudo modprobe ashmem_linux
sudo modprobe binder_linux
ls -1 /dev/{ashmem,binder}
sudo apt-get update
sudo apt full-upgrade
sudo apt install android-tools-adb android-tools-fastboot

sudo snap install --devmode --beta anbox
sudo snap info anbox
