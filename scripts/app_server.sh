#!/bin/bash

# change to root user
sudo su

# add the following lines to /etc/hosts file
echo "127.0.0.1       localhost    app-server.local" >> /etc/hosts

echo "192.168.57.52   monitor-server.local" >> /etc/hosts

# exit to root user
exit

# update and upgrade packages 
sudo apt-get update && sudo apt-get upgrade -y