#!/bin/bash
# this script installs swift to the /usr/share/swift
# source file: https://github.com/tensorflow/swift/blob/main/Installation.md

# Install Dependancies:
sudo apt-get install \
          clang \
          binutils \
          git \
          gnupg2 \
          libc6-dev \
          libcurl4 \
          libedit2 \
          libgcc-9-dev \
          libpython2.7 \
          libsqlite3-0 \
          libstdc++-9-dev \
          libxml2 \
          libz3-dev \
          pkg-config \
          tzdata \
          zlib1g-dev -y

sudo apt install libncurses5 libtinfo5

#Update this to the latest swift version:
wget https://storage.googleapis.com/swift-tensorflow-artifacts/releases/v0.12/rc2/swift-tensorflow-RELEASE-0.12-cuda11.0-cudnn8-ubuntu18.04.tar.gz

#Unzip File:
tar swift-tensorflow-RELEASE-0.12-cuda11.0-cudnn8-ubuntu18.04.tar.gz

#Copy to destination
sudo mv swift-tensorflow-RELEASE-0.12-cuda11.0-cudnn8-ubuntu18.04 /usr/share/swift
rm swift-tensorflow-RELEASE-0.12-cuda11.0-cudnn8-ubuntu18.04.tar.gz

# Export to path and refresh bashrc
# echo "export PATH=/usr/share/swift/usr/bin:$PATH" >> ~/.bashrc
source  ~/.bashrc

echo "\n This should display the swift version if installation went properly:"
swift --version
