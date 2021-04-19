#!/bin/sh
set -x
while true; do
	artist=$(echo -n $(cmus-remote -C status | grep "tag artist " | cut -c 12-))
	songname=$(echo -n $(cmus-remote -C status | grep title | cut -c 11-))
	option=$(echo -e "play/pause\nnext\nprev" | dmenu -i -l 5 -p "$artist $songname")
	if [ "$option" == "play/pause" ]; then
		stat=$(echo -n $(cmus-remote -C status | grep status | cut -c 8-))
		if [ "$stat" == "playing" ]; then
			cmus-remote --pause
		else 
			cmus-remote --pause
		fi
	elif [ "$option" == "next" ]; then
		cmus-remote -n
	elif [ "$option" == "prev" ]; then
		cmus-remote -r
	else
		exit
	fi
done
