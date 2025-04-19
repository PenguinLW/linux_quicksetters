sudo pacman -S ffmpeg
sudo pacman -S xbindkeys

sudo pacman -S libnotify

##https://github.com/MAPReiff/ShadowRePlay-Linux
##pamac build shadowreplay-git


##https://www.maartenbaert.be/simplescreenrecorder/
pamac build simplescreenrecorder-git
#pamac build lib32-simplescreenrecorder

echo $XDG_SESSION_TYPE

sudo pacman -S wf-recorder
sudo pacman -S obs-studio

sudo pacman -S snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install blue-recorder
