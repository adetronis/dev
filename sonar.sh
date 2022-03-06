#!/bin/bash


#####Description: The installation and configuration SonarQube on CentOS 7
####Author: Sam Oni
####Date: February 2022
####Team: Utrains 
####Purpose: Middleware tean handling the request from DevOps team to build a SonarQube server      

echo "This is the installation and configuration script of sonarQube server"
echo "Hint!!! The installation of SonarQube Server needs to be run as a regular user because technically SonarQube will not work when started as root user. i.e. su - vagrant"
echo
echo "Step 1:"
echo "Update the centos7 server at the beginning of the project to build SonarQube Server"
sudo yum update -y
echo
echo "Installtion of java openJDK 11 is a requirement java because SonarQube integrate with java framework to work like jenkins"
sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y
echo
echo "Step 2:"
echo "Navigate to the directory /opt where SonarQube latest version will be downloaded to in the system"
echo
cd /opt
echo
echo "Install wget if the package does not exist on the centos7 machine"
echo
sudo yum install wget -y
echo "Download SonarQube package as shown below!!!"
echo
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
echo
echo "Step 3:"
echo "Extract the packages using unzip software"
echo
sudo yum install unzip -y
echo
sudo unzip /opt/sonarqube-9.3.0.51899.zip
echo
echo "Step 4:"
echo "Change the ownership to the user and switch to Linux binaries directory to start the service" 
echo
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
echo
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
echo
./sonar.sh start
echo
echo "Connect to SonarQube using the host server ip address and the SonarQube service port number i.e 192.168.56.33:900"
echo
echo "http://192.168.56.33:9000"
echo 
echo "The installation and configurtion of SonarQube Server complete
