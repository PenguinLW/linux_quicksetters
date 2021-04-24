#in target os
git clone -o linux_quicksetters https://github.com/Kovalsky95/linux_quicksetters.git

#rm -d -r -f Programm & mkdir Programm

mv -f linux_quicksetters/* Programm/

rm -d -r -f linux_quicksetters 

#update-alternatives --install /usr/bin/get_all get_all /root/Programm/arm/get_all.sh 1



#update-alternatives --set get_all /root/Programm/arm/get_all.sh
