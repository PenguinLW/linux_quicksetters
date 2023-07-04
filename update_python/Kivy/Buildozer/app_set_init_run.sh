buildozer init
rm -rf ~/.buildozer/android/packages
rm -rf ~/.buildozer/android/app
buildozer android debug


##
buildozer init
buildozer android debug
buildozer android debug deploy
buildozer android debug deploy run
