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

meson build --buildtype release --strip -Db_lto=true  -Dprebuilt_server=../scrcpy-server-v1.16.jar
