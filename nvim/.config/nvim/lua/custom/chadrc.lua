local opt = vim.opt

---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "ashes",
  theme_toggle = { "ashes", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

-- Rust dioxus workaround
vim.opt_local.backupcopy = "yes"
vim.g.zig_fmt_autosave = 0

-- Options
opt.wrap = false

return M
