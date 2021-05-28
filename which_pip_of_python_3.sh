sudo apt install python-pip -y
which python
python -V
which pip
pip -V
sudo apt install python3-pip -y
which python3
python3 -V
which pip3
pip3 -V
#https://github.com/pypa/pip/issues/5599

#sudo touch /usr/local/bin/pip
#sudo touch /usr/local/bin/pip3
sudo update-alternatives --install /usr/bin/pip pip /usr/local/bin/pip 1
sudo update-alternatives --set pip /usr/local/bin/pip
sudo update-alternatives --install /usr/bin/pip3 pip3 /usr/local/bin/pip3 1
sudo update-alternatives --set pip3 /usr/local/bin/pip3


sudo pip3 install --upgrade pip