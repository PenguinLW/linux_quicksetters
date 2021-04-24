#adb -s <your-device-id> tcpip 5555

#adb -s <your-device-id> shell su -c "setprop service.adb.tcp.port 5555 && stop adbd && start adbd" 


#adb -s <your-device-id> shell setprop service.adb.tcp.port 5555
