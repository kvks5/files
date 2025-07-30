#!/bin/sh

# Configuration
BATTERY_THRESHOLD=20 # Trigger notification at this percentage
SLEEP_INTERVAL=300   # Check every 5 minutes (300 seconds)

# Function to get battery percentage
get_battery_percentage() {
  acpi -b | grep -P -o '(\d+)%' | tr -d '%'
}

# Function to send a notification
send_notification() {
  local percentage=$1
  notify-send -u critical "Low Battery" "Battery level is at ${percentage}%! Consider plugging in."
}

# Main loop
while true; do
  battery_level=$(get_battery_percentage)

  if [[ $battery_level -le $BATTERY_THRESHOLD ]]; then
    send_notification "$battery_level"
  fi

  sleep $SLEEP_INTERVAL
done
