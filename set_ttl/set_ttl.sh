#echo "echo 119 > /proc/sys/net/ipv4/ip_default_ttl & rm ttl.sh" > ttl.sh
echo "echo 57 > /proc/sys/net/ipv4/ip_default_ttl & rm ttl.sh" > ttl.sh
chmod +x ttl.sh
sudo ./ttl.sh
#1) sudo gedit /root/ttl.sh
#2) 
#	a) writing:
#		echo 119 > /proc/sys/net/ipv4/ip_default_ttl
#	-b) checked:
#		systemctl status NetworkManager.service
#-3) sudo gedit /etc/systemd/system/ttl.service
#-4) writing:
#[Unit]
#Description=TTL119
#Before=NetworkManager.service
#
#[Service]
#User=root
#RemainAfterExit=yes
#Type=oneshot
#5) sudo systemctl enable ttl.service
