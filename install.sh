#!/bin/bash

function setup_stow() {
  sudo pacman -Syy --noconfirm stow
  stow */
}

function setup_neovim() {
  # Install Packer - package manager
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
   ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  # Setup
  nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
}

function setup_packages() {
  # Arch based systems
  sudo pacman -Syy --noconfirm fd ripgrep python python-virtualenv
}

setup_stow
setup_neovim
setup_packages

echo "All done! You're ready to rock!"
