#!/bin/bash

function install_yay() {
  echo "Installing yay"
  pacman -Sy --noconfirm --needed git base-devel
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si
}

function install_apps() {
  echo "Installing yay packages..."
  while read -r app; do
    yay -Sy --noconfirm --answerclean All --answerdiff None "$app"
  done < ./yay_packages
}

# Main script
install_yay
install_apps

echo "[+] Done!"
