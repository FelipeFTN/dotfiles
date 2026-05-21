-- A neovim plugin to persist and toggle multiple terminals during an editing session
-- https://github.com/akinsho/toggleterm.nvim

local plugins = {
	{ src = 'https://github.com/akinsho/toggleterm.nvim', version = vim.version.range '*' },
}

vim.pack.add(plugins)

require('toggleterm').setup {}
local toggleterm = require 'toggleterm'

vim.keymap.set('n', '<leader>j', toggleterm.toggle, { desc = 'Open Terminal'})
vim.keymap.set('t', 'jk', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
