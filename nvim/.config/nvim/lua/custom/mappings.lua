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

-- Commands I want:
-- :GoDebugStart
-- :GoDebugContinue
-- :GoDebugNext
-- :GoDebugStep
-- :GoDebugStepOut
-- :GoDebugBreakpoint
M.vim_go = {
  plugin = true,
  n = {
    ["<leader>ds"] = { ":GoDebugStart<CR>", "start debugging" },
    ["<leader>dc"] = { ":GoDebugContinue<CR>", "continue" },
    ["<leader>dn"] = { ":GoDebugNext<CR>", "next" },
    ["<leader>di"] = { ":GoDebugStep<CR>", "step" },
    ["<leader>do"] = { ":GoDebugStepOut<CR>", "step out" },
    ["<leader>db"] = { ":GoDebugBreakpoint<CR>", "breakpoint" },
  },
}

return M
