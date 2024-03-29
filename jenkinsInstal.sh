#!/bin/bash 
sudo apt-get update
#run the following command to install JDK 11:
sudo apt-get install openjdk-11-jdk
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins # to install jenkins
sudo systemctl start jenkins.service #to start the services of jenkins
sudo systemctl status jenkins #to check the status of the jenkins

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# after instalation to get the passwor from sudo cat  /var/lib/jenkins/secrets/initialAdminPassword
#install the plugins and ater give the proper username,password your fullname,your emails id.
#after Then specify the preferred Jenkins URL and finish the configuration process
