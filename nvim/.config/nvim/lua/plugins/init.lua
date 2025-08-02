return {
  -- {
  --   "stevearc/conform.nvim",
  --   -- event = 'BufWritePre', -- uncomment for format on save
  --   opts = require "configs.conform",
  -- },

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
          return require "configs.null-ls"
        end,
      },
    },
    lazy = false,
    config = function()
      require "configs.lspconfig"
      require "configs.lspconfig"
    end,
  },

  -- override plugin configs
  -- {
  --   "williamboman/mason.nvim",
  --   opts = overrides.mason,
  -- },
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = overrides.treesitter,
  -- },
  --
  -- {
  --   "nvim-tree/nvim-tree.lua",
  --   opts = overrides.nvimtree,
  -- },

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
  {
    "tpope/vim-fugitive",
    lazy = false,
  },
  -- LaTeX
  -- Need Arch packages:
  -- texlive-bin;
  -- texlive-binextra
  -- texlive-latexrecommended
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
