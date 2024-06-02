#!/bin/bash

#after update broke & kernel update broken
#in live-cd
sudo su

#and following the ..
#https://www.turnkeylinux.org/docs/chroot-to-repair-system

#or alternate this
manjaro-chroot -a

#terminal now in your system

#https://unix.stackexchange.com/questions/777196/pacman-cant-run-cant-find-libicuuc-so-75
cd /home/
mkdir tmp
cd tmp
curl https://pkgbuild.com/~morganamilo/pacman-static/x86_64/bin/pacman-static --output pacman-static
chmod +x pacman-static

./pacman-static -Syuu


#and following
#https://losst.pro/oshibka-vfs-unable-to-mount-root-fs-on-unknown-block
#or
#https://askubuntu.com/questions/41930/kernel-panic-not-syncing-vfs-unable-to-mount-root-fs-on-unknown-block0-0
df -h | grep boot
uname -r
sudo update-initramfs -u -k {your_version_версия} #this step not working


#and following this
#https://forum.manjaro.org/t/how-to-rebuild-initramfs/65945
sudo mkinitcpio -p linux

#after booting in your system as normal mode
os-prober
sudo update-grub
