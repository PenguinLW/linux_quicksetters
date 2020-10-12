#https://www.1denwin.info/2018/01/linux-l2tpipsec-mintubuntu.html
#sudo apt-get install openvpn network-manager-openvpn-gnome
sudo apt-get install network-manager-openvpn-gnome network-manager-vpnc-gnome -y
sudo add-apt-repository ppa:nm-l2tp/network-manager-l2tp
sudo apt update
sudo apt install network-manager-l2tp network-manager-l2tp-gnome -y
sudo apt-get install strongswan-plugin-openssl -y
sudo service xl2tpd stop
sudo update-rc.d xl2tpd disable
