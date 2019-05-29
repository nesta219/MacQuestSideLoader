#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

filename=`ls | grep apk`

echo Installing $filename

$DIR/platform-tools/adb install -r $filename
