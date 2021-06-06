#!/bin/sh

if [[ $1 == "raise" ]]
then
	pactl set-sink-volume @DEFAULT_SINK@ +1000
elif [[ $1 == "lower" ]]
then
	pactl set-sink-volume @DEFAULT_SINK@ -1000
elif [[ $1 == "muteVol" ]]
then
	pactl set-sink-mute @DEFAULT_SINK@ toggle
elif [[ $1 == "muteMic" ]]
then
	pactl set-source-mute @DEFAULT_SOURCE@ toggle
fi
pkill -SIGRTMIN+10 i3blocks
#pkill -RTMIN+5 dwmblocks
#polybar-msg hook volume 1
