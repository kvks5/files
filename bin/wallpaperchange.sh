#!/bin/sh
# Change wallpaper randomly every 10 minutes
while true; do
  swaybg -i "$(find /home/kunal/.local/share/Wallpapers -type f | shuf -n 1)" -m fill &
  sleep 600
done
