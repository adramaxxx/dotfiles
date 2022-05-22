#!/bin/sh
killall -q polybar
for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
  monitorcount=$((monitorcount + 1))
done
echo $monitorcount

if [[ $monitorcount == 1 ]]
then
	polybar --reload laptop &
elif [[ $monitorcount == 2 ]]
then
	polybar --reload primary &
	polybar --reload secondarylaptop &
elif [[ $monitorcount == 3 ]]
then
	polybar --reload primary &
	polybar --reload secondary &
	polybar --reload secondarylaptop &
fi
