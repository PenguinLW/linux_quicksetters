cd .. && cd tools/platform-tools/build/scrcpy-1.17
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

#pip3 install flask
sudo apt install ninja -y
wget https://github.com/ninja-build/ninja/releases/download/v1.8.2/ninja-linux.zip
sudo unzip ninja-linux.zip -d /usr/local/bin/
sudo update-alternatives --install /usr/bin/ninja ninja /usr/local/bin/ninja 1 --force
#/usr/bin/ninja --version

wget https://github.com/Genymobile/scrcpy/releases/download/v1.17/scrcpy-server-v1.17
mv scrcpy-server-v1.17 /home/penguinl/Programm/android-config/tools/platform-tools/scrcpy-server-v1.17.jar

meson build --buildtype release --strip -Db_lto=true  -Dprebuilt_server=../../scrcpy-server-v1.17.jar
cd build && sudo ninja
sudo ninja install