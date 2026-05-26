-- A comprehensive Neovim plugin that provides modern markdown editing capabilities, implementing features found in popular editors like Typora, Mark Text, and Obsidian.
-- https://github.com/YousefHadder/markdown-plus.nvim

local plugins = {
	{ src = 'https://github.com/YousefHadder/markdown-plus.nvim', version = vim.version.range '*' },
}

vim.pack.add(plugins)

require('markdown-plus').setup {}
