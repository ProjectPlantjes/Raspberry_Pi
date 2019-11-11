#!/bin/bash

echo "Do an update on the pi"
sudo apt-get install update
sudo apt-get install upgrade

echo "Install git"
sudo apt-get install git

echo "Making a folder for the repository"
mkdir Raspberry_Pi

echo "Cloning the Repository (using SSH, so we can use private keys)"
echo "If you want the projects private keys, mail plantjes@thijstops.com"

read -p "Press [Enter] key contine..."

git clone git@github.com:ProjectPlantjes/Raspberry_Pi.git ./Raspberry_Pi
