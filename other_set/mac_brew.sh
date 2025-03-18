/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install qpdf
brew install docker-compose

echo "192.168.0.109 ppau1.com" | sudo tee -a /etc/hosts
echo "192.168.0.110 ppau2.com" | sudo tee -a /etc/hosts
sudo killall -HUP mDNSResponder
curl ifconfig.me
#109.163.217.14

python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip setuptools wheel
pip install img2pdf Pillow opencv-contrib-python
