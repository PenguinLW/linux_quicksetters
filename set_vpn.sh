#https://www.1denwin.info/2018/01/linux-l2tpipsec-mintubuntu.html
#sudo apt-get install openvpn network-manager-openvpn-gnome
sudo apt-get install network-manager-openvpn-gnome network-manager-vpnc-gnome -y
sudo add-apt-repository ppa:nm-l2tp/network-manager-l2tp

sudo apt-get update && sudo apt-get upgrade
sudo apt update && sudo apt upgrade -y

sudo apt install network-manager-l2tp network-manager-l2tp-gnome -y
sudo apt-get install strongswan-plugin-openssl -y
sudo service xl2tpd stop
sudo update-rc.d xl2tpd disable

#https://linuxmint.com.ru/viewtopic.php?t=647

sudo apt-get install build-essential libssl-dev -y
cd /usr/local/src
sudo wget https://www.openssl.org/source/latest.tar.gz -O openssl-1.1.0.tar.gz
sudo tar -zxvf openssl-1.1.0.tar.gz
cd openssl-1.1.1h
sudo ./config --prefix=/usr/local/ssl --openssldir=/usr/local/ssl -Wl,-rpath,/usr/local/ssl/lib
sudo make install
#sudo apt install intltool libtool network-manager-dev libnm-util-dev libnm-glib-dev libnm-glib-vpn-dev libnm-gtk-dev libnm-dev libnma-dev ppp-dev strongswan libdbus-glib-1-dev libsecret-1-dev libgtk-3-dev libglib2.0-dev xl2tpd git libssl-dev libnss3-dev -y
#git clone https://github.com/nm-l2tp/network-manager-l2tp.git
#cd network-manager-l2tp
#autoreconf -fi
#intltoolize
#./configure --disable-static --prefix=/usr --
#
#
#
#
