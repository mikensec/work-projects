#!/bin/bash

# update package index
sudo apt update

# install JDK
sudo apt install default-jdk -y

# download Android SDK
wget https://dl.google.com/android/repository/commandlinetools-linux-9477386_latest.zip

# extract Android SDK
sudo apt install unzip
unzip commandlinetools-linux-9477386_latest.zip -d android-sdk

# set ANDROID_HOME environment variable
echo 'export ANDROID_HOME=~/android-sdk' >> ~/.bashrc

# set PATH environment variable
echo 'export PATH=$PATH:$ANDROID_HOME/tools' >> ~/.bashrc
echo 'export PATH=$PATH:$ANDROID_HOME/platform-tools' >> ~/.bashrc

# source bashrc
source ~/.bashrc

# install required packages with the Android SDK Manager
yes | sdkmanager "platform-tools" "platforms;android-28" "emulator"


