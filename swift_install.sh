#!/bin/bash
# this script installs swift to the /usr/share/swift
# source file: https://swift.org/download/#using-downloads

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

#Update this to the latest swift version:
wget https://swift.org/builds/swift-5.3.2-release/ubuntu2004/swift-5.3.2-RELEASE/swift-5.3.2-RELEASE-ubuntu20.04.tar.gz

#Unzip File:
tar swift-5.3.2-RELEASE-ubuntu20.04.tar.gz

#Copy to destination
sudo mv swift-5.3.2-RELEASE-ubuntu20.04 /usr/share/swift
rm swift-5.3.2-RELEASE-ubuntu20.04.tar.gz

# Export to path and refresh bashrc
echo "export PATH=/usr/share/swift/usr/bin:$PATH" >> ~/.bashrc
source  ~/.bashrc

echo "\n This should display the swift version if installation went properly:"
swift --version
