local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver' }
local mason = require("mason").setup()
local mason_lsp = require("mason-lspconfig").setup()
local lspconfig = require('lspconfig')
local opt = vim.opt
local g = vim.g

vim.g.mapleader = " "

vim.o.termguicolors = true
vim.opt.smartindent = true
vim.opt.encoding= "UTF-8"
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.softtabstop = 2
vim.opt.updatetime = 50
vim.opt.smarttab = true
vim.opt.guicursor = ""
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.wrap = false
vim.opt.tabstop = 4

-- Disable autoindent for json
vim.cmd("autocmd Filetype json let g:indentLine_enabled = 0")

-- Vim DevIcons
vim.cmd("set encoding=UTF-8")

-- Automatically start coq
vim.g.coq_settings = { auto_start = false } -- COQ on C & C++ is terrible.

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup(require('coq').lsp_ensure_capabilities({
    -- on_attach = my_custom_on_attach,
  }))
end
