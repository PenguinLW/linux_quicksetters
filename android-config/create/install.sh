#wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
cd .. && cd tools/tools/bin/
./sdkmanager --list
./sdkmanager "platform-tools" "platforms;android-23"
./sdkmanager "platform-tools" "platforms;android-25"
./sdkmanager "platform-tools" "platforms;android-26"
#./sdkmanager "platform-tools" "platforms;android-27"
#./sdkmanager "platform-tools" "platforms;android-28"
#./sdkmanager "platform-tools" "platforms;android-29"
#./sdkmanager "platform-tools" "platforms;android-30"
