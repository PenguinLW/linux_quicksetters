/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install qpdf
brew install docker docker-compose nginx
brew services start nginx
#brew uninstall docker docker-compose
#brew install javacc
curl -O https://desktop.docker.com/mac/main/amd64/117440/Docker.dmg
curl -O http://dl.google.com/android/repository/commandlinetools-mac-6514223_latest.zip
curl -O https://download.oracle.com/java/24/latest/jdk-24_macos-x64_bin.dmg
#which java javac
#java -version && java -version
#nginx -v
#nginx -V
#nginx -t
#nginx -s reload

echo "192.168.0.109 ppau1.com" | sudo tee -a /etc/hosts
echo "192.168.0.110 ppau2.com" | sudo tee -a /etc/hosts
sudo killall -HUP mDNSResponder
curl ifconfig.me
#109.163.217.14

python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip setuptools wheel
pip install img2pdf Pillow opencv-contrib-python buildozer cython nodeenv dotenv python-nginx fastapi uvicorn


echo $SHELL
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
nano ~/.zshrc
#ZSH_THEME="robbyrussell"
#plugins=(git)
source ~/.zshrc

#or
nano ~/.zshrc
#autoload -Uz vcs_info
#precmd() { vcs_info }
#zstyle ':vcs_info:git:*' formats '%b %u%c'
#setopt PROMPT_SUBST
#PROMPT='%n@%m %~ ${vcs_info_msg_0_} $ '
source ~/.zshrc
