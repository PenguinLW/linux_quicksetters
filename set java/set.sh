#/media/{username}/your/path/jdk-XX-XXX-XXX/jre/bin/ControlPanel

sudo apt-get update && sudo apt-get remove openjdk*


#...

#cd /opt/google/chrome/plugins
#sudo rm -rf libnpjp2.so

#cd /usr/lib/mozilla/plugins
#sudo rm -rf libnpjp2.so

#####################################################################################
sudo mkdir -p /opt/google/chrome/plugins
sudo ln -s /usr/local/java/jdk1.8.0_202/jre/lib/amd64/libnpjp2.so
sudo mkdir -p /usr/lib/mozilla/plugins
sudo ln -s /usr/local/java/jdk1.8.0_202/jre/lib/amd64/libnpjp2.so
#####################################################################################

sudo echo "
JAVA_HOME=/home/penguinl/jdk1.8.0_291
PATH=$PATH:$HOME/bin:$JAVA_HOME/bin
export JAVA_HOME
export PATH
" >> /etc/profile

sudo nano /etc/profile
#####################################################################################
sudo update-alternatives --install "/usr/bin/java" "java" "/home/penguinl/jdk1.8.0_291/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/home/penguinl/jdk1.8.0_291/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/home/penguinl/jdk1.8.0_291/bin/javaws" 1

sudo update-alternatives --set java /home/penguinl/jdk1.8.0_291/bin/java
sudo update-alternatives --set javac /home/penguinl/jdk1.8.0_291/bin/javac
sudo update-alternatives --set javaws /home/penguinl/jdk1.8.0_291/bin/javaws
#####################################################################################

. /etc/profile
