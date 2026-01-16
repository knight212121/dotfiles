#!/bin/bash

export $(dbus-launch --exit-with-session --exit-with-x11)

xrdb ~/.Xresources
xset r rate 200 20

pipewire &
xclip &
dunst &

steam -silent &
Discord --start-minimized &

~/.local/bin/set_status &
/usr/libexec/xfce-polkit &

feh --randomize --bg-fill ~/Pictures/Wallpapers/
xbacklight -set 50
exec dwm
