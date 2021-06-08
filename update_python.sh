#https://medium.com/@rajputankit22/upgrade-python-2-7-to-3-6-and-3-7-in-ubuntu-97d2727bf911
sudo add-apt-repository ppa:deadsnakes/ppa
#sudo apt-get install python3.5 -y
#sudo apt-get install python3.6 -y
#sudo apt-get install python3.7 -y
#sudo apt-get install python3.8 -y
#sudo apt-get install python3.9 -y
which python3.5
#which python3.6
#which python3.7
#which python3.8
#which python3.9
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 1
#sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 2
#sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 3
#sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 4
#sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 5
sudo apt-get install python3.5-dev -y
#sudo apt-get install python3.6-dev -y
#sudo apt-get install python3.7-dev -y
#sudo apt-get install python3.8-dev -y
#sudo apt-get install python3.9-dev -y


sudo apt-get upgrade python3.6 -y
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 2
#set pip?pip3, make scrcpy ..
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 3


sudo apt-get install build-essential libpq-dev libssl-dev openssl libffi-dev zlib1g-dev
sudo apt-get install python3-pip python3.7-dev
sudo apt-get install python3.7
sudo apt-get install python3-dev python3-setuptools python3-wheel -y
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 5


sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 6
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 7
#sudo apt-get install cinnamon cinnamon-common --reinstall