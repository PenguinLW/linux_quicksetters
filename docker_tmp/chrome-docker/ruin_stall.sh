mkdir chrome-docker && cd chrome-docker
docker-compose up -d
docker ps
curl http://localhost:9222

pip install selenium
python test_bitrix24.py

docker-compose logs chrome
docker-compose logs chrome-browser

sudo systemctl status docker
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
docker ps
sudo journalctl -u docker
sudo systemctl restart docker
sudo setenforce 0
docker-compose build --no-cache
docker-compose up -d

