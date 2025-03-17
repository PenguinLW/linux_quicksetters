/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install qpdf
curl ifconfig.me
#109.163.217.14

python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip setuptools wheel
pip install img2pdf Pillow opencv-contrib-python
