#!/bin/bash
sudo pamac update
sudo pacman -Syy
pamac search bitrix
pamac search bitrix24
pamac build bitrix24

#ping aur.archlinux.org
#sudo pacman -S pamac
#sudo pacman -S pamac-aur

#mkdir tmp && cd tmp
#git clone https://aur.archlinux.org/bitrix24.git
#cd bitrix24
#makepkg -si

#sudo pacman -S yay
#yay -S bitrix24
#yay -S google-chrome
