#in termux
#echo "mkdir ~/../usr/var/service/adbd_restart/
#rm -fr ~/../usr/var/service/adbd_restart/run
#echo '#!/bin/sh' > ~/../usr/var/service/adbd_restart/run
#echo 'exec adb devices -l & adb tcpip 5555' >> ~/../usr/var/service/adbd_restart/run
#termux-fix-shebang ~/../usr/var/service/adbd_restart/run
#chmod +x ~/../usr/var/service/adbd_restart/run
#sv up adbd_restart
#"
#echo "mkdir ~/../usr/var/service/y5_connect/
#rm -fr ~/../usr/var/service/y5_connect/run
#echo '#!/bin/sh' > ~/../usr/var/service/y5_connect/run
#echo 'exec adb connect 192.168.43.62' >> ~/../usr/var/service/y5_connect/run
#termux-fix-shebang ~/../usr/var/service/y5_connect/run
#chmod +x ~/../usr/var/service/y5_connect/run
#sv up y5_connect
#"
#echo "mkdir ~/../usr/var/service/tsshd/
#rm -fr ~/../usr/var/service/tsshd/run
#echo '#!/bin/sh' > ~/../usr/var/service/tsshd/run
#echo 'exec sshd' >> ~/../usr/var/service/tsshd/run
#termux-fix-shebang ~/../usr/var/service/tsshd/run
#chmod +x ~/../usr/var/service/tsshd/run
#sv up tsshd
#"
mkdir ~/../usr/var/service/tsshd/
rm -fr ~/../usr/var/service/tsshd/run
echo '#!/bin/sh' > ~/../usr/var/service/tsshd/run
echo 'exec sshd' >> ~/../usr/var/service/tsshd/run
termux-fix-shebang ~/../usr/var/service/tsshd/run
chmod +x ~/../usr/var/service/tsshd/run
sv up tsshd