#!/bin/sh

file="/sys/class/backlight/amdgpu_bl0/subsystem/amdgpu_bl0/brightness"

currentlight=$(sudo bat $file)

if [[ $1 == "raise" ]]
then
	let "light=$currentlight+12"
elif [[ $1 == "lower" ]]
then
	let "light=$currentlight-12"
fi

if [[ $light -ge 255 ]]
then
	light=255
fi

echo $light | sudo tee $file
pkill -RTMIN+8 dwmblocks
