##### Mac Side Loader Script For Oculus Quest #####

This script will help you to side load games (.apk files) onto your Oculus Quest

Instructions:

1) Make sure that you have enabled developer mode on your Quest headset (see this guide: https://developer.oculus.com/documentation/quest/latest/concepts/mobile-device-setup-quest/)
2) Connect your Oculus quest to your mac via usb.
3) Make sure from within the headset that you have enabled developer mode in the settings and clicked Allow on the prompt asking you if you would like to enable USB debugging
4) Drag the .apk file that you would like to side-load into the same folder as the sideload-app.sh file.  IT IS IMPORTANT that only 1 apk file be present in this folder at a time, or you may not install the right thing.
5) Open the Terminal app (you can find this under Applications/Utilities, or by searching for it in Spotlight)
6) Drag the sideload-app.sh file into the terminal window, and press enter
7) Wait for the following output to appear (it can take a few minutes depending on the size of the install) :

    Installing your-sideloaded-app.apk
    Performing Streamed Install
    Success

8) Once the terminal prompt comes back, check your library in your headset and you should see a category for "Unknown Sources"
9) Game on!


Written by: Mike Nesta nesta219@gmail.com

Please submit issues at https://github.com/nesta219/MacQuestSideLoader