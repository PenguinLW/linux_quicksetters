#in target os
lscpu
uname -a
du -hs *
whoami
uname -m #x86_64
dpkg --print-architecture
pwd
lsblk
fdisk -l
df
df -haT
df -haTi
free
free -m
free -m -t
cat /proc/meminfo
vmstat
top
htop #sudo apt install htop -y
acpi -V #sudo apt install acpi -y #sudo apt install acpitool -y

java -version
javac -version
which java
which javac

which adb
which adb_listofd
which adb_restart
which adbd_restart

ls -al Programm/
ls -al /bin/
ls -al /usr/bin/
ls -al /etc/alternatives/

cat /etc/profile
inxi -G
mhwd -li
