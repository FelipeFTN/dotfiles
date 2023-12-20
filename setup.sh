#!/bin/bash

function install_apps() {
  echo "Updating System Packages"
  sudo pacman -Syu --noconfirm
  echo "Installing apps from packages..."
  while read -r app; do
    sudo pacman -Sy --noconfirm "$app"
  done < ./packages

  while read -r app; do
    sudo pacman -Sy --noconfirm "$app"
  done < ./i3_packages
}

# Main script
install_apps

echo "[+] Done!"
