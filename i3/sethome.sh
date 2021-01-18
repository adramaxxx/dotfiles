#!/bin/bash

# set display ordering
xrandr --output eDP --off --output HDMI-A-0 --mode 1920x1080 --pos 3440x0 --rotate left --output DisplayPort-0 --primary --mode 3440x1440 --pos 0x0 --rotate normal
# set repeat rate
xset r rate 300 50
wallpaperpath="/home/adramax/Pictures/wallpapers/"

#feh --bg-fill "$wallpaperpath"wallpaper1.jpg --bg-fill "$wallpaperpath"wallpaperguyincity.jpg
