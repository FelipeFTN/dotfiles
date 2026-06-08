-- barbar.nvim
-- https://github.com/romgrk/barbar.nvim

vim.pack.add { 'https://github.com/romgrk/barbar.nvim' }
require('barbar').setup {}

vim.keymap.set('n', '<tab>', '<Cmd>BufferNext<CR>', {})
vim.keymap.set('n', '<s-tab>', '<Cmd>BufferPrevious<CR>', {})
vim.keymap.set('n', '<leader>x', '<Cmd>BufferClose<CR>', {})
vim.keymap.set('n', '<leader>p', '<Cmd>BufferPin<CR>', {})
vim.keymap.set('n', '<S-h>', '<Cmd>BufferMovePrevious<CR>', {})
vim.keymap.set('n', '<S-l>', '<Cmd>BufferMoveNext<CR>', {})
