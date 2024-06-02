#!/bin/bash
pacman -Ss android-tools
#sudo pacman -S android-tools

#sudo pacman -Rs android-tools

## ..the following for ..
#./install.sh

ln -s /media/penguinl/PenguinL/Programm/tools/platform-tools/adb /usr/bin/

adb devices -l
