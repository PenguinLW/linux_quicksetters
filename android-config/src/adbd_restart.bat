@echo off
cd .. && cd sdk-tools-windows-4333796\platform-tools\
echo #restart adbd daemon
adb -s KHGBB19B20603057 tcpip 5555
adb -s 192.168.0.3:5555 tcpip 5555
adb -s 0123456789ABCDEF shell su -c "setprop service.adb.tcp.port 5555 && stop adbd && start adbd"
adb -s 0123456789ABCDEF tcpip 5555
adb -s 192.168.0.4:5555 shell su -c "setprop service.adb.tcp.port 5555 && stop adbd && start adbd"
adb -s 192.168.0.4:5555 tcpip 5555
adb -s VUY9K19A15905715 tcpip 5555
adb -s 192.168.0.8:5555 tcpip 5555
exit
