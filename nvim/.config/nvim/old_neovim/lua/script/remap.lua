local ns = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Netrw
keymap('n', "<leader>m", ":Explore<CR>", ns)
keymap('n', "<leader>n", ":Vexplore<CR>", ns)

-- NerdTree
-- keymap('n', "<leader>m", ":NERDTreeFocus<CR>", ns)
-- keymap('n', "<leader>n", ":NERDTreeToggle<CR>", ns)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- local builtin = require('telescope.builtin')
-- keymap('n', '<leader>ff', builtin.find_files(), ns)
-- keymap('n', '<leader>fg', builtin.live_grep, ns)
-- keymap('n', '<leader>fb', builtin.buffers, ns)
-- keymap('n', '<leader>fh', builtin.help_tags, ns)

-- Formatter
keymap('n', '<leader>f', ':Format<CR>', ns)
keymap('n', '<leader>F', ':FormatWrite<CR>', ns)

-- Undotree
keymap('n', '<leader>u', ":UndotreeToggle<CR>", ns)

-- Fugitive
keymap('n', '<leader>gs', ":Git<CR>", ns)

-- Quick fix
keymap('n', '<leader>qf', ":lua require('script.quickfix').apply_quickfix()<CR>", ns)

