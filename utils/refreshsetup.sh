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
	setroot --on 0 -z Pictures/wallpapers/wallpaperguyincity.jpeg --on 1 -z Pictures/wallpapers/HD\ wallpaper_\ digital,\ digital\ art,\ artwork,\ illustration,\ Romain\ Trystram.jpeg --on 2 -z Pictures/wallpapers/wallpaperoctaviafull.jpeg &
elif [[ $monitorcount == 2 ]]
then
	$(sleep 0.5s)
	xrandr --output eDP --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-0 --off --output DisplayPort-0 --primary --mode 3440x1440 --pos 1920x0 --rotate normal &
	setroot --on 0 -z Pictures/wallpapers/hd-wallpaper5.jpg --on 1 -z Pictures/wallpapers/wallpaperguyincity.jpeg &
else
	$(sleep 0.5s)
	xrandr --output eDP --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-0 --off --output DisplayPort-0 --off &
	hsetroot -cover Pictures/wallpapers/hd-wallpaper3.jpeg &
fi

xset r rate 300 50 &
setxkbmap dk &
