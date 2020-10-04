rem https://developer.android.com/studio > Command line tools only
rem https://github.com/NativeScript/nativescript-cli/issues/5304 > https://dl.google.com/android/repository/
cd .. && e:\Programm\android-config\sdk-tools-windows-4333796\tools\bin
sdkmanager --list
sdkmanager "platform-tools" "platforms;android-23"
