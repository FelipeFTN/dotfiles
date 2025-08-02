require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- LaTeX
map("n", "<leader>ll", "<Plug>(vimtex-compile)", { desc = "Compile LaTeX" })
map("n", "<leader>lq", "<Plug>(vimtex-quickfix-toggle)", { desc = "Toggle Quickfix" })
map("n", "<leader>lc", "<Plug>(vimtex-clean)", { desc = "Clean LaTeX files" })

-- Go
map("n", "<leader>gg", "<cmd> GoRun <cr>", { desc = "Run Go file" })
map("n", "<leader>gf", "<cmd> GoFmt <cr>", { desc = "Format Go file" })
map("n", "<leader>gt", "<cmd> GoTest <cr>", { desc = "Run Go tests" })
map("n", "<leader>gv", "<cmd> GoVet <cr>", { desc = "Run Go vet" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
