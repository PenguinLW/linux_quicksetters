#adb -s emulator-5554 shell ifconfig #
#adb -s emulator-5554 shell pm list packages
adb -s 192.168.43.1 shell ifconfig #192.168.43.1
adb -s 192.168.43.1 shell pm list packages
adb -s 192.168.43.62 shell ifconfig #192.168.43.62
adb -s 192.168.43.62 shell pm list packages
adb -s 192.168.43.223 shell ifconfig #192.168.43.223
adb -s 192.168.43.223 shell pm list packages