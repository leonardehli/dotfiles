#!/bin/sh

FILE="${!#}"
DIR=$(dirname "$FILE")

COVER=$(find "$DIR" -maxdepth 1 \( -iname "cover.*" -o -iname "*.jpg" -o -iname "*.png" \) | head -n1)

if [[ -n "$COVER" && "$TERM" ]]; then
	chafa --size 40x20 "$COVER"
fi 
