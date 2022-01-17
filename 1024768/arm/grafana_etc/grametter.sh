service grafana-server start
cd /opt/node_exporter/
./node_exporter &


cd /home/prometheus/ #su - prometheus
./prometheus &
