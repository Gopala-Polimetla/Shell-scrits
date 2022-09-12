#!/bin/bash

#ssh -i "myown.pem" ec2-user@ec2-34-227-190-240.compute-1.amazonaws.com
#echo "connected to ec2 instance"
yum update -y
echo "updated"
groupadd gopala
useradd gopala -g gopala
echo "group and user created"
sudo amazon-linux-extras install java-openjdk11 -y
#echo "java installed"
cd /opt/
#move to opt directory
pwd
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.6.1.59531.zip
yum install unzip -y
unzip sonarqube-9.6.1.59531.zip
chown -R gopala:gopala /opt/sonarqube-9.6.1.59531
chmod -R 777 /otp/sonarqube-9.6.1.59531
ls -la
cd /opt/sonarqube-9.6.1.59531/bin/linux-x86-64
./sonar.sh start



