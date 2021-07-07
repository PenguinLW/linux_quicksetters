sudo dpkg --add-architecture i386
sudo add-apt-repository ppa:kivy-team/kivy
sudo add-apt-repository ppa:kivy-team/kivy-daily

sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt update -y && sudo apt upgrade -y

sudo apt-get install python-kivy -y
sudo apt-get install python3-kivy -y
sudo apt-get install kivy-examples -y
sudo find / -iname "kivy-examples"

#/usr/share/kivy-examples #/usr/share/doc/kivy-examples #find: «/run/user/1000/doc»: Permiso denegado #find: «/run/user/1000/gvfs»: Permiso denegado
#print(kivy.__version__); #"1.9.2-dev0"


#sudo apt-get install -y build-essential ccache git zlib1g-dev python2.7 python2.7-dev libncurses5:i386 libstdc++6:i386 zlib1g:i386 openjdk-7-jdk unzip
#sudo apt-get install -y build-essential ccache git zlib1g-dev python3 python3-dev libncurses5:i386 libstdc++6:i386 zlib1g:i386 openjdk-7-jdk unzip

sudo apt install build-essential autoconf libtool -y
sudo apt-get install automake -y
sudo apt-get install zlib1g-dev -y

#sudo apt-get install git
#sudo apt-get install python-pip
#sudo apt-get install python3-pip

wget https://github.com/kivy/buildozer/archive/refs/tags/1.2.0.tar.gz
tar -xvzf /home/penguinl/Documentos/PycharmProjects/linux_quicksetters/1.2.0.tar.gz && mv buildozer-1.2.0 /home/penguinl/ && rm /home/penguinl/Documentos/PycharmProjects/linux_quicksetters/1.2.0.tar.gz
cd /home/penguinl/buildozer-1.2.0/
python setup.py install
#sudo python setup.py install
#sudo python3 setup.py install