#!/bin/bash

for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
  monitorcount=$((monitorcount + 1))
done

if [[ $monitorcount == 3 ]]
then
	setroot --on 0 -z $HOME/Pictures/wallpapers/ultra-mountain.jpeg --on 2 -z $HOME/Pictures/wallpapers/thiemeyer_road_to_samarkand.jpg --on 1 -z $HOME/Pictures/wallpapers/wallpaperoctaviafull.jpeg &
elif [[ $monitorcount == 2 ]]
then
	setroot --on 0 -z Pictures/wallpapers/ultra-mountain2.jpeg --on 1 -z Pictures/wallpapers/mountains.jpg &
elif [[ $monitorcount == 1 ]]
then
	setroot --on 0 -z $HOME/Pictures/wallpapers/ultra-mountain2.jpeg &
fi
