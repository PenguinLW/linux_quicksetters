sudo update-alternatives --install "/usr/bin/adb" "adb" "/home/penguinl/Programm/android-config/tools/platform-tools/adb" 1
sudo update-alternatives --set adb /home/penguinl/Programm/android-config/tools/platform-tools/adb
cd .. && cd tools/platform-tools/build/scrcpy-1.16
#sudo apt install meson
sudo pip3 install meson
sudo update-alternatives --install "/usr/bin/meson" "meson" "/usr/local/bin/meson" 1
sudo update-alternatives --set meson /usr/local/bin/meson
sudo apt install cmake -y

meson build --buildtype release --strip -Db_lto=true  -Dprebuilt_server=../scrcpy-server-v1.16.jar
