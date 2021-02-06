#!/bin/bash
$(sleep 2s)
xrandr --output eDP --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-0 --mode 1920x1080 --pos 5360x0 --rotate left --output DisplayPort-0 --primary --mode 3440x1440 --pos 1920x0 --rotate normal
#
#xset r rate 300 50
setroot --on 0 -z Pictures/wallpapers/wallpaperguyincity.jpeg --on 1 -z Pictures/wallpapers/hd-wallpaper1.jpeg --on 2 -z Pictures/wallpapers/wallpaperoctaviafull.jpeg

polybar --reload primary &
polybar --reload secondary &
polybar --reload secondarylaptop &
