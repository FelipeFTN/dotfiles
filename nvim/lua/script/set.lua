local opt = vim.opt
local g = vim.g

g.mapleader = " "

opt.guicursor = ""
opt.autoindent = true
opt.softtabstop = 4
opt.smarttab = true
opt.shiftwidth = 4
opt.number = true
opt.wrap = true 
opt.tabstop = 4

-- Setup Autocomplete
require'lspconfig'.pylsp.setup{on_attach=require'completion'.on_attach}
vim.cmd([[autocmd BufEnter * lua require'completion'.on_attach()]])

-- Use <Tab> and <S-Tab> to navigate through popup menu
vim.cmd([[
	inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

	set completeopt=menuone,noinsert,noselect
	let g:clang_c_options = '-std=gnu11'
	let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'

	set shortmess+=c
]])
