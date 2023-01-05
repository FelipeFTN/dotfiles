local opt = vim.opt
local g = vim.g

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true

opt.guicursor = ""
opt.smarttab = true
opt.number = true
opt.wrap = true 

opt.hlsearch = false
opt.incsearch = true

opt.updatetime = 50

g.mapleader = " "

-- Autocomplete LSP
g.clang_c_options = '-std=gnu11'
g.clang_cpp_options = '-std=c++11 -stdlib=libc++'
opt.completeopt = menuone, noinsert, noselect
-- opt.shortmess += 'c'

vim.cmd([[
	inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
]])
