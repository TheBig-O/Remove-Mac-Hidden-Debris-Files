# Remove-Mac-Hidden-Debris-Files
This is a  simple script to remove all the hidden files created by your Mac. Things like .DS_Store, .AppleDouble, and other hidden files that don't work well on your Linux drives.
Once you assign a path variable, you just need to run the script and all those files will be deleted from the selected directory.

Just download and make the file executable by typing `chmod 700 del-hidden.sh`

You should be able to use this as a template to find and delete whatever type of file you want.
Oh, I should mention one more thing. One line in the file deletes directories, ".AppleDouble" and  has a different makeup from those that delete files only.

```
!/bin/bash
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
```
