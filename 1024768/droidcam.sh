#https://www.dev47apps.com/droidcam/linux/
#echo {your_password} | sudo -S ls
echo 24121997di@n@GHI | sudo -S ls

#sudo xed /etc/modprobe.d/droidcam.conf
sudo rmmod v4l2loopback_dc
sudo insmod /lib/modules/`uname -r`/kernel/drivers/media/video/v4l2loopback-dc.ko width=1920 height=1080
lsmod | grep v4l2loopback_dc

sudo droidcam #&& gnome-terminal -e "pacmd load-module module-alsa-source device=hw:Loopback,1,0\'"