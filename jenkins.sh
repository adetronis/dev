#!/bin/bash

###Description: Jenkins Automation Server Installation on Centos7
###Author: Sam Oni
###Date: February 2022
###Team: Utrains-project2
###Purpose: Middleware team handling DevOps team request to build Jenkins Automation server





echo "Step is the installation of java frameword required for jenkins automation server installation"
sudo yum install java-1.8.0-openjdk-devel
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo sed -i 's/gpgcheck=1/gpgcheck=0/g' /etc/yum.repos.d/jenkins.repo
sudo yum install jenkins
echo
echo
echo "This step involved using systemsctl command to start, enable and display jenkins running status"
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
echo
echo "This step open port 8080 with which that make the service of jenkins available to the public world"
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload
echo
echo "After the installation the set up jenkins automation server on the browser using the linux ip 
address 192.168.56.32 and the jenkins port 8080 i.e. http://192.168.56.32:8080"
echo
echo "You will follow onscreen instruction to complete the automation server and create the first admin user that will open the jenkins automation server beautiful dasboard for CICD pipeline project configuration procedures"
echo
echo "This all that involves setting up jenkins automation server for devops useage"
