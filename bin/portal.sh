#!/usr/bin/env bash

if ! grep -r systemd /sbin/init; then
    sleep 1
    killall -e xdg-desktop-portal*
    /usr/libexec/xdg-desktop-portal-gnome &
    /usr/libexec/xdg-desktop-portal-gtk &
fi
