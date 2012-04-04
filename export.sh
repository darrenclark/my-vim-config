#!/bin/bash

# Copies all files from 'files' directory back
# Requires that the files/folders don't already exist

GLOBIGNORE=.
for f in ./files/*; do
	destpath="$HOME/$(basename $f)"
	if [[ -e "$destpath" ]]; then
		echo "FAILED: $destpath already exists"
		exit 1;
	fi
done

echo "hi"

cp -rv ./files/* ~/

echo "vim configs exported to $HOME"
