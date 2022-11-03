local keymap = vim.api.nvim_set_keymap
local ns = { noremap = true, silent = true }

keymap('n', "<Leader>b", ":Ex<CR>", ns)
keymap('n', "<Leader>n", ":NERDTreeFocus<CR>", ns)
keymap('n', "<Leader>j", ":NERDTreeToggle<CR>", ns)
