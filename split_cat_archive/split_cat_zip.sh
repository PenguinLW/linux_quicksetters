#https://losst.pro/kak-razbit-fajl-na-chasti-linux
split -b 1900M *.zip "split_archive.zip.part_"
#cat split_archive.zip.part_* > cat_archive.zip
