local opt = vim.opt
local g = vim.g

g.clang_c_options = '-std=gnu11'
g.clang_cpp_options = '-std=c++11 -stdlib=libc++'
opt.completeopt = menuone, noinsert, noselect
opt.shortmess = opt.shortmess + 'c'

vim.cmd([[
	inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
]])
