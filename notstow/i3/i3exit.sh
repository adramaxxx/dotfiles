#!/bin/sh

lock() {
	$HOME/Documents/repos/dotfiles/i3/i3lock.sh
}

case "$1" in
	lock)
		lock
		;;
	logout)
		i3-msg exit
		;;
	suspend)
		systemctl suspend
		;;
	hibernate)
		systemctl hibernate
		;;
	reboot)
		systemctl reboot
		;;
	shutdown)
		systemctl poweroff
		;;
esac

exit 0
