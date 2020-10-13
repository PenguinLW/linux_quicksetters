#https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
cd .. && cd tools/tools/bin/
./sdkmanager --list
./sdkmanager "platform-tools" "platforms;android-23"
