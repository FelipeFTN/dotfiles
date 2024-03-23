local null_ls = require "null-ls"
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local b = null_ls.builtins

local opts = {
  sources = {
    -- Javascript stuff
    -- b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
    -- b.formatting.eslint_d.with { filetypes = { "typescript", "javascript" } },
    require "none-ls.diagnostics.eslint_d", -- We are now using none-ls (new null-ls)
    b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- So prettier works only on these filetypes

    -- Rust
    b.formatting.rustfmt,

    -- Lua
    b.formatting.stylua,

    -- Go
    b.formatting.gofumpt, -- mvdan.cc/gofumpt
    b.formatting.goimports_reviser, -- github.com/incu6us/goimports_reviser
    -- b.formatting.golines, -- github.com/segmentio/golines - Annoying feature
  },
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds {
        group = augroup,
        buffer = bufnr,
      }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { bufnr = bufnr }
        end,
      })
    end
  end,
}
return opts
