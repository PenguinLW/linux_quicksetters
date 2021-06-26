#adb -s <your-device-id> tcpip 5555
#adb -s <your-device-id> shell su -c "setprop service.adb.tcp.port 5555 && stop adbd && start adbd"
#adb -s <your-device-id> shell setprop service.adb.tcp.port 5555

#adb -s emulator-5554 shell setprop service.adb.tcp.port 5555
#adb -s emulator-5554 tcpip 5555

adb -s 192.168.43.1 shell setprop service.adb.tcp.port 5555
adb -s 192.168.43.1 tcpip 5555
adb -s 192.168.43.62 shell setprop service.adb.tcp.port 5555
adb -s 192.168.43.62 tcpip 5555
adb -s 192.168.43.223 shell setprop service.adb.tcp.port 5555
adb -s 192.168.43.223 tcpip 5555