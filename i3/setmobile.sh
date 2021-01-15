#!/bin/sh

wallpaperpath="/home/adramax/Pictures/wallpapers/"
xrandr --output eDP --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-0 --off --output DisplayPort-0 --off
xset r rate 300 50

feh --bg-fill "$wallpaperpath"wallpaper4.jpg
