

#adb devices -l | grep -oP '^\S+\s+\K.*'
#adb devices -l | grep -oP '^\S+\s+\K\S+'
#adb devices -l | grep -oP '^\S+\s+'
adb devices -l | grep -oP '^\S+\s+' | grep -i 5555

adb -s $(adb devices -l | grep -oP '^\S+\s+' | grep -i 5555) shell 'pwd && ls -al'

#adb -s $(adb devices -l | grep -oP '^\S+\s+' | grep -i BM) tcpip 5555
#adb -s $(adb devices -l | grep -oP '^\S+\s+' | grep -i JZ) tcpip 5555


