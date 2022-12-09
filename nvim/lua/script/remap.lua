local keymap = vim.api.nvim_set_keymap
local ns = { noremap = true, silent = true }

keymap('n', "<Leader>m", ":Explore<CR>", ns)
keymap('n', "<Leader>n", ":Vexplore<CR>", ns)

-- keymap('n', "<Leader>n", ":NERDTreeFocus<CR>", ns)
-- keymap('n', "<Leader>j", ":NERDTreeToggle<CR>", ns)
