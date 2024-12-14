#in termux
#echo "mkdir ~/../usr/var/service/adbd_restart/
#rm -fr ~/../usr/var/service/adbd_restart/run
#echo '#!/bin/sh' > ~/../usr/var/service/adbd_restart/run
#echo 'exec adb devices -l & adb tcpip 5555' >> ~/../usr/var/service/adbd_restart/run
#termux-fix-shebang ~/../usr/var/service/adbd_restart/run
#chmod u+x ~/../usr/var/service/adbd_restart/run
#sv up adbd_restart
#"
#echo "mkdir ~/../usr/var/service/y5_connect/
#rm -fr ~/../usr/var/service/y5_connect/run
#echo '#!/bin/sh' > ~/../usr/var/service/y5_connect/run
#echo 'exec adb connect 192.168.43.62' >> ~/../usr/var/service/y5_connect/run
#termux-fix-shebang ~/../usr/var/service/y5_connect/run
#chmod u+x ~/../usr/var/service/y5_connect/run
#sv up y5_connect
#"
#echo "mkdir ~/../usr/var/service/tsshd/
#rm -fr ~/../usr/var/service/tsshd/run
#echo '#!/bin/sh' > ~/../usr/var/service/tsshd/run
#echo 'exec sshd' >> ~/../usr/var/service/tsshd/run
#termux-fix-shebang ~/../usr/var/service/tsshd/run
#chmod u+x ~/../usr/var/service/tsshd/run
#sv up tsshd
#"

#mkdir ~/../usr/var/service/no_manjaro/
#rm -fr ~/../usr/var/service/no_manjaro/run
#echo '#!/bin/sh' > ~/../usr/var/service/no_manjaro/run
#echo 'exec clear ; exec cd ~ ; exec ./manjaro/start-ubuntu.sh' >> ~/../usr/var/service/no_manjaro/run
#termux-fix-shebang ~/../usr/var/service/no_manjaro/run
#chmod u+x ~/../usr/var/service/no_manjaro/run
#sv up no_manjaro

termux-fix-shebang ~/../usr/var/service/*/run
chmod u+x ~/../usr/var/service/*/run
nano ~/../usr/var/service/*/run
ls -al ~/../usr/var/service/*/
ls -al ~/../usr/var/service/*/supervise/

sv up ~/../usr/var/service/*/

##nano ~/.bashrc
echo 'clear ; cd ~ ; ./manjaro/start-ubuntu.sh' > ~/.bashrc
source ~/.bashrc ##source ~/.zshrc
