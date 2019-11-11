#!/bin/bash

echo "Install mosquitto"
sudo apt-get install mosquitto -y

echo "Updating and installing bluetooth"
sudo apt-get install bluetooth bluez blueman -y

echo "Installing screen (handy tool)"
sudo apt-get install screen -y
