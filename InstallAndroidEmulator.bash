#!/bin/bash

# update package index
sudo apt-get update

# install JDK
sudo apt-get install default-jdk -y

# download Android SDK
wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip

# extract Android SDK
unzip sdk-tools-linux-4333796.zip -d android-sdk

# set ANDROID_HOME environment variable
echo 'export ANDROID_HOME=~/android-sdk' >> ~/.bashrc

# set PATH environment variable
echo 'export PATH=$PATH:$ANDROID_HOME/tools' >> ~/.bashrc
echo 'export PATH=$PATH:$ANDROID_HOME/platform-tools' >> ~/.bashrc

# source bashrc
source ~/.bashrc

# install required packages with the Android SDK Manager
yes | sdkmanager "platform-tools" "platforms;android-28" "emulator"

# clean up
rm sdk-tools-linux-4333796.zip
