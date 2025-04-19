##https://wiki.manjaro.org/index.php/Configure_NVIDIA_(non-free)_settings_and_load_them_on_Startup
##https://linuxconfig.org/how-to-install-the-nvidia-drivers-on-manjaro-linux

##sudo pacman -Syyu

inxi -G
mhwd -li

sudo mhwd -a pci nonfree 0300
mhwd -li
  
sudo nvidia-settings

sudo mhwd-gpu --setmod nvidia --setxorg /etc/X11/mhwd.d/nvidia.conf

nvidia-settings

gedit ~/.xinitrc
##put the:
##nvidia-settings --load-config-only
##exec $(get_session)


glxinfo | grep "OpenGL renderer"
lspci -k | grep -EA3 'VGA|3D|Display'
lspci | grep -E "VGA|3D"

sudo pacman -S nvidia nvidia-utils nvidia-settings
cat /var/log/pacman.log | grep "removed"
#sudo pacman -S xorg xorg-xinit

lsmod | grep -E 'nvidia|amdgpu|intel'

sudo modprobe nvidia
#sudo pacman -S picom
pacman -Qtdq
