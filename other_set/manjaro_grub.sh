sudo nano /etc/default/grub
#add the number 0-.. to
#GRUB_DEFAULT=1

sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo update-grub