#!/bin/sh

# Set ThingsBoard host to "demo.thingsboard.io" or "localhost"
THINGSBOARD_HOST="demo.thingsboard.io"
# Replace YOUR_ACCESS_TOKEN with one from Device details panel.
ACCESS_TOKEN="IEdiWWJ5567p4EMFjkRr"
# Publish serial number and firmware version attributes
mosquitto_pub -d -h "$THINGSBOARD_HOST" -t "v1/devices/me/attributes" -u "$ACCESS_TOKEN" -f "/home/pi/Raspberry_Pi/thingsboard/attributes-data.json"
# Publish timeseries data as an object without timestamp (server-side timestamp will be used)
mosquitto_pub -d -h "$THINGSBOARD_HOST" -t "v1/devices/me/telemetry" -u "$ACCESS_TOKEN" -f "/dev/rfcomm0"
