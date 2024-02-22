local M = {}

M.treesitter = {
  ensure_installed = {
    "go",
    "rust",
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- Lua stuff
    "lua-language-server",
    "stylua",

    -- Web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- C/CPP stuff
    "clangd",

    -- Go
    "gopls",
    "gofumpt",
    "goimports",
    "goimports-reviser",
    "golines",

    -- Terraform
    "terraform-ls",
  },
}

-- Git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
    ignore = false,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
