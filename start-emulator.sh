#!/bin/bash

# create a virtual device with the AVD Manager
echo "no" | avdmanager create avd --name my_avd --package "system-images;android-28;google_apis;x86"

# start the emulator in the background
emulator -avd my_avd -no-window &

# wait for the emulator to start
until adb wait-for-device shell getprop init.svc.bootanim; do sleep 1; done

# unlock the emulator screen
adb shell input keyevent 82
