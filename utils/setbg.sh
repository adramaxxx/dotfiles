#!/bin/sh

for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
  monitorcount=$((monitorcount + 1))
done

if [[ $monitorcount == 3 ]]
then
	setroot --on 0 -z Pictures/wallpapers/hd-wallpaper4.jpeg --on 2 -z Pictures/wallpapers/HD\ wallpaper_\ digital,\ digital\ art,\ artwork,\ illustration,\ Romain\ Trystram.jpeg --on 1 -z Pictures/wallpapers/wallpaperoctaviafull.jpeg &
elif [[ $monitorcount == 2 ]]
then
	setroot --on 0 -z Pictures/wallpapers/wallpaperguyincity.jpeg --on 1 -z Pictures/wallpapers/wallpaperoctaviafull.jpeg &
elif [[ $monitorcount == 1 ]]
then
	setroot --on 0 -z Pictures/wallpapers/wallpaperguyincity.jpeg &
fi
