#!/bin/bash

# this script installs swift to the /usr/share/swift
# Install Dependancies:
sudo apt-get install clang -y
sudo apt-get install libcurl3 libpython2.7 libpython2.7-dev -y

#Update this to the latest swift version:
wget https://swift.org/builds/swift-5.3.2-release/ubuntu2004/swift-5.3.2-RELEASE/swift-5.3.2-RELEASE-ubuntu20.04.tar.gz

#Unzip File:
tar xzf swift-5.3.2-RELEASE/swift-5.3.2-RELEASE-ubuntu20.04.tar.gz

#Copy to destination
sudo mv swift-5.3.2-RELEASE-ubuntu20.04 /usr/share/swift
rm swift-5.3.2-RELEASE/swift-5.3.2-RELEASE-ubuntu20.04.tar.gz

# Export to path and refresh bashrc
echo "export PATH=/usr/share/swift/usr/bin:$PATH" >> ~/.bashrc
source  ~/.bashrc

echo swift --version
