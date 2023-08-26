#!/bin/bash
set -euo pipefail

function setup_stow() {
  echo "Setting up stow"
  mv ~/.zshrc ~/.zshrc_old
  stow */
}

function install_apps() {
  echo "Updating System Packages"
  sudo pacman -Syu --noconfirm
  echo "Installing apps from packages..."
  while read -r app; do
    sudo pacman -Syy --noconfirm --needed "$app"
  done < ./packages
}

function pulseaudio_config() {
  echo "Appending pulseaudio config to /etc/pulse/default.pa"
  cp /etc/pulse/default.pa ./
  cat ./pulseaudio >> ./default.pa
  sudo mv ./default.pa /etc/pulse/default.pa
  echo "Run pulseaudio -k to restart pulseaudio"
}

# Main script
install_apps
pulseaudio_config
setup_stow

echo "done!"
