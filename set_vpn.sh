#https://www.1denwin.info/2018/01/linux-l2tpipsec-mintubuntu.html
#sudo apt-get install openvpn network-manager-openvpn-gnome
sudo add-apt-repository ppa:nm-l2tp/network-manager-l2tp
sudo apt update
sudo apt install network-manager-l2tp network-manager-l2tp-gnome -y
sudo apt-get install strongswan-plugin-openssl -y
