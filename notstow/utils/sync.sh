#!/bin/sh

# folder with educational stuff
rsync -av --delete -e 'ssh -p 10035' /home/adramax/Documents/education/ adramax@nobelnet.dk:/home/adramax/backup

# folder with training programs
rsync -av --delete -e 'ssh -p 10035' /home/adramax/Documents/personal/projectberg adramax@nobelnet.dk:/home/adramax/backup/

# dotfiles, since the git repo is one big mess and should be cleaned up sometime soon lmao
rsync -av --delete -e 'ssh -p 10035' /home/adramax/Documents/repos/dotfiles adramax@nobelnet.dk:/home/adramax/backup/
