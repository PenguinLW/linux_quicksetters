##https://forum.manjaro.org/t/how-to-install-run-waydroid-on-xfce-or-other-non-wayland-desktops/152925

pamac build waydroid  waydroid-image-gapps

sudo waydroid init
#sudo waydroid init -s GAPPS

#only run this if you want the background waydroid service to automatically run at startup
sudo systemctl enable waydroid-container
sudo systemctl start waydroid-container


sudo pacman -S weston
weston

#after running in terminal inside weston
waydroid show-full-ui

