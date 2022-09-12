#!/bin/bash

#ssh -i "myown.pem" ec2-user@ec2-34-227-190-240.compute-1.amazonaws.com
#echo "connected to ec2 instance"
yum update -y
echo "updated"
#u need to add the group as sunarqube
#sudo groupadd sunarqube
#echo "groupadded"
#u need the user as sunarqube in sunarqube group only
# directly u creat first group then u add user to group while creating
groupadd gopala
useradd gopala -g gopala
echo "group and user created"
#to check the user that created by u is present in that specifed group the command given below
#cat /etc/passwd | awk -F':' '{ print $1}' | xargs -n1 groups
#cat /etc/passwd | awk -F':' '{ print $1}' | xargs -n1 groups
# output gets like 
#sonaradmin : sonaradmin
#tester : test
#dathu : dathu
#sudo amazon-linux-extras install java-openjdk11 -y
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



