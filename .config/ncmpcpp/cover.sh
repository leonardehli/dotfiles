#!/bin/bash

COVER="/tmp/album_cover"

add_cover () {
	if [ ! -f "$COVER" ]; then
	  cp "$HOME/.config/ncmpcpp/default_cover.png" "$COVER"
	fi
	chafa "$COVER" --clear --stretch --margin-bottom 1
}

add_cover

#rerender image when changed
while inotifywait -q -q -e close_write "$COVER"; do
  add_cover
done
