#wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
#curl -O http://dl.google.com/android/repository/commandlinetools-mac-6514223_latest.zip
cd .. && cd tools/tools/bin/
./sdkmanager --list
./sdkmanager "platform-tools" "platforms;android-23"
./sdkmanager "platform-tools" "platforms;android-25"
./sdkmanager "platform-tools" "platforms;android-26"
./sdkmanager "platform-tools" "platforms;android-30"
./sdkmanager "platform-tools" "platforms;android-31"
#https://developer.android.com/studio/releases/platforms #https://developer.android.com/studio
#./sdkmanager "platform-tools" "platforms;android-27"
#./sdkmanager "platform-tools" "platforms;android-28"
#./sdkmanager "platform-tools" "platforms;android-29"
#./sdkmanager "platform-tools" "platforms;android-30"
