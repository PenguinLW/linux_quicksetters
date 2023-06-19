#https://snapcraft.io/install/speedx/manjaro
sudo pacman -Ss snapd
sudo pacman -S snapd

sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install speedx
#https://snapcraft.io/install/speedx/ubuntu
