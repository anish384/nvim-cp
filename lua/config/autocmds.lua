-- ~/.config/nvim/lua/config/autocmds.lua
-- Neovim autocmds configuration

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Disable auto comment on new line
autocmd("BufEnter", {
  group = general,
  pattern = "*",
  command = "set fo-=c fo-=r fo-=o",
  desc = "Disable auto comment on new line",
})

