#in venv
#https://golang.org/doc/install #https://golang.org/dl/ #https://www.tecmint.com/install-go-in-ubuntu/ #https://github.com/golang/go/wiki/GoArm
#https://www.e-tinkers.com/2019/06/better-way-to-install-golang-go-on-raspberry-pi/

wget https://go.dev/dl/go1.17.6.linux-armv6l.tar.gz --no-check-certificate #https://golang.org/dl/go1.17.1.linux-armv6l.tar.gz #https://golang.org/dl/go1.17.1.linux-386.tar.gz #https://golang.org/dl/go1.17.1.linux-amd64.tar.gz #https://golang.org/dl/go1.17.1.linux-arm64.tar.gz
tar -xvzf go1.17.6.linux-armv6l.tar.gz && rm -fr go1.17.6.linux-armv6l.tar.gz

#wget https://go.dev/dl/go1.17.6.linux-arm64.tar.gz --no-check-certificate
#tar -xvzf go1.17.6.linux-arm64.tar.gz && rm -fr go1.17.6.linux-arm64.tar.gz

update-alternatives --install /usr/bin/go go /root/go/bin/go 1
update-alternatives --set go /root/go/bin/go
update-alternatives --install /usr/bin/gofmt gofmt /root/go/bin/gofmt 1
update-alternatives --set gofmt /root/go/bin/gofmt

go version
