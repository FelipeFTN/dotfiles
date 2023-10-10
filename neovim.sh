function setup_neovim {
  echo "Installing Packer"
  sudo git clone --depth 1 https://github.com/wbthomason/packer.nvim\
   ~/.local/share/nvim/site/pack/packer/start/packer.nvim

  echo "Setting up vim plugins (don't panic if it looks stuck)"
  nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync' &

  echo "Setting neovim syslink"
  sudo ln -s $(which nvim) /usr/bin/n
}

setup_neovim

echo "done!"
