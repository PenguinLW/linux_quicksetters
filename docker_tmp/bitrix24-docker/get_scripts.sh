docker exec -it bitrix-web chown -R www-data:www-data /var/www/html
cd web/html
wget https://www.1c-bitrix.ru/download/scripts/bitrixsetup.php
wget https://www.1c-bitrix.ru/download/scripts/restore.php


#curl -O https://www.bitrix.ru/download/scripts/bitrixsetup.php
#curl -O https://www.bitrix.ru/download/scripts/restore.php
