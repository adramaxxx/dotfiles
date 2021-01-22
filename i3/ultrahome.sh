#!/bin/bash
xrandr --output eDP --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-0 --mode 1920x1080 --pos 5360x0 --rotate left --output DisplayPort-0 --primary --mode 3440x1440 --pos 1920x0 --rotate normal

xset r rate 300 50

pkill -q polybar

polybar --reload primary &
polybar --reload secondary &
polybar --reload secondarylaptop &
