#!/bin/sh
path=$HOME/.config/alacritty/alacritty.yml

currentopacity=$(awk '/background_opacity:/{print $2}' $HOME/.config/alacritty/alacritty.yml)
currentopacity="${currentopacity:1}"


if [[ $1 == "raise" ]]
then
    let "opacity=$currentopacity+50"
elif [[ $1 == "lower" ]]
then
    let "opacity=$currentopacity-50"
else
    opacity=$1
fi

if [[ $opacity -ge 999 ]]
then
    opacity=999
elif [[ $opacity -le 100 ]]
then
    opacity=100
fi

sed -i "s/$currentopacity/$opacity/g" $path
