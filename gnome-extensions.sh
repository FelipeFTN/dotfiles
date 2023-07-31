#!/bin/bash

# This script will save all my Gnome Extensions

# Step 1: Go to the gnome-shell extensions directory
cd ~/.local/share/gnome-shell/extensions/

# Step 2: Create a tar.gz archive of all extensions
tar czvf gnome-extensions.tar.gz *

# Step 3: Move the tar.gz file to the same directory as your install.sh script (optional)
mv gnome-extensions.tar.gz ~/dotfiles/
