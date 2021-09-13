#in venv
#https://golang.org/doc/install  #https://www.tecmint.com/install-go-in-ubuntu/

#https://golang.org/dl/
wget https://golang.org/dl/go1.17.1.linux-amd64.tar.gz --no-check-certificate #https://golang.org/dl/go1.17.1.linux-386.tar.gz
tar -xvzf go1.17.1.linux-amd64.tar.gz && rm -fr go1.17.1.linux-amd64.tar.gz

sudo update-alternatives --install /usr/bin/go go /home/penguinl/go/bin/go 1
sudo update-alternatives --set go /home/penguinl/go/bin/go
sudo update-alternatives --install /usr/bin/gofmt gofmt /home/penguinl/go/bin/gofmt 1
sudo update-alternatives --set gofmt /home/penguinl/go/bin/gofmt

go version