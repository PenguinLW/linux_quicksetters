#https://www.linuxuprising.com/2019/03/control-android-devices-from-your.html
sudo update-alternatives --install "/usr/bin/adb" "adb" "/home/penguinl/Programm/android-config/tools/platform-tools/adb" 1
sudo update-alternatives --set adb /home/penguinl/Programm/android-config/tools/platform-tools/adb
cd .. && cd tools/platform-tools/build/scrcpy-1.16
#sudo apt install meson
#https://github.com/Genymobile/scrcpy/blob/master/BUILD.md
sudo apt install ffmpeg libsdl2-2.0-0 -y
sudo apt install gcc git pkg-config meson ninja-build \
                 libavcodec-dev libavformat-dev libavutil-dev \
                 libsdl2-dev -y
sudo pip3 install meson
sudo update-alternatives --install "/usr/bin/meson" "meson" "/usr/local/bin/meson" 1
sudo update-alternatives --set meson /usr/local/bin/meson

sudo apt install cmake -y

meson build --buildtype release --strip -Db_lto=true  -Dprebuilt_server=../../scrcpy-server-v1.16.jar
cd build && sudo ninja
sudo ninja install

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
