local ns = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Netrw
keymap('n', "<Leader>m", ":Explore<CR>", ns)
keymap('n', "<Leader>n", ":Vexplore<CR>", ns)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Formatter
vim.keymap.set('n', '<leader>f', ':Format<CR>', {})
vim.keymap.set('n', '<leader>F', ':FormatWrite<CR>', {})

-- Undotree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- Fugitive
vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
