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


