#!/bin/sh

FILE="$HOME/Music/$(mpc --format %file% current)"
DIR=$(dirname "$FILE")

COVER=$(find "$DIR" -maxdepth 1 \( -iname "cover.*" -o -iname "*.jpg" -o -iname "*.png" \) | head -n1)

if [[ -n "$COVER" ]]; then
	cp "$COVER" /tmp/album_cover
else
	cp $HOME/.config/ncmpcpp/default_cover.png /tmp/album_cover
fi 
