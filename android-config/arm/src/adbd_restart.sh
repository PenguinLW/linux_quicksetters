#adb -s <your-device-id> tcpip 5555

#adb -s <your-device-id> shell su -c "setprop service.adb.tcp.port 5555 && stop adbd && start adbd" 


#adb -s <your-device-id> shell setprop service.adb.tcp.port 5555



#List of devices attached

#192.168.43.62:5555     device product:DRA-LX5RU model:DRA_LX5 device:HWDRA-MG transport_id:2

#emulator-5554          device product:DRA-LX5RU model:DRA_LX5 device:HWDRA-MG transport_id:1

adb -s emulator-5554 shell setprop service.adb.tcp.port 5555

adb -s emulator-5554 tcpip 5555

adb -s 192.168.43.62 shell setprop service.adb.tcp.port 5555

adb -s 192.168.43.62 tcpip 5555






