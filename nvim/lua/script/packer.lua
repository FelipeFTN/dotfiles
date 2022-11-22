-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Personal plugins
  use 'vim-airline/vim-airline'
  use 'preservim/nerdtree'
  use 'folke/tokyonight.nvim' 
  use 'Yggdroot/indentLine'
  use 'psliwka/vim-smoothie'
  use 'mbbill/undotree'
  use 'tpope/vim-commentary'
  use 'ryanoasis/vim-devicons'
  --  use 'neoclide/coc.nvim'
  use 'jiangmiao/auto-pairs'
  use 'yuezk/vim-js'
  use 'HerringtonDarkholme/yats.vim'
  use 'maxmellon/vim-jsx-pretty'
end)
