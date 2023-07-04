#in venv
cd ~ #or in current dir
git clone https://github.com/varbhat/exatorrent.git

##build in node (with auto)
cd exatorrent/
mkdir internal/web/build/
touch internal/web/build/exatorrent
make web #make web && make app

##build in node (manual, with npm)
#cd internal/web/

#npm fund
##in package-lock.json "lockfileVersion": 1 or the code "hasInstallScript": true
#npm config get ignore-scripts
#npm config set ignore-scripts true

#npm install
#npm run-script build

##build in go
make app #make web && make app
##build in go (manual)
#env CGO_ENABLED=1 go build -trimpath -buildmode=pie -ldflags '-extldflags "-static -s -w"' -o  build/exatorrent exatorrent.go

cd ~
update-alternatives --install /usr/bin/exatorrent exatorrent ~/exatorrent/build/exatorrent 1
update-alternatives --set exatorrent ~/exatorrent/build/exatorrent

#or for manjaro, arch-based
cd /usr/bin/
sudo ln -s /{path_to}/{cur_dir}/exatorrent/build/exatorrent
#chmod u+x /usr/bin/exatorrent
