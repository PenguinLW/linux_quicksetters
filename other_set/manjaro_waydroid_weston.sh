##https://forum.manjaro.org/t/how-to-install-run-waydroid-on-xfce-or-other-non-wayland-desktops/152925
##https://forum.garudalinux.org/t/ultimate-guide-to-install-waydroid-in-any-arch-based-distro-especially-garuda/15902
##https://waydro.id/#install
##https://wiki.archlinux.org/title/Waydroid

pamac build waydroid waydroid-image-gapps

sudo waydroid init
#sudo waydroid init -s GAPPS

#only run this if you want the background waydroid service to automatically run at startup
sudo systemctl enable waydroid-container
sudo systemctl start waydroid-container


sudo pacman -S weston
weston

#after running in terminal inside weston
waydroid show-full-ui


sudo waydroid shell
#ANDROID_RUNTIME_ROOT=/apex/com.android.runtime ANDROID_DATA=/data ANDROID_TZDATA_ROOT=/apex/com.android.tzdata ANDROID_I18N_ROOT=/apex/com.android.i18n sqlite3 /data/data/com.google.android.gsf/databases/gservices.db "select * from main where name = \"android_id\";"

ANDROID_RUNTIME_ROOT=/apex/com.android.runtime
ANDROID_DATA=/data
ANDROID_TZDATA_ROOT=/apex/com.android.tzdata
ANDROID_I18N_ROOT=/apex/com.android.i18n
sqlite3 /data/data/com.google.android.gsf/databases/gservices.db "select * from main where name = \"android_id\";"

##https://www.google.com/android/uncertified
##android_id|3830256203372215808
