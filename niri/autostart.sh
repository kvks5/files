#!/usr/bin/env bash

# ---- ENV ----
export XDG_CURRENT_DESKTOP=niri
export XDG_SESSION_TYPE=wayland
pgrep polkit-mate-authentication-agent-1 >/dev/null || /usr/libexec/polkit-mate-authentication-agent-1 &
# ---- Notifications ----
pgrep mako >/dev/null || mako &
pgrep udiskie >/dev/null || udiskie &

# ---- XDG portals (base + GNOME + wlr) ----
if ! pgrep xdg-desktop-portal >/dev/null; then
    /usr/libexec/xdg-desktop-portal &
    sleep 1
    /usr/libexec/xdg-desktop-portal-gnome &
    /usr/libexec/xdg-desktop-portal-wlr &
fi

# ---- GNOME keyring ----
if ! pgrep gnome-keyring-daemon >/dev/null; then
    eval "$(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)"
    export SSH_AUTH_SOCK
fi

# ---- XWayland ----
pgrep xwayland-satellite >/dev/null || xwayland-satellite &

# ---- Wallpaper (dark gradient, zero assets) ----
pgrep swaybg >/dev/null || swaybg \
    -m fill \
    -c "#0f1115" \
    -c "#1b1f2a" &

# ---- Idle management (lock + suspend) ----
pgrep swayidle >/dev/null || swayidle -w  timeout 200 'swaylock -f -c 000000' timeout 230 'swaymsg "output * power off"' timeout 280 'systemctl suspend' resume 'swaymsg "output * power on"' before-sleep 'swaylock -f -c 000000'  &

# ---- Clipboard manager ----
pgrep copyq >/dev/null || copyq &

pgrep gammastep >/dev/null || gammastep -oO 5100 &
