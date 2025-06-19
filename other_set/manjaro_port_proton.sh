#!/bin/bash
pamac build portproton #sudo pamac build portproton --no-confirm

'''
sudo pacman -Syu bash icoutils bubblewrap zstd cabextract tar openssl gamemode desktop-file-utils curl dbus freetype2 gdk-pixbuf2 ttf-font lsb-release nss xorg-xrandr vulkan-driver vulkan-icd-loader lsof lib32-freetype2 lib32-libgl lib32-gcc-libs lib32-libx11 lib32-libxss lib32-alsa-plugins lib32-libgpg-error lib32-nss lib32-vulkan-driver lib32-vulkan-icd-loader lib32-gamemode lib32-openssl
'''

'''
sudo pacman -Syu lib32-nvidia-utils
'''

#fix err
touch /tmp/PortProton/portproton.lock 
sudo pacman -S gamescope
sudo pacman -S --needed \
    wine-staging \
    winetricks \
    vulkan-icd-loader \
    lib32-vulkan-icd-loader \
    giflib \
    lib32-giflib \
    libpng \
    lib32-libpng \
    libldap \
    lib32-libldap \
    gnutls \
    lib32-gnutls \
    mpg123 \
    lib32-mpg123 \
    openal \
    lib32-openal \
    v4l-utils \
    lib32-v4l-utils \
    libpulse \
    lib32-libpulse \
    alsa-plugins \
    lib32-alsa-plugins \
    alsa-lib \
    lib32-alsa-lib \
    libjpeg-turbo \
    lib32-libjpeg-turbo \
    libxcomposite \
    lib32-libxcomposite \
    libxinerama \
    lib32-libxinerama \
    ncurses \
    lib32-ncurses \
    opencl-icd-loader \
    lib32-opencl-icd-loader \
    libxslt \
    lib32-libxslt \
    libva \
    lib32-libva \
    gtk3 \
    lib32-gtk3 \
    gst-plugins-base-libs \
    lib32-gst-plugins-base-libs

rm -rf ~/PortProton/data/prefixes/DEFAULT
chmod -R 755 ~/PortProton
#yay -Syu portproton  # или paru -Syu portproton

cd ~/PortProton
./portproton -debug 2>&1 | tee portproton.log

#nano portproton.log

uname -r
df -h ~/
nvidia-smi
#vulkaninfo | grep "GPU id"
