local ns = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Netrw
-- keymap('n', "<leader>m", ":Explore<CR>", ns)
-- keymap('n', "<leader>n", ":Vexplore<CR>", ns)

-- NerdTree
keymap('n', "<leader>m", ":NERDTreeFocus<CR>", ns)
keymap('n', "<leader>n", ":NERDTreeToggle<CR>", ns)


-- Telescope
keymap('n', '<leader>ff', ":lua require('telescope.builtin').find_files()<CR>", ns)
keymap('n', '<leader>fg', ":lua require('telescope.builtin').live_grep()<CR>", ns)
keymap('n', '<leader>fb', ":lua require('telescope.builtin').buffers()<CR>", ns)
keymap('n', '<leader>fh', ":lua require('telescope.builtin').help_tags()<CR>", ns)

-- Formatter
keymap('n', '<leader>f', ':Format<CR>', ns)
keymap('n', '<leader>F', ':FormatWrite<CR>', ns)

-- Undotree
keymap('n', '<leader>u', ":UndotreeToggle<CR>", ns)

-- Fugitive
keymap('n', '<leader>gs', ":Git<CR>", ns)

-- Quick fix
keymap('n', '<leader>qf', ":lua require('script.quickfix').apply_quickfix()<CR>", ns)

