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
# rutracker.org kinogo-net.la chatgpt.com youtube.com instagram.com spotify.com; version 4 - DEFAULT (enter); http, https, quick - YES; repeat each test - 7; force - 3;
# rutracker.org kinogo-net.la chatgpt.com youtube.com es.pornhub.com instagram.com spotify.com; version 4 - DEFAULT (enter); http, https, quick - YES; repeat each test - 7; force - 3;

##ipv4 rutracker.org curl_test_https_tls12: #nfqws --dpi-desync=fake,split --dpi-desync-fooling=md5sig; nfqws --dpi-desync=fake,disorder2 --dpi-desync-ttl=1 --dpi-desync-autottl=3
./install-easy.sh

#results for (rutracker.org)
#	ipv4 rutracker.org curl_test_http : tpws --methodeol
#+	ipv4 rutracker.org curl_test_http : nfqws --dpi-desync=fake --dpi-desync-ttl=5
#	ipv4 rutracker.org curl_test_https_tls12 : tpws not working
#	ipv4 rutracker.org curl_test_https_tls12 : nfqws --dpi-desync=fake --dpi-desync-ttl=5
#	ipv4 rutracker.org curl_test_http3 : nfqws --dpi-desync=fake

#results for (rutracker.org kinogo-net.la instagram.com spotify.com)
#	ipv4 rutracker.org curl_test_http : working without bypass
#	ipv4 rutracker.org curl_test_https_tls12 : working without bypass
#	ipv4 rutracker.org curl_test_http3 : nfqws --dpi-desync=fake
#	ipv4 kinogo-net.la curl_test_http : tpws --split-http-req=host --disorder
#	ipv4 kinogo-net.la curl_test_http : nfqws --dpi-desync=fake --dpi-desync-ttl=6
#	ipv4 kinogo-net.la curl_test_https_tls12 : tpws --split-tls=sni --oob
#+	ipv4 kinogo-net.la curl_test_https_tls12 : nfqws --dpi-desync=fake --dpi-desync-ttl=6
#	ipv4 kinogo-net.la curl_test_http3 : nfqws not working
#	ipv4 instagram.com curl_test_http : tpws not working
#	ipv4 instagram.com curl_test_http : nfqws --dpi-desync=fake,disorder --dpi-desync-ttl=9 --dpi-desync-fake-http=0x00000000
#	ipv4 instagram.com curl_test_https_tls12 : working without bypass
#	ipv4 instagram.com curl_test_http3 : nfqws --dpi-desync=fake
#	ipv4 spotify.com curl_test_http : working without bypass
#	ipv4 spotify.com curl_test_https_tls12 : working without bypass
#	ipv4 spotify.com curl_test_http3 : working without bypass

#results for (rutracker.org kinogo-net.la chatgpt.com youtube.com instagram.com spotify.com)
#	ipv4 rutracker.org curl_test_http : working without bypass
#	ipv4 rutracker.org curl_test_http : tpws --hostcase
#??	ipv4 rutracker.org curl_test_http : nfqws --hostcase
#	ipv4 rutracker.org curl_test_https_tls12 : working without bypass
#	ipv4 rutracker.org curl_test_https_tls12 : tpws --split-tls=sni
#	ipv4 rutracker.org curl_test_https_tls12 : nfqws --dpi-desync=fake --dpi-desync-ttl=5
#?	ipv4 rutracker.org curl_test_http3 : nfqws --dpi-desync=fake
#	ipv4 kinogo-net.la curl_test_http : working without bypass
#	ipv4 kinogo-net.la curl_test_http : tpws --hostcase
#??	ipv4 kinogo-net.la curl_test_http : nfqws --hostcase
#	ipv4 kinogo-net.la curl_test_https_tls12 : working without bypass
#	ipv4 kinogo-net.la curl_test_https_tls12 : tpws --split-tls=sni
#?	ipv4 kinogo-net.la curl_test_https_tls12 : nfqws --dpi-desync=fake --dpi-desync-ttl=6
#	ipv4 kinogo-net.la curl_test_http3 : nfqws not working
#	ipv4 chatgpt.com curl_test_http : working without bypass
#	ipv4 chatgpt.com curl_test_http : tpws --hostcase
#??	ipv4 chatgpt.com curl_test_http : nfqws --hostcase
#	ipv4 chatgpt.com curl_test_https_tls12 : working without bypass
#	ipv4 chatgpt.com curl_test_https_tls12 : tpws --split-tls=sni
#?	ipv4 chatgpt.com curl_test_https_tls12 : nfqws --dpi-desync=split2 --dpi-desync-split-tls=sni
#	ipv4 chatgpt.com curl_test_http3 : nfqws not working
#	ipv4 youtube.com curl_test_http : working without bypass
#	ipv4 youtube.com curl_test_http : tpws --hostcase
#??	ipv4 youtube.com curl_test_http : nfqws --hostcase
#	ipv4 youtube.com curl_test_https_tls12 : working without bypass
#	ipv4 youtube.com curl_test_https_tls12 : tpws --split-tls=sni
#+?	ipv4 youtube.com curl_test_https_tls12 : nfqws --dpi-desync=fake --dpi-desync-ttl=3
#??	ipv4 youtube.com curl_test_http3 : nfqws --dpi-desync=fake --dpi-desync-repeats=5
#	ipv4 instagram.com curl_test_http : working without bypass
#	ipv4 instagram.com curl_test_http : tpws --hostcase
#?	ipv4 instagram.com curl_test_http : nfqws --hostcase
#	ipv4 instagram.com curl_test_https_tls12 : working without bypass
#	ipv4 instagram.com curl_test_https_tls12 : tpws --split-tls=sni
#	ipv4 instagram.com curl_test_https_tls12 : nfqws --dpi-desync=fake --dpi-desync-ttl=4
#	ipv4 instagram.com curl_test_http3 : nfqws --dpi-desync=fake
#	ipv4 spotify.com curl_test_http : working without bypass
#	ipv4 spotify.com curl_test_http : tpws --hostcase
#??	ipv4 spotify.com curl_test_http : nfqws --hostcase
#	ipv4 spotify.com curl_test_https_tls12 : working without bypass
#	ipv4 spotify.com curl_test_https_tls12 : tpws --split-tls=sni
#?	ipv4 spotify.com curl_test_https_tls12 : nfqws --dpi-desync=split2
#	ipv4 spotify.com curl_test_http3 : working without bypass
#	ipv4 spotify.com curl_test_http3 : nfqws --dpi-desync=fake

#results for (rutracker.org kinogo-net.la chatgpt.com youtube.com es.pornhub.com instagram.com spotify.com)
#	ipv4 rutracker.org curl_test_http : tpws --methodeol
#	ipv4 rutracker.org curl_test_http : nfqws --dpi-desync=fake,split --dpi-desync-ttl=6 --dpi-desync-fake-http=0x00000000
#	ipv4 rutracker.org curl_test_https_tls12 : working without bypass
#	ipv4 rutracker.org curl_test_https_tls12 : tpws --split-tls=sni
#	ipv4 rutracker.org curl_test_https_tls12 : nfqws --dpi-desync=fake --dpi-desync-ttl=5
#	ipv4 rutracker.org curl_test_http3 : nfqws --dpi-desync=fake
#	ipv4 kinogo-net.la curl_test_http : tpws --split-http-req=host --disorder
#	ipv4 kinogo-net.la curl_test_http : nfqws --dpi-desync=fake --dpi-desync-ttl=6
#	ipv4 kinogo-net.la curl_test_https_tls12 : tpws --split-tls=sni --oob
#	ipv4 kinogo-net.la curl_test_https_tls12 : nfqws --dpi-desync=fake --dpi-desync-ttl=6
#	ipv4 kinogo-net.la curl_test_http3 : nfqws not working
#	ipv4 chatgpt.com curl_test_http : working without bypass
#	ipv4 chatgpt.com curl_test_http : tpws --hostcase
#	ipv4 chatgpt.com curl_test_http : nfqws --hostcase
#	ipv4 chatgpt.com curl_test_https_tls12 : working without bypass
#	ipv4 chatgpt.com curl_test_https_tls12 : tpws --split-tls=sni
#	ipv4 chatgpt.com curl_test_https_tls12 : nfqws --dpi-desync=split2
#	ipv4 chatgpt.com curl_test_http3 : nfqws not working
#	ipv4 youtube.com curl_test_http : working without bypass
#	ipv4 youtube.com curl_test_http : tpws --hostcase
#	ipv4 youtube.com curl_test_http : nfqws --hostcase
#	ipv4 youtube.com curl_test_https_tls12 : working without bypass
#	ipv4 youtube.com curl_test_https_tls12 : tpws --split-tls=sni
#	ipv4 youtube.com curl_test_https_tls12 : nfqws --dpi-desync=fake --dpi-desync-ttl=3
#?	ipv4 youtube.com curl_test_http3 : nfqws --dpi-desync=fake --dpi-desync-repeats=5
#	ipv4 es.pornhub.com curl_test_http : working without bypass
#	ipv4 es.pornhub.com curl_test_http : tpws --hostcase
#	ipv4 es.pornhub.com curl_test_http : nfqws --hostcase
#	ipv4 es.pornhub.com curl_test_https_tls12 : tpws --split-tls=sni
#	ipv4 es.pornhub.com curl_test_https_tls12 : nfqws --dpi-desync=split2 --dpi-desync-split-tls=sni
#	ipv4 es.pornhub.com curl_test_http3 : nfqws not working
#	ipv4 instagram.com curl_test_http : tpws not working
#	ipv4 instagram.com curl_test_http : nfqws --dpi-desync=disorder --dpi-desync-ttl=4
#	ipv4 instagram.com curl_test_https_tls12 : tpws --split-tls=sni --disorder
#	ipv4 instagram.com curl_test_https_tls12 : nfqws --dpi-desync=fake --dpi-desync-ttl=4
#	ipv4 instagram.com curl_test_http3 : nfqws --dpi-desync=fake
#	ipv4 spotify.com curl_test_http : working without bypass
#	ipv4 spotify.com curl_test_http : tpws --hostcase
#	ipv4 spotify.com curl_test_http : nfqws --hostcase
#	ipv4 spotify.com curl_test_https_tls12 : working without bypass
#	ipv4 spotify.com curl_test_https_tls12 : tpws --split-tls=sni
#	ipv4 spotify.com curl_test_https_tls12 : nfqws --dpi-desync=split2
#	ipv4 spotify.com curl_test_http3 : working without bypass
#	ipv4 spotify.com curl_test_http3 : nfqws --dpi-desync=fake

./install_easy.sh
#save original: NFQWS_OPT_DESYNC="--dpi-desync=fake --dpi-desync-ttl=0 --dpi-desync-ttl6=0 --dpi-desync-fooling=badsum"
#replace for this:
#	NFQWS_OPT_DESYNC="--dpi-desync=fake --dpi-desync-ttl=5"
#	NFQWS_OPT_DESYNC="--dpi-desync=fake --dpi-desync-ttl=6"
#	NFQWS_OPT_DESYNC="--dpi-desync=fake --dpi-desync-ttl=3" #"--dpi-desync=fake --dpi-desync-repeats=5" #"--hostcase" #"--dpi-desync=fake --dpi-desync-ttl=6 --dpi-desync=split2 --dpi-desync-split-tls=sni --hostcase"
#	NFQWS_OPT_DESYNC=""

#save original: TPWS_OPT="--hostspell=HOST --split-http-req=method --split-pos=3 --oob"
#replace for this:
#
#
#	TPWS_OPT="--split-tls=sni"
#


sudo systemctl stop dnscrypt-proxy.service

sudo systemctl stop systemd-resolved.service
sudo systemctl disable dnscrypt-proxy.service

sudo systemctl disable systemd-resolved.service


sudo chattr -i /etc/resolv.conf
