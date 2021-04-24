


#/local

whoami

uname -m #armv71

#dpkg --add-architecture i386

dpkg --remove-architecture i386

apt update -y && apt-get update -y

apt upgrade -y && apt-get upgrade -y

#apt-get install libc6-i386

apt-get remove openjdk*

apt install curl -y

#jdk-8u281-linux-x64.tar.gz -> jdk-8u291-linux-aarch64.tar.gz -> jdk-8u291-linux-arm32-vfp-hflt.tar.gz

#rm -drf /root/Programm/jdk1.8.0_281/

#ls -al Programm

#wget http://192.168.43.62:8081/1868/jdk-8u291-linux-arm32-vfp-hflt.tar.gz --no-check-certificate

curl -O http://192.168.43.62:8081/1868/jdk-8u291-linux-arm32-vfp-hflt.tar.gz

tar -xvzf /root/jdk-8u291-linux-arm32-vfp-hflt.tar.gz && mv /root/jdk1.8.0_291/ /root/Programm/ && rm -r -f /root/jdk-8u291-linux-arm32-vfp-hflt.tar.gz

echo "

JAVA_HOME=/root/Programm/jdk1.8.0_291

PATH=\$PATH:\$HOME/bin:\$JAVA_HOME/bin

export JAVA_HOME

export PATH" >> /etc/profile

#sed -i 's/PATH=\/usr\/local\/sbin:\/usr\/local\/bin:\/bin:\/usr\/bin:\/sbin:\/usr\/sbin:\/usr\/games:\/usr\/local\/games:\/root\/bin:\/bin/PATH=\$PATH:\$HOME\/bin:\$JAVA_HOME\/bin/g' /etc/profile

cat /etc/profile

. /etc/profile

which java

which javac

java -version

javac -version

mkdir -p /opt/google/chrome/plugins

ln -s /usr/local/java/jdk1.8.0_291/jre/lib/amd64/libnpjp2.so

mkdir -p /usr/lib/mozilla/plugins

ln -s /usr/local/java/jdk1.8.0_291/jre/lib/amd64/libnpjp2.so

update-alternatives --install "/usr/bin/java" "java" "/root/Programm/jdk1.8.0_291/bin/java" 1

update-alternatives --install "/usr/bin/javac" "javac" "/root/Programm/jdk1.8.0_291/bin/javac" 1

#update-alternatives --install "/usr/bin/javaws" "javaws" "/root/Programm/jdk1.8.0_291/bin/javaws" 1

update-alternatives --set java /root/Programm/jdk1.8.0_291/bin/java

update-alternatives --set javac /root/Programm/jdk1.8.0_291/bin/javac

#update-alternatives --set javaws /root/Programm/jdk1.8.0_291/bin/javaws

#update-alternatives --set java /Programm/jdk1.8.0_281/bin/java

#update-alternatives --set java /root/Programm/jdk1.8.0_281/bin/java

#update-alternatives --remove javaws /root/Programm/jdk1.8.0_291/bin/javaws

#sed -i 's/JAVA_HOME=\/root\/Programm\/jdk1.8.0_281/JAVA_HOME=\/Programm\/jdk1.8.0_281/g' /etc/profile

#sed -i 's/JAVA_HOME=\/Programm\/jdk1.8.0_281/JAVA_HOME=\/root\/Programm\/jdk1.8.0_281/g' /etc/profile

#sed -i 's/JAVA_HOME=\/root\/Programm\/jdk1.8.0_281/JAVA_HOME=\/root\/Programm\/jdk1.8.0_291/g' /etc/profile

ls -al /bin/

ls -al /usr/bin/

ls -al /etc/alternatives/

cat /etc/profile

. /etc/profile

cd /root/Programm/android-config

cd /root/Programm/android-config/create

chmod +x *

./install.sh

/root/Programm/android-config/tools/tools/bin/sdkmanager --list

update-alternatives --install "/usr/bin/adb" "adb" "/root/Programm/android-config/tools/platform-tools/adb" 1

update-alternatives --set adb /root/Programm/android-config/tools/platform-tools/adb

update-alternatives --install /usr/bin/adb_listofd adb_listofd /root/Programm/android-config/src/adb_listofd.sh 1

update-alternatives --set adb_listofd /root/Programm/android-config/src/adb_listofd.sh

update-alternatives --install /usr/bin/adb_restart adb_restart /root/Programm/android-config/src/adb_restart.sh 1

update-alternatives --set adb_restart /root/Programm/android-config/src/adb_restart.sh

update-alternatives --install /usr/bin/adbd_restart adbd_restart /root/Programm/android-config/src/adbd_restart.sh 1

update-alternatives --set adbd_restart /root/Programm/android-config/src/adbd_restart.sh

chmod +x /root/Programm/android-config/src/*.sh

which adb

which adb_listofd

which adb_restart

which adbd_restart

#update-alternatives --remove adb /root/Programm/android-config/tools/platform-tools/adb

#update-alternatives --remove adb_listofd /root/Programm/android-config/src/adb_listofd.sh

#update-alternatives --remove adb_restart /root/Programm/android-config/src/adb_restart.sh

#update-alternatives --remove adbd_restart /root/Programm/android-config/src/adbb_restart.sh
