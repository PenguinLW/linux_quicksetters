#https://github.com/bol-van/zapret
cd ~
git clone https://github.com/bol-van/zapret.git

./install_bin.sh
./install_prereq.sh #iptables

#https://wiki.archlinux.org/title/Dnscrypt-proxy_(Русский)
sudo pacman -S dnscrypt-proxy

#uncomment "server_names" and add [..'cloudflare', 'cloudflare-ipv6'..]
#find "listen_addresses" and add [..'[::1]:53'..]
nano /etc/dnscrypt-proxy/dnscrypt-proxy.toml

ss -lp 'sport = :domain'

#comment all and add
#"""
#	nameserver ::1
#	nameserver 127.0.0.1
#	options edns0 single-request-reopen
#"""
sudo nano /etc/resolv.conf
sudo chattr +i /etc/resolv.conf

sudo systemctl enable dnscrypt-proxy.service
sudo systemctl start dnscrypt-proxy.service

sudo systemctl enable systemd-resolved.service
sudo systemctl start systemd-resolved.service

sudo pacman -S dnsutils

./blockcheck.sh
# rutracker.org; version 4 - DEFAULT (enter); http, https, quick - YES; repeat each test - 5; standart - 2;
# rutracker.org kinogo-net.la instagram.com spotify.com; version 4 - DEFAULT (enter); http, https, quick - YES; repeat each test - 5; standart - 2;

##ipv4 rutracker.org curl_test_https_tls12: #nfqws --dpi-desync=fake,split --dpi-desync-fooling=md5sig; nfqws --dpi-desync=fake,disorder2 --dpi-desync-ttl=1 --dpi-desync-autottl=3
./install-easy.sh

#results for (rutracker.org)
#	ipv4 rutracker.org curl_test_http : tpws --methodeol
#	ipv4 rutracker.org curl_test_http : nfqws --dpi-desync=fake --dpi-desync-ttl=5
#	ipv4 rutracker.org curl_test_https_tls12 : tpws not working
#	ipv4 rutracker.org curl_test_https_tls12 : nfqws --dpi-desync=fake --dpi-desync-ttl=5
#	ipv4 rutracker.org curl_test_http3 : nfqws --dpi-desync=fake
#results for (rutracker.org kinogo-net.la instagram.com spotify.com)

./install_easy.sh
#save original: NFQWS_OPT_DESYNC="--dpi-desync=fake --dpi-desync-ttl=0 --dpi-desync-ttl6=0 --dpi-desync-fooling=badsum"
#replace for this:
#	NFQWS_OPT_DESYNC="--dpi-desync=fake --dpi-desync-ttl=5"
#	NFQWS_OPT_DESYNC=""
