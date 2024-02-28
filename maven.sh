#!/bin/bash

echo "STEP 1: update ubuntu and install unzip and jdk-17"
sudo apt update -y && sudo apt install -y  unzip openjdk-17-jdk
echo

echo "STEP 2: install maven 3.9.6 version and unzip it"
wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.zip && unzip apache-maven-3.9.6-bin.zip
echo

echo "STEP 3: create s symbolic link of mvn binary in $PATH"
sudo ln -s /home/ubuntu/apache-maven-3.9.6/bin/mvn  /usr/local/sbin/mvn
sudo chmod 777 /usr/local/sbin/mvn
echo

echo "------------------Jdk and maven installed successfully-----------------------"
