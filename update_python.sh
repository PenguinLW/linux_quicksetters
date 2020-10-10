#https://medium.com/@rajputankit22/upgrade-python-2-7-to-3-6-and-3-7-in-ubuntu-97d2727bf911
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get install python3.6
sudo apt-get install python3.7
sudo apt-get install python3.8
sudo apt-get install python3.9
which python3.5#default version
which python3.6
which python3.7
which python3.8
which python3.9
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 2
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 3
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 4
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 5
sudo apt-get install python3.6-dev -y
sudo apt-get install python3.7-dev -y
sudo apt-get install python3.8-dev -y
sudo apt-get install python3.9-dev -y
sudo apt remove python-pip -y
sudo apt remove python3-pip -y
sudo apt install python-pip -y
sudo apt install python3-pip -y

