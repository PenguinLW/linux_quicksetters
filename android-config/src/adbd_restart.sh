#adb -s <your-device-id> tcpip 5555
#adb -s <your-device-id> shell su -c "setprop service.adb.tcp.port 5555 && stop adbd && start adbd"
#adb -s <your-device-id> shell setprop service.adb.tcp.port 5555

#adb -s KHGBB19B20603057 shell setprop service.adb.tcp.port 5555
#adb -s KHGBB19B20603057 tcpip 5555
#adb -s 192.168.43.1 shell setprop service.adb.tcp.port 5555
#adb -s 192.168.43.1:5555 tcpip 5555

#adb -s 0123456789ABCDEF shell su -c "setprop service.adb.tcp.port 5555 && stop adbd && start adbd"
#adb -s 0123456789ABCDEF tcpip 5555
#adb -s 192.168.43.223:5555 shell su -c "setprop service.adb.tcp.port 5555 && stop adbd && start adbd"
#adb -s 192.168.43.223:5555 tcpip 5555

#adb -s VUY9K19A15905715 shell setprop service.adb.tcp.port 5555
#adb -s VUY9K19A15905715 tcpip 5555
#adb -s c shell setprop service.adb.tcp.port 5555
#adb -s 192.168.43.62:5555 tcpip 5555

adb -s CYAIIZROKJQWZHJZ shell setprop service.adb.tcp.port 5555
adb -s CYAIIZROKJQWZHJZ tcpip 5555
#adb -s 192.168.43.167 shell setprop service.adb.tcp.port 5555
#adb -s 192.168.43.167 tcpip 5555
adb -s 192.168.0.14 shell setprop service.adb.tcp.port 5555
adb -s 192.168.0.14 tcpip 5555
