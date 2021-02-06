#!/bin/bash
$(sleep 4s)
xrandr --output eDP --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-0 --off --output DisplayPort-0 --primary --mode 3440x1440 --pos 1920x0 --rotate normal
feh --bg-fill /home/adramax/Pictures/wallpapers/hd-wallpaper5.jpg --bg-fill Pictures/wallpapers/wallpaperguyincity.jpeg


# polybar managementlaptop
killall -q polybar
polybar --reload primary &
polybar --reload secondarylaptop &
