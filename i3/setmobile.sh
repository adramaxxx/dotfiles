#!/bin/sh
wallpaperpath="$HOME/Pictures/wallpapers/"
#xrandr --output eDP --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-0 --off --output DisplayPort-0 --off
#xset r rate 300 50

#polybar config
$(sleep 2s)

polybar --reload laptop &
$(sleep 0.5s)
hsetroot -cover Pictures/wallpapers/wallpaperoctaviafull.jpeg
