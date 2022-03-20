#!/bin/sh

for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
  monitorcount=$((monitorcount + 1))
done
echo $monitorcount

if [[ $monitorcount == 3 ]]
then
	$(sleep 1s)
	xrandr --output eDP --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-0 --mode 1920x1080 --pos 5360x0 --rotate left --output DisplayPort-0 --primary --mode 3440x1440 --rate 120.00 --pos 1920x0 --rotate normal
elif [[ $monitorcount == 2 ]]
then
	$(sleep 1s)
	xrandr --output eDP --mode 1920x1080 --pos 3440x0 --rotate normal --output HDMI-A-0 --off --output DisplayPort-0 --primary --mode 3440x1440 --pos 0x0 --rotate normal &
#	xrandr --output eDP --mode 1920x1080 --rotate normal --auto --left-of DisplayPort-0 --primary --mode 3440x1440 --auto --rotate normal
else
	$(sleep 1s)
	xrandr --output eDP --mode 1920x1080 --pos 0x0 --rotate normal --primary --output HDMI-A-0 --off --output DisplayPort-0 --off &
fi

$(sleep 1s)

setbg.sh &

# key repeat rate
xset r rate 300 50 &

# danish layout plus remapping of capslock to escape
setxkbmap dk -option caps:escape &
picom -b --experimental-backend &

sudo ntpd -qg
