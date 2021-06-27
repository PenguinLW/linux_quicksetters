#adb -s <your-device-id> tcpip 5555
#adb -s 192.168.43.62:5555 tcpip 5555
#scrcpy -s <your-device-id>
scrcpy-noconsole --always-on-top -w -t -s 192.168.43.62:5555