#!/bin/bash

# change to root user
sudo su

# add the following lines to /etc/hosts file
echo "127.0.0.1       localhost    monitor-server.local" >> /etc/hosts

echo "192.168.57.52   app-server.local" >> /etc/hosts

# exit to root user
exit

sudo apt-get update && sudo apt-get upgrade -y

# install python  2 and 3
sudo apt-get install -y python && sudo apt-get install python3