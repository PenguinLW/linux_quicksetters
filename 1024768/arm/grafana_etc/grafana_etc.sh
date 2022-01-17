##https://grafana.com/tutorials/install-grafana-on-raspberry-pi/ ##https://github.com/MicrosoftDocs/WSL/issues/457

##https://prometheus.io/docs/prometheus/latest/getting_started/ ##https://grafana.com/grafana/dashboards/10578


wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list

sudo apt-get update -y && sudo apt-get upgrade -y

sudo apt-get install -y grafana
#cd ~/desktop/ && wget https://packages.grafana.com/oss/deb/pool/main/g/grafana/grafana_8.3.3_armhf.deb &&dpkg -i *.deb

#sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable grafana-server

#sudo /bin/systemctl start grafana-server
#service grafana-server start
service grafana-server enable
service grafana-server start
##


##https://www.howtoraspberry.com/2021/02/how-to-run-prometheus-on-a-raspberry-pi/

#mkdir ~/.config/systemd/ && mkdir ~/.config/systemd/user/
#cd ~/desktop/ && wget https://github.com/prometheus/prometheus/releases/download/v2.33.0-rc.0/prometheus-2.33.0-rc.0.linux-armv7.tar.gz && cd ~ && tar xfz ~/desktop/*.tar.gz

useradd -m -s /bin/bash prometheus
mv prometh*/* /home/prometheus/
su - prometheus
mkdir -p ~/data
#nohup ./prometheus &
logout

nano ~/.config/systemd/user/prometheus.service #nano /lib/systemd/system/prometheus.service ##
nano /home/prometheus/*.yml ##

#sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable prometheus
#service prometheus enable
#service prometheus start
##

#cd ~/desktop/ && wget https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-armv7.tar.gz && cd ~ && tar xfz ~/desktop/*.tar.gz

useradd --no-create-home --shell /bin/false node_exporter

nano /lib/systemd/system/node_exporter.service ##

#sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable node_exporter
#service node_exporter enable
#service node_exporter start
