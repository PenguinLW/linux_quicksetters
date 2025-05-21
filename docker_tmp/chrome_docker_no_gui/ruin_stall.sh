mkdir chrome_docker_no_gui && cd chrome_docker_no_gui
docker-compose up -d
docker ps
curl http://localhost:9222

pip install selenium
python ruin_stall.py


