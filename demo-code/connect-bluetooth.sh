#!/bin/bash

sudo bluetoothctl info $1
read -p "Press [Enter] if this is the device you want to conenct, if not press [ctrl+c]"

sudo bluetoothctl pair $1
sudo bluetoothctl trust $1

screen -S bluetoothConnection
screen -S bluetoothConnection -X stuff "sudo rfcomm connect hci0 " + $1

echo "You can send data with 'echo \"text\" >> /dev/rfcomm0"
echo "And read the text with cat /dev/rfcomm0"
