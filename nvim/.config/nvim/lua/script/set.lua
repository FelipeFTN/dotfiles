local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver' }
local lspconfig = require('lspconfig')
local opt = vim.opt
local g = vim.g

opt.expandtab = true
opt.smartindent = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2

opt.guicursor = ""
opt.smarttab = true
opt.number = true
opt.wrap = false

opt.hlsearch = false
opt.incsearch = true

opt.updatetime = 50

g.mapleader = " "


-- Automatically start coq
g.coq_settings = { auto_start = true }

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup(require('coq').lsp_ensure_capabilities({
    -- on_attach = my_custom_on_attach,
  }))
end
