-- This file can be loaded by calling `lua require('plugins')` from your init.vim

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Personal plugins
  use 'vim-airline/vim-airline'                                -- Statusbar
  use 'folke/tokyonight.nvim'                                  -- A better theme, but bugged 
  use 'ryanoasis/vim-devicons'                                 -- Better icons
  use 'jiangmiao/auto-pairs'                                   -- Autoclosing Brackets
  use 'tpope/vim-commentary'                                   -- Better commentary adding
  use 'morhetz/gruvbox'	                                       -- Beautiful theme
  use 'Mofiqul/dracula.nvim'                                   -- Beautiful theme
  use 'Yggdroot/indentLine'                                    -- Auto indentation
  use 'psliwka/vim-smoothie'	                               -- Makes scrolling smooth
  use 'mbbill/undotree'                                        -- Undo History
  use 'yuezk/vim-js'                                           -- Javascript Syntax
  use 'HerringtonDarkholme/yats.vim'                           -- Typescript Syntax
  use 'fatih/vim-go'		                               -- Golang Syntax
  use 'vim-ruby/vim-ruby'	                               -- Ruby Syntax
  use 'loadfms/nvim-chettahsheet'                              -- Online Search Helper
  use 'f-person/git-blame.nvim'                                -- Git Blame
  use 'ms-jpq/coq_nvim'                                        -- Code autocomplete :COQnow
  use 'ms-jpq/coq.artifacts'                                   -- Code autocomplete dependency
  use 'ms-jpq/coq.thirdparty'                                  -- Code autocomplete dependency
  use 'norcalli/snippets.nvim'	                               -- Code snippet
  use 'justmao945/vim-clang' 	                               -- C/C++ autocomplete
  use 'neovim/nvim-lspconfig'	                               -- Language Server Protocol
  use 'mhartington/formatter.nvim'                             -- Formatter
  use 'tpope/vim-fugitive'                                     -- Git integration
  use 'williamboman/mason-lspconfig.nvim'                      -- Mason configuration LSP
  use { "williamboman/mason.nvim", run = ":MasonUpdate" }      -- Mason Package Manager
  use ('nvim-treesitter/nvim-treesitter', 
  {run = ':TSUpdate', run = ':TSInstall diff git_rebase'})     -- Highlighting
  use 'jose-elias-alvarez/null-ls.nvim'                        -- LSP Injection Lint
  use 'mfussenegger/nvim-dap'                                  -- Debugger
  use 'mfussenegger/nvim-lint'                                 -- Lint
  use 'tpope/vim-vinegar'                                      -- Vinager Netrw

  -- Telescope
  local telescope_build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0' }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = telescope_build }
  use 'nvim-lua/plenary.nvim'

  -- 'BurntSushi/ripgrep'       - Install Manually
  -- 'sharkdp/fd'               - Install Manually
  -- 'rust-analyzer/lsp-server' - Install Maually

  -- Automatically set up your configuration after cloning packer.nvim
  if packer_bootstrap then
    require('packer').sync()
  end
end)
