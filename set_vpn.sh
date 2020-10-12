#https://www.1denwin.info/2018/01/linux-l2tpipsec-mintubuntu.html
#sudo apt-get install openvpn network-manager-openvpn-gnome
sudo apt-get install network-manager-openvpn-gnome network-manager-vpnc-gnome -y
sudo add-apt-repository ppa:nm-l2tp/network-manager-l2tp

sudo apt-get update && sudo apt-get upgrade
sudo apt update && sudo apt upgrade -y

#https://techlist.top/upgrade-openssl-version-1-1-0-ubuntu-server/
#https://linuxmint.com.ru/viewtopic.php?t=647
