#!/bin/bash

# Ensure notify-send can connect to the current session (required for cron)
#export DISPLAY=:0
#export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$(id -u)/bus

# Get raw battery information from acpi
# Expected output format: "Battery 0: Discharging, 85%, 03:20:15 remaining"
BATT_INFO=$(acpi -b)

# Extract specific details
Bat_LEVEL=$(echo "$BATT_INFO" | grep -P -o '[0-9]+(?=%)')
TIME_LEFT=$(echo "$BATT_INFO" | awk -F', ' '{print $3}' | awk '{print $1}')
CURRENT_TIME=$(date +"%Y-%m-%d %H:%M:%S")

# Send the notification
notify-send "Battery Status Update" "Time: $CURRENT_TIME\nLevel: $Bat_LEVEL%\nRemaining: $TIME_LEFT"

