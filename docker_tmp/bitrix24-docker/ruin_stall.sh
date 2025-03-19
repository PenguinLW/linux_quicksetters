sudo pacman -Syu docker docker-compose
sudo systemctl enable --now docker
sudo usermod -aG docker $USER  # Добавьте текущего пользователя в группу docker
newgrp docker  # Обновите группу без перезагрузки

echo "127.0.0.1 ppau.com" | sudo tee -a /etc/hosts #nano /etc/hosts
echo "192.168.0.20 ppau.com" | sudo tee -a /etc/hosts #nano /etc/hosts
echo "192.168.0.20 ppau.com" | sudo tee -a /etc/hosts #nano /etc/hosts
echo "192.168.0.20 ppau.com" | sudo tee -a /etc/hosts #nano /etc/hosts
echo "192.168.0.21 ppau.com" | sudo tee -a /etc/hosts #nano /etc/hosts
echo "192.168.0.106 ppau.com" | sudo tee -a /etc/hosts #nano /etc/hosts
echo "192.168.0.107 ppau.com" | sudo tee -a /etc/hosts #nano /etc/hosts
echo "192.168.0.110 ppau.com" | sudo tee -a /etc/hosts #nano /etc/hosts

sudo systemctl restart systemd-resolved  # Для Manjaro
sudo killall -HUP mDNSResponder #mac

mkdir bitrix24-docker && cd bitrix24-docker
mkdir -p web/html
mkdir -p web/apache-config
mkdir -p web/logs db-data
mkdir /var/www/html/razdel_0/
mkdir /var/www/html/instructions/

ls -al /var/www/html/.*php
ls -al /var/www/html/crm/.*php
ls -al /var/www/html/razdel_0/.*php
ls -al /var/www/html/instructions/.*php


touch web/apache-config/ppau0.com.conf
touch docker-compose.yaml
touch Dockerfile
touch php.ini

docker-compose build && docker-compose up -d

docker exec -it bitrix-web chown -R www-data:www-data /var/www/html
docker exec -it bitrix-web bash -c "ls -l /etc/apache2/sites-enabled"
docker exec -it bitrix-web php -m | grep -E 'gd|ldap|intl'
docker exec -it bitrix-web bash -c "php -r 'print_r(gd_info());'"

docker exec -it bitrix-web bash
#ssh root@ppau0.com -p 2222
#docker exec -it bitrix-web apt-get update && apt-get install -y [пакет]

#ls -al /var/www/html/bitrix/logs/
#nano /bitrix/php_interface/after_connect.php
#nano /etc/ldap/ldap.conf

docker-compose restart web

#docker-compose down -v  # Удалите старые контейнеры и тома (если есть)
#docker-compose build --no-cache
#docker-compose up -d
#docker-compose stop

docker logs bitrix-web
docker logs bitrix-db