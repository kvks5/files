#!/bin/sh

BRIGHTNESS=$(brightnessctl get)
MAX_BRIGHTNESS=$(brightnessctl max)
PERCENTAGE=$((BRIGHTNESS * 100 / MAX_BRIGHTNESS))

notify-send -t 300 -r 12345 "Brightness" "Current brightness: ${PERCENTAGE}%"
