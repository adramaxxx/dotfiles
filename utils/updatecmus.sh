#!/bin/bash
cmus-remote -C clear
cmus-remote -C "add ~/Music/tidal"
cmus-remote -C "add ~/Music/youtube"
cmus-remote -C "update-cache -f"
