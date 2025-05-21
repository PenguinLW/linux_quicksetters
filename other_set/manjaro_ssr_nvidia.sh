sudo pacman -S ffmpeg
sudo pacman -S xbindkeys

sudo pacman -S libnotify

##https://github.com/MAPReiff/ShadowRePlay-Linux
##pamac build shadowreplay-git


##https://www.maartenbaert.be/simplescreenrecorder/
pamac build simplescreenrecorder-git
#pamac build lib32-simplescreenrecorder

echo $XDG_SESSION_TYPE

sudo pacman -S kooha
sudo pacman -S wf-recorder
sudo pacman -S obs-studio

sudo pacman -S snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install blue-recorder



#sudo mhwd -a pci nonfree 0300
mhwd -li
lspci | grep -E "VGA|3D"
pacman -Q > packages.txt
nvidia-smi
#Загрузитесь в терминал (Ctrl+Alt+F2 на экране входа). Удалите новые драйверы: Это вернёт свободные драйверы (nouveau, amdgpu, intel).
#sudo mhwd -r pci video-nvidia
#sudo mhwd -i pci video-linux
pacman -Ss nvidia
#
#
#
#
#
sudo pacman -S cmake
yay -S simplescreenrecorder
#
sudo pacman -S snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install bitrix --beta
sudo snap install bitrix --edge
sudo snap install simplescreenrecorder
sudo snap install firefox
