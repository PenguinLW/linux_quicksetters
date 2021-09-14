rem wget https://dl.google.com/android/repository/sdk-tools-windows-4333796.zip
rem https://developer.android.com/studio > Command line tools only
rem https://github.com/NativeScript/nativescript-cli/issues/5304 > https://dl.google.com/android/repository/
cd .. && cd c:\Programm\android-config\sdk-tools-windows-4333796\tools\bin
sdkmanager --list
pause
sdkmanager "platform-tools" "platforms;android-23"
sdkmanager "platform-tools" "platforms;android-25"
sdkmanager "platform-tools" "platforms;android-26"
rem #https://developer.android.com/studio/releases/platforms #https://developer.android.com/studio
rem sdkmanager "platform-tools" "platforms;android-27"
rem sdkmanager "platform-tools" "platforms;android-28"
rem sdkmanager "platform-tools" "platforms;android-29"
rem sdkmanager "platform-tools" "platforms;android-30"
