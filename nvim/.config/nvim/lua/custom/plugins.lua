local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "nvimtools/none-ls.nvim",
        dependencies = {
          "nvimtools/none-ls-extras.nvim",
        },
        lazy = false,
        opts = function()
          return require "custom.configs.null-ls"
        end,
      },
    },
    lazy = false,
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "fatih/vim-go",
    ft = "go",
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup {}
    end,
    lazy = false,
  },
  {
    "github/copilot.vim",
    lazy = false,
  },
  -- LaTeX
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_log_ignore = {
        "Underfull",
        "Overfull",
        "specifier changed to",
        "Token not allowed in a PDF string",
      }
    end,
  },
  -- Lua LÖVE2D
  {
    "S1M0N38/love2d.nvim",
    cmd = "LoveRun",
    opts = {},
    keys = {
      -- { "<leader>v", ft = "lua", desc = "LÖVE" },
      { "<leader>lr", "<cmd>LoveRun<cr>", ft = "lua", desc = "Run LÖVE" },
      { "<leader>ll", "<cmd>LoveStop<cr>", ft = "lua", desc = "Stop LÖVE" },
    },
  },
}

return plugins
