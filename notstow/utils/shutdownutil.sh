#!/bin/bash

echo -n "Shutdown [y/n]: "

read OPTION
if [[ $OPTION = 'y' ]]
then 
	echo "shutting down, bye bye"
	$(sleep 1s)
	exec sudo systemctl poweroff
else
	exit
fi

