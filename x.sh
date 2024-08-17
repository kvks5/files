#!/bin/sh

xrdb .Xresources &
picom --daemon &
lxpolkit &
nitrogen --restore &
copyq &
#exec /usr/bin/qtile start
xautolock -time 5 -locker "systemctl suspend" &
xrandr --output eDP1 --gamma 1:0.90:0.65 &
dunst &
#polybar &
