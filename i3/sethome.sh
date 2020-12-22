#!/bin/bash

# set display ordering
xrandr --output eDP --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI-A-0 --off --output DisplayPort-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal

# set repeat rate
xset r rate 300 50
