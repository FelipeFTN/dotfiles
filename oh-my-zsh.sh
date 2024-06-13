#!/bin/bash

function install_zsh() {
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

function rename_zshrc() {
  mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc
}

#Main script
echo "Attention! Make sure to run stow before this script."
read -p "Press [Enter] key to start oh my zsh installation script..."
install_zsh
install_apps
echo "[+] Done!"
