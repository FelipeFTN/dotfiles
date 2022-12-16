-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Personal plugins
  use 'vim-airline/vim-airline'      -- Statusbar
  use 'folke/tokyonight.nvim'        -- A better theme, but bugged 
  use 'tpope/vim-commentary'         -- Better commentary adding
  -- use 'preservim/nerdtree'        -- File manager
  -- use 'neoclide/coc.nvim'         -- Auto Complete
  use 'morhetz/gruvbox'	             -- Beautiful theme
  use 'Yggdroot/indentLine'          -- Auto indentation
  use 'psliwka/vim-smoothie'		 -- Makes scrolling smooth
  use 'mbbill/undotree'              -- Undo History
  use 'ryanoasis/vim-devicons'       -- Better icons
  use 'jiangmiao/auto-pairs'         -- Autoclosing Brackets
  use 'yuezk/vim-js'                 -- Javascript Syntax
  use 'HerringtonDarkholme/yats.vim' -- Typescript Syntax
  use 'fatih/vim-go'				 -- Golang Syntax
  use 'vim-ruby/vim-ruby'			 -- Ruby Syntax
  use 'loadfms/nvim-chettahsheet'	 -- Search Helper from Leo :)

  -- Telescope
  local telescope_build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0' }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run=telescope_build }
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-lua/plenary.nvim'
  -- 'BurntSushi/ripgrep' - Install Manually
  -- 'sharkdp/fd'         - Install Manually
  -- End 

end)
