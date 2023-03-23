-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
local use = require('packer').use

require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Personal plugins
  use 'vim-airline/vim-airline'      -- Statusbar
  use 'folke/tokyonight.nvim'        -- A better theme, but bugged 
  use 'ryanoasis/vim-devicons'       -- Better icons
  use 'jiangmiao/auto-pairs'         -- Autoclosing Brackets
  use 'tpope/vim-commentary'         -- Better commentary adding
  use 'morhetz/gruvbox'	             -- Beautiful theme
  use 'Mofiqul/dracula.nvim'         -- Beautiful theme
  use 'Yggdroot/indentLine'          -- Auto indentation
  use 'psliwka/vim-smoothie'	     -- Makes scrolling smooth
  use 'mbbill/undotree'              -- Undo History
  use 'yuezk/vim-js'                 -- Javascript Syntax
  use 'HerringtonDarkholme/yats.vim' -- Typescript Syntax
  use 'fatih/vim-go'		     -- Golang Syntax
  use 'vim-ruby/vim-ruby'	     -- Ruby Syntax
  use 'loadfms/nvim-chettahsheet'    -- Search Helper from Leo :)

  use 'ms-jpq/coq_nvim'              -- Code autocomplete :COQnow
  use 'ms-jpq/coq.artifacts'         -- Code autocomplete dependency
  use 'ms-jpq/coq.thirdparty'        -- Code autocomplete dependency

  use 'norcalli/snippets.nvim'	     -- Code snippet
  use 'justmao945/vim-clang' 	     -- C/C++ autocomplete
  use 'neovim/nvim-lspconfig'	     -- Language Server Protocol
  use "williamboman/mason.nvim"      -- Package Manager
  use 'mfussenegger/nvim-jdtls'      -- Eclipse LSP

  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}) -- Highlighting

  use 'mhartington/formatter.nvim'   -- Formatter

  use 'tpope/vim-fugitive'           -- Git integration

  -- Telescope
  local telescope_build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0' }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = telescope_build }
  use 'nvim-lua/plenary.nvim'

  -- 'BurntSushi/ripgrep'       - Install Manually
  -- 'sharkdp/fd'               - Install Manually
  -- 'rust-analyzer/lsp-server' - Install Maually

  -- End 
end)
