require "nvchad.mappings"

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

-- LSP
map("n", "<leader>lr", function()
  vim.lsp.buf.references()
end, { desc = "LSP references" })

map("n", "<leader>ld", function()
  vim.diagnostic.open_float { border = "rounded" }
end, { desc = "LSP diagnostics" })

map("n", "<leader>lD", function()
  vim.diagnostic.setloclist()
end, { desc = "LSP diagnostics in loclist" })

map("n", "<leader>lf", function()
  vim.diagnostic.open_float { border = "rounded" }
end, { desc = "Floating diagnostic" })

map("n", "<leader>ca", function()
  vim.lsp.buf.code_action()
end, { desc = "LSP code action" })

-- Git
map("n", "<leader>gs", "<cmd> Git <cr>", { desc = "Git status" })
map("n", "<leader>gc", "<cmd> Git commit <cr>", { desc = "Git commit" })
map("n", "<leader>gp", "<cmd> Git push <cr>", { desc = "Git push" })
map("n", "<leader>gl", "<cmd> Git pull <cr>", { desc = "Git pull" })
map("n", "<leader>gd", "<cmd> Git diff <cr>", { desc = "Git diff" })

map("n", "<leader>gb", function()
  package.loaded.gitsigns.blame_line()
end, { desc = "Git blame" })

map("n", "<leader>td", function()
  package.loaded.gitsigns.toggle_deleted()
end, { desc = "Toggle deleted lines" })

map("n", "<leader>gD", function()
  package.loaded.gitsigns.diffthis("~")
end, { desc = "Git diff this" })

-- map("n", "K", function()
--   vim.lsp.buf.hover()
-- end, { desc = "LSP hover" })
