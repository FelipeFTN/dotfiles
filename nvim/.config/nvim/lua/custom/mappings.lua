---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

M.vimtex = {
  n = {
    ["<leader>ll"] = { "<Plug>(vimtex-compile)", "compile" },
    ["<leader>lq"] = { "<Plug>(vimtex-quickfix-toggle)", "toggle quickfix" },
    ["<leader>lc"] = { "<Plug>(vimtex-clean)", "clean" },
  },
}

-- more keybinds!

return M
