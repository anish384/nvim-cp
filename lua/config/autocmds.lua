-- ~/.config/nvim/lua/config/autocmds.lua
-- Neovim autocmds configuration

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- General settings group
local general = augroup("General", { clear = true })

-- Highlight on yank
autocmd("TextYankPost", {
  group = general,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
  end,
  desc = "Highlight yanked text",
})

-- Remove trailing whitespace on save
autocmd("BufWritePre", {
  group = general,
  pattern = "*",
  command = [[%s/\s\+$//e]],
  desc = "Remove trailing whitespace on save",
})

-- Auto resize panes when window is resized
autocmd("VimResized", {
  group = general,
  pattern = "*",
  command = "tabdo wincmd =",
  desc = "Auto resize panes when window is resized",
})

-- Close some filetypes with <q>
autocmd("FileType", {
  group = general,
  pattern = {
    "qf", "help", "man", "notify",
    "lspinfo", "spectre_panel",
    "startuptime", "tsplayground",
    "PlenaryTestPopup",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set("n", "q", "<cmd>close<cr>", {
      buffer = event.buf,
      silent = true
    })
  end,
  desc = "Close certain filetypes with q",
})

-- Disable auto comment on new line
autocmd("BufEnter", {
  group = general,
  pattern = "*",
  command = "set fo-=c fo-=r fo-=o",
  desc = "Disable auto comment on new line",
})

-- File type specific settings
local filetype_settings = augroup("FileTypeSettings", { clear = true })

-- Set specific settings for different file types
autocmd("FileType", {
  group = filetype_settings,
  pattern = { "python" },
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
  end,
  desc = "Set tab settings for Python files",
})
