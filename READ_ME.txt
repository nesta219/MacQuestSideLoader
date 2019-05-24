##### Mac Side Loader Script For Oculus Quest #####

This script will help you to side load games (.apk files) onto your Oculus Quest

Instructions:

1) Make sure that you have enabled developer mode on your Quest headset (see this guide: https://developer.oculus.com/documentation/quest/latest/concepts/mobile-device-setup-quest/)

1) Connect your Oculus quest to your mac via usb.
x) Make sure from within the headset that you have clicked Allow on the prompt asking you if you would like to enable USB debugging
1) Drag the .apk file that you would like to side-load into the same folder as the sideload-app.sh file.  IT IS IMPORTANT that only 1 apk file be present in this folder, or you may not install the right thing.
2) Open the Terminal app (you can find this under Applications/Utilities, or by searching for it in spotlight)
3) Drag the sideload-app.sh file into the terminal window, and press enter
4) Wait for the following output to appear (it can take a few minutes depending on the size of the install) :

    Installing your-sideloaded-app.apk
    Performing Streamed Install
    Success

5) Once the terminal prompt comes back, check your library in your headset and you should see a category for "Unknown Sources"
6) Game on!


Written by Mike Nesta
nesta219@gmail.com
https://github.com/nesta219