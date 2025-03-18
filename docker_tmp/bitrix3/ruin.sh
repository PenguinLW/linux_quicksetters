mkdir web0 web1 web2

#sudo nano /etc/hosts #notepad C:\Windows\System32\drivers\etc\hosts
#127.0.0.1 ppau0.com
#127.0.0.1 ppau1.com
#127.0.0.1 ppau2.com

#docker system prune -a
docker-compose -f bitrix3.yaml down
docker-compose -f bitrix3.yaml up -d
docker-compose ps
