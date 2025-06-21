-- ~/.config/nvim/lua/config/lsp.lua
-- Neovim lsp (clangd) configuration

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.clangd.setup({
  capabilities = capabilities,
  cmd = {
    "clangd",
    "--header-insertion=never", -- automatic header insertion is disabled
    "--background-index",  -- Better performance
    "--clang-tidy",       -- Optional: Enable clang-tidy
    "--offset-encoding=utf-16",  -- Required for Neovim 0.10+
  },  -- ensure clangd is installed and in PATH
  filetypes = { "c", "cpp", "objc", "objcpp" },
})

