#!/bin/bash

echo "Scanning for devices"
sudo bluetoothctl scan on >> /dev/null
sleep 30
sudo bluetoothctl scan off
sudo bluetoothctl devices

echo "Copy the MAC of the devices and paste it as argument in the connect.sh [max]"
