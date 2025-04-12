##https://old.manjaro.ru/newby-corner/oshibka-sinhronizacii-bazy-dannyh-aur.html

sudo pamac build google-chrome --no-confirm

##Внимание: Сборка пакетов от имени динамического пользователя
##Внимание: Настраивается каталог сборки на /var/cache/pamac
##Failed to read AUR data from /var/lib/pacman/sync/packages-meta-ext-v1.json.gz : Произошла ошибка открытия файла /var/lib/pacman/sync/packages-meta-ext-v1.json.gz: Нет такого файла или каталога
##Failed to read AUR data from /var/lib/pacman/sync/packages-meta-ext-v1.json.gz : Произошла ошибка открытия файла /var/lib/pacman/sync/packages-meta-ext-v1.json.gz: Нет такого файла или каталога
##Ошибка: объект не найден: google-chrome

ls -al /var/lib/pacman/sync/

sudo cd /var/lib/pacman/sync/
sudo curl -O aur.manjaro.org/packages-meta-ext-v1.json.gz

cd ~
sudo pamac build google-chrome --no-confirm









sudo nano /etc/pacman.conf
#[core]
#Include = /etc/pacman.d/mirrorlist

#[extra]
#Include = /etc/pacman.d/mirrorlist

sudo pacman -Syy
##sudo reflector --country Russia --latest 10 --sort rate --save /etc/pacman.d/mirrorlist

sudo pacman -Scc
sudo pacman -Rns $(pacman -Qtdq)


sudo pacman -Syu

##sudo nano /etc/pacman.d/mirrorlist
#Server = https://mirror.yandex.ru/archlinux/$repo/os/$arch

#sudo timedatectl set-ntp true
