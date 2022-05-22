#!/bin/bash

stat=$(echo -n $(cmus-remote -C status | grep status | cut -c 8-))

if [[ "$stat" = 'playing' ]]
then
        cmus-remote --pause
else
        cmus-remote --play
fi
