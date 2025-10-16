-- ~/.config/nvim/lua/config/lsp.lua
-- Neovim lsp (clangd) configuration

vim.lsp.config.clangd = {
  cmd = { 
      'clangd', 
      '--background-index',
      '--header-insertion=never',
  },
  -- root_markers = { 'compile_commands.json', 'compile_flags.txt' },
  filetypes = { 'c', 'cpp' },
}

vim.lsp.enable({'clangd'})
