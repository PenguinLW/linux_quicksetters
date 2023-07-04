#in venv
#https://golang.org/doc/install  #https://www.tecmint.com/install-go-in-ubuntu/

#https://golang.org/dl/
wget https://go.dev/dl/go1.20.5.linux-amd64.tar.gz --no-check-certificate #https://golang.org/dl/go1.17.1.linux-amd64.tar.gz #https://golang.org/dl/go1.17.1.linux-386.tar.gz
tar -xvzf go1.20.5.linux-amd64.tar.gz && rm -fr go1.20.5.linux-amd64.tar.gz

#cd ~ && ln -s /{path_to}/{cur_dir}/go

sudo update-alternatives --install /usr/bin/go go ~/go/bin/go 1
sudo update-alternatives --set go ~/go/bin/go
sudo update-alternatives --install /usr/bin/gofmt gofmt ~/go/bin/gofmt 1
sudo update-alternatives --set gofmt ~/go/bin/gofmt

#or for manjaro, arch-based
cd /usr/bin/
sudo ln -s ~/go/bin/go #chmod u+x /usr/bin/go
sudo ln -s ~/go/bin/gofmt #chmod u+x /usr/bin/gofmt

go version
