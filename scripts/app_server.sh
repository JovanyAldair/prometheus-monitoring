#!/bin/bash

# Packages List
packages=(apt-transport-https ca-certificates curl software-properties-common)

# change to root user to add the following lines on hosts file
sudo su

# add the following lines to /etc/hosts file
echo "127.0.0.1       localhost    app-server.local" >> /etc/hosts

echo "192.168.57.52   monitor-server.local" >> /etc/hosts

# exit to root user
exit

# update and upgrade packages 
sudo apt-get update && sudo apt-get upgrade -y

# Install the packages on package list
sudo apt-get install -y "${packages[@]}"

# Add GPG key for the official Docker repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository to Apt sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

# Install the latest version
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin