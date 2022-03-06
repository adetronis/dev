#!/bin/bash

####Description: Writing Bash Script to automate installation of docker and its dependencies on centos7
####Author: Adetayo Oni
####Date March 2022

echo "This is the beginning of scripting"
echo
echo " Step 1: Clean up the system"
echo
sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engin ec
echo
sudo yum install -y yum-utils
echo
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo -y
echo
sudo yum install docker-ce docker-ce-cli contained.io
echo
sudo systemctl start docker
echo
sudo systemctl enable docker
echo
sudo systemctl status docker
echo
echo "The installation completed successfully"
