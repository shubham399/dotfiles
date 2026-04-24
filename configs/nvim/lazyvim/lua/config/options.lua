-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.number = false -- Show absolute line numbers
vim.opt.relativenumber = true -- Disable relative line numbers

vim.filetype.add({
  pattern = {
    [".*[Jj]enkinsfile%-.*"] = "groovy",
    [".*%.dockerignore*"] = "dockerignore",
    [".*Dockerfile*"] = "dockerfile",
  },
})
