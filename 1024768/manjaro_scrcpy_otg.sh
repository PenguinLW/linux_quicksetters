##https://github.com/Genymobile/scrcpy/blob/master/doc/otg.md
#sudo lsusb -v | grep -i idProduct
#sudo lsusb -v | grep -i iProduct
#sudo lsusb -v | grep -i iSerial
lsusb -vt
#ls -al /dev/*
sudo dmesg | grep -i usb
