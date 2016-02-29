#!/bin/sh
# My internal SSD is not backed up. Application data can easily be installed
# again and all important files in the homefolder are backed up on github /
# dropbox.

# Using cygwin. 

# Map Y:\flex Letters to flexsol01 Volume: Vol01

rsync -av --delete --exclude="/.*" "/cygdrive/c/Users/Juliano/Documents/" "/cygdrive/g/Documents"
rsync -av --delete --exclude="/.*" "/cygdrive/c/Users/Juliano/Documents/" "/cygdrive/y/flex/Documents"
