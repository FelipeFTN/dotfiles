local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver' }
local mason = require("mason").setup()
local mason_lsp = require("mason-lspconfig").setup()
local lspconfig = require('lspconfig')
local opt = vim.opt
local g = vim.g

g.mapleader = " "

vim.o.termguicolors = true
opt.smartindent = true
opt.encoding= "UTF-8"
opt.expandtab = true
opt.hlsearch = false
opt.incsearch = true
opt.softtabstop = 2
opt.updatetime = 50
opt.smarttab = true
opt.guicursor = ""
opt.shiftwidth = 4
opt.number = true
opt.wrap = false
opt.tabstop = 4

-- Disable autoindent for json
vim.cmd("autocmd Filetype json let g:indentLine_enabled = 0")

-- Vim DevIcons
vim.cmd("set encoding=UTF-8")

-- Automatically start coq
g.coq_settings = { auto_start = false } -- COQ on C & C++ is terrible.

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup(require('coq').lsp_ensure_capabilities({
    -- on_attach = my_custom_on_attach,
  }))
end
