#!/bin/bash
set -euo pipefail

function setup_stow() {
  echo "Setting up stow"
  mv ~/.zshrc ~/.zshrc_old
  stow */
}

function install_apps() {
  echo "Installing apps from packages..."
  while read -r app; do
    sudo pacman -Syy --noconfirm --needed "$app"
  done < ./packages
}

function pulseaudio_config() {
  echo "Appending pulseaudio config to /etc/pulse/default.pa"
  sudo cat ./pulseaudio >> /etc/pulse/default.pa
  sudo pulseaudio -k
}

function gnome_extensions() {
  echo "Checking if gnome extensions.tar.gz exists"
  if [ -f gnome-extensions.tar.gz ]; then
    echo "Extracting GNOME extensions from gnome-extensions.tar.gz"
    tar xzvf gnome-extensions.tar.gz -C ~/.local/share/gnome-shell/extensions/
  else
    echo "gnome-extensions.tar.gz not found. Make sure the file is in the same directory as this script."
  fi
}

# Main script
install_apps
setup_stow
pulseaudio_config
gnome_extensions

echo "done!"
