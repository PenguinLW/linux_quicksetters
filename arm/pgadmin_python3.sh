#in target os
#in venv
python3 -m venv pgadmin
. pgadmin/bin/activate #source pgadmin/bin/activate

pip3 install wheel

pip3 install --upgrade pgadmin4 --ignore-installed
update-alternatives --install /usr/bin/pgadmin4 pgadmin4 /root/Programm/1024768/arm/pgadmin4.sh 1
which pgadmin4
pgadmin4
