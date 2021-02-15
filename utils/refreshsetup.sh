#!/bin/sh
killall -q polybar
# todo: add wallpaper handler of some sort aswell
for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
  monitorcount=$((monitorcount + 1))
done
echo $monitorcount

if [[ $monitorcount == 3 ]]
then
	$(sleep 0.5s)
	xrandr --output eDP --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-0 --mode 1920x1080 --pos 5360x0 --rotate left --output DisplayPort-0 --primary --mode 3440x1440 --pos 1920x0 --rotate normal &
elif [[ $monitorcount == 2 ]]
then
	$(sleep 0.5s)
	xrandr --output eDP --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-0 --off --output DisplayPort-0 --primary --mode 3440x1440 --pos 1920x0 --rotate normal &
else
	$(sleep 0.5s)
	xrandr --output eDP --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-0 --off --output DisplayPort-0 --off &
fi

xset r rate 300 50 &
setxkbmap dk &
