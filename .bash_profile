#!/usr/bin/env bash

if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ] && [ -z "$TMUX" ] && [ ! pidof -s Hyprland >/dev/null 2>&1 ]; then
	# local s6 supervision
	#export S6_RC_DIR=~/.local/share/s6/rc/compiled
	#export S6_RC_DB=~/.local/share/s6/rc
	#export S6_EARLY_LOGDIR=~/.local/share/s6/logs
	#export S6_LOGGING=1
	#s6-svscan ~/.local/share/s6/sv &

	exec dbus-run-session Hyprland
fi
