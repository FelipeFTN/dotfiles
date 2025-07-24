#!/bin/bash

### This script should transform my .iso into xex files
### For my RGH xbox games
# this xiso executable is just the executable extract-xiso
# I just symlinked it to be called xiso in my local bin
# the original repo is right here: https://github.com/XboxDev/extract-xiso

for file in ~/Downloads/**/*.iso; do
  if [[ -e "$file" ]]; then
    kitty sh -c "xiso \"$file\"" &
    echo "Extracting $file"
  fi
done
