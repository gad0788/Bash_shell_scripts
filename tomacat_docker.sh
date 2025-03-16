#!/bin/bash

sudo yum update && sudo yum upgrade -y
sudo yum install openjdk-17-jdk -y
sudo yum install python3 -y
sudo yum install docker.io -y
sudo systemctl enable docker
sudo systemctl start docker
sudo usermod -aG docker $USER
