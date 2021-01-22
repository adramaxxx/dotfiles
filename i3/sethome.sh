#!/bin/bash

# set display ordering
xrandr --output eDP --off --output HDMI-A-0 --mode 1920x1080 --pos 3440x0 --rotate left --output DisplayPort-0 --primary --mode 3440x1440 --pos 0x0 --rotate normal
# set repeat rate
xset r rate 300 50


# polybar management
killall -q polybar
polybar --reload primary &
polybar --reload secondary &

setroot --on 0 -z Pictures/wallpapers/wallpaperguyincity.jpg --on 2 -z -gx 48% Pictures/wallpapers/wallpaperoctaviafull.jpeg --on 1 -z Pictures/wallpapers/hd-wallpaper-1.jpeg
