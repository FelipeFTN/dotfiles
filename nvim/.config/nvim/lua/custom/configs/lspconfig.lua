local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

-- if you just want default config for the servers then put them in a table
local servers = {
  "html",
  "cssls",
  "ts_ls",
  "clangd",
  "asm_lsp",
  "terraformls",
  "rust_analyzer",
  "phpactor",
  "gopls",
  "zls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Manual LSP configuration

-- Golang
lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}

-- Zig
lspconfig.zls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "zls" },
  filetypes = { "zig", "zir" },
}

-- Terraform
lspconfig.terraformls.setup {
  cmd = { "terraform-ls", "serve" },
  filetypes = { "terraform", "tf" },
}

-- Clangd
lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = { offsetEncoding = { "utf-8", "utf-16" } },
}

lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    ["rust-analyzer"] = {
      assist = {
        importMergeBehavior = "last",
        importPrefix = "by_self",
      },
      cargo = {
        loadOutDirsFromCheck = true,
      },
      procMacro = {
        enable = true,
      },
    },
  },
}

-- EsLint
lspconfig.eslint.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "vscode-eslint-language-server", "--stdio" },
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
    "vue",
    "svelte",
    "astro",
  },
}

--
-- lspconfig.pyright.setup { blabla}
