#!/bin/bash

# Install, Build and Run Docker
echo "###   Updating ec2 instance and installing git"
sudo yum update -y
sudo yum install git -y

echo "###   Installing Docker" 
sudo amazon-linux-extras install docker -y
sudo service docker start 
sudo usermod -a -G docker ec2-user

echo "###   Setting up Docker"
cd ~/
mkdir RShared
sudo chmod 777 ./RShared/
#docker login -u $duser -p $dpass
sudo groupadd docker
sudo usermod -aG docker $USER

echo "###   Exit and rejoin SSH session to finish installation!"
