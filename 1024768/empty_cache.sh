#!/bin/bash

#sudo rm -fr /var/cache/pacman/pkg/*
#sudo rm -fr /var/cache*

sudo pacman -Sc
sudo pacman -S pacman-contrib
sudo paccache -r
sudo paccache -rk1
sudo paccache -rk0

sudo systemctl start systemd-tmpfiles-clean.service
yay -Sc
paru -Sc

sudo resolvectl flush-caches
df -h /
du -hs /var/cache/pacman/pkg
