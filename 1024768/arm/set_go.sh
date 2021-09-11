#in venv
#https://golang.org/dl/ #https://www.tecmint.com/install-go-in-ubuntu/
wget https://golang.org/dl/go1.17.1.linux-amd64.tar.gz --no-check-certificate
tar -xvzf go1.17.1.linux-amd64.tar.gz && rm -fr go1.17.1.linux-amd64.tar.gz

update-alternatives --install /usr/bin/go go /root/go/bin/go 1
update-alternatives --set go /root/go/bin/go
update-alternatives --install /usr/bin/gofmt gofmt /root/go/bin/gofmt 1
update-alternatives --set gofmt /root/go/bin/gofmt
