#in target os
##https://pypi.org/project/opencv-python-armv7l/
git clone --recursive https://github.com/opencv/opencv-python.git
cd opencv-python
export CMAKE_ARGS="-DSOME_FLAG=ON -DSOME_OTHER_FLAG=OFF"
#export ENABLE_CONTRIB=1
pip wheel . --verbose
pip3 install scikit-build numpy
python setup.py bdist_wheel --build-type=Debug #pip wheel . --verbose --build-type=Debug
pip install dist/wheelname.whl
export CMAKE_ARGS='-DCMAKE_VERBOSE_MAKEFILE=ON'
export VERBOSE=1
python3 setup.py bdist_wheel --build-type=Debug #pip wheel . --verbose --build-type=Debug



#apt install usbutils libudev-dev libusb-1.0-0-dev libusb-dev -y
#apt install v4l-utils -y && sudo v4l-ctl --list-devices
#apt install ffmpeg -y #ffplay /dev/video0
#apt install python3.9 -y
#apt install python3.9-dev -y
#apt install python3.9-venv -y

#pip install opencv-python
#pip install opencv-contrib-python
#pip install opencv-python-headless
#pip install opencv-contrib-python-headless
