#!/usr/bin/env bash

#set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd $DIR

apkFile=`ls | grep .apk`
obbFile=`ls | grep .obb`

echo "Uninstalling existing application."

./mac-platform-tools/adb uninstall com.davevillz.pavlov

echo
echo "Installing pavlov"

./mac-platform-tools/adb install $apkFile

echo "Cleaning up file system"

./mac-platform-tools/adb shell rm -r /sdcard/UE4Game/Pavlov
./mac-platform-tools/adb shell rm -r /sdcard/UE4Game/UE4CommandLine.txt
./mac-platform-tools/adb shell rm -r /sdcard/obb/com.davevillz.pavlov
./mac-platform-tools/adb shell rm -r /sdcard/Android/obb/com.davevillz.pavlov

echo "Granting microphone permissions"

./mac-platform-tools/adb shell pm grant com.davevillz.pavlov android.permission.RECORD_AUDIO

echo "Installing new data. Failures here indicate storage problems (missing SD card or bad permissions) and are fatal."

./mac-platform-tools/adb push $obbFile /sdcard/Download/obb/com.davevillz.pavlov/main.1.com.davevillz.pavlov.obb

./mac-platform-tools/adb shell mkdir -p /sdcard/Android/obb/com.davevillz.pavlov

./mac-platform-tools/adb shell mv /sdcard/Download/obb/com.davevillz.pavlov/main.1.com.davevillz.pavlov.obb /sdcard/Android/obb/com.davevillz.pavlov/main.1.com.davevillz.pavlov.obb

echo Installation complete