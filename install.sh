#!/bin/bash

function setup_stow() {
  sudo pacman -Syy --noconfirm stow
  mv ~/.zshrc ~/.zshrc_old
  stow */
}

function setup_neovim() {
  # Install Packer - package manager
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
   ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  # Setup
  nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
  nvim --headless -c 'COQdeps'
}

function setup_packages() {
  # Arch based systems
  sudo pacman -Syy --noconfirm --needed neovim tmux fd ripgrep python python-virtualenv pyright nodejs npm alacritty go gopls ruby
  sudo ln -s $(which nvim) /usr/bin/n
}

setup_packages
setup_stow
setup_neovim

echo "All done! You're ready to rock!"
