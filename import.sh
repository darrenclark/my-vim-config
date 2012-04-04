#!/bin/bash

# Copies vim config files into the 'files' directory
# (wipes what was in there before)

rmdir -rf ./files
mkdir ./files
cp -rv ~/.vim ~/.vimrc ./files

echo "---"
echo "vim config files copied."
