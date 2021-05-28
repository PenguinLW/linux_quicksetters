#https://www.linuxuprising.com/2019/03/control-android-devices-from-your.html
sudo update-alternatives --install "/usr/bin/adb" "adb" "/home/penguinl/Programm/android-config/tools/platform-tools/adb" 1
sudo update-alternatives --set adb /home/penguinl/Programm/android-config/tools/platform-tools/adb

sudo update-alternatives --install /usr/bin/scrcpy scrcpy /usr/local/bin/scrcpy 1
sudo update-alternatives --set scrcpy /usr/local/bin/scrcpy
sudo update-alternatives --install /usr/bin/scrcpy-noconsole scrcpy-noconsole /usr/local/bin/scrcpy 1
sudo update-alternatives --set scrcpy-noconsole /usr/local/bin/scrcpy



sudo update-alternatives --install /usr/bin/adb_listofd adb_listofd /home/penguinl/Programm/android-config/src/adb_listofd.sh 1
sudo update-alternatives --set adb_listofd /home/penguinl/Programm/android-config/src/adb_listofd.sh
sudo update-alternatives --install /usr/bin/adb_restart adb_restart /home/penguinl/Programm/android-config/src/adb_restart.sh 1
sudo update-alternatives --set adb_restart /home/penguinl/Programm/android-config/src/adb_restart.sh
sudo update-alternatives --install /usr/bin/adbd_restart adbd_restart /home/penguinl/Programm/android-config/src/adbd_restart.sh 1
sudo update-alternatives --set adbd_restart /home/penguinl/Programm/android-config/src/adbd_restart.sh
