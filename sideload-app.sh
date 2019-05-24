#!/usr/local/bin/bash

filename=`ls | grep apk`

echo Installing $filename

platform-tools/adb install -r $filename