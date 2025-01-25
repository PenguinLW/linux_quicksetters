#in termux
apt install git -y
apt install wget -y

wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/SSH/Apt/ssh-apt.sh && bash ssh-apt.sh

apt install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh && bash ubuntu.sh



#update-alternatives --install /usr/bin/arm_up arm_up /root/Programm/arm/arm_create/arm_up.sh 1

#update-alternatives --set arm_up /root/Programm/arm/arm_create/arm_up.sh
./start-ubuntu.sh

##in target os
cd ~
mv .* ../home/
cd ..
mv root/ _root
ln -s home/ root
cd ~
apt update -y && apt-get update -y
apt upgrade -y && apt-get upgrade -y
apt-get install nano nautilus gnome-terminal nmap net-tools iproute2 zsh git python3-venv -y #lsd vim
usermod -aG sudo root

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s zsh
nano ~/.zshrc
##ZSH_THEME="powerlevel10k/powerlevel10k"
##plugins=(git autoupdate zsh-autocomplete zsh-autosuggestions zsh-syntax-highlighting)

dpkg --print-architecture
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
export UPDATE_ZSH_DAYS=1
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/TamCore/autoupdate-oh-my-zsh-plugins $ZSH_CUSTOM/plugins/autoupdate
git clone https://github.com/marlonrichert/zsh-autocomplete ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autocomplete
source ~/.zshrc

