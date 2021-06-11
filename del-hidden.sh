#!/bin/bash
# A simple script to remove all the hidden files from a selected directory.
# Be sure to change the directory variable or you won't search the directory you want.
# Make the file executable by typing  `chmod 700 del-hidden.sh`

varPath="/srv/dev-disk-by-label/docker-vols/piwigo/galleries/"

for i in $varPath
  do
    find "$i" -depth -name ".DS_Store" -exec rm {} \;
    find "$i" -depth -name ".AppleDouble" -exec rm -Rf {} \;
    find "$i" -depth -name "desktop.ini" -exec rm {} \;
    find "$i" -depth -name "._*" -exec rm {} \;
  done

echo "All hidden files have been deleted from: " $varPath

echo "That's all for now."

