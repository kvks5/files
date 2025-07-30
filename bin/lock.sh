#!/bin/sh
swayidle -w \
timeout 300 'swaylock -f -c 000000' \
timeout 350 'swaymsg "output * dpms off"' resume 'swaymsg "output * dpms on"' \
timeout 400 'systemctl suspend' before-sleep 'swaylock -f -c 000000'
