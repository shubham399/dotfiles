-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>cp", function()
  vim.fn.setreg("+", vim.fn.expand("%:p"))
  print("Copied full path to clipboard")
end, { desc = "Copy file path" })

vim.api.nvim_create_user_command("BufTab", function(opts)
  local buf = tonumber(opts.args)
  if buf and vim.api.nvim_buf_is_loaded(buf) then
    vim.cmd("tabnew")
    vim.api.nvim_win_set_buf(0, buf)
  else
    print("Invalid buffer number")
  end
end, { nargs = 1, complete = "buffer" })

vim.keymap.set("n", "<leader>fy", function()
  local path = vim.fn.expand("%:.")
  vim.fn.setreg("+", path)
  vim.notify("Copied: " .. path)
end, { desc = "Copy Relative Path" })

vim.keymap.set("n", "<leader>fY", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify("Copied: " .. path)
end, { desc = "Copy Absolute Path" })

local map = vim.keymap.set

-- Normal mode
map("n", "<leader>mj", "<cmd>m .+1<CR>==", { desc = "Move line down" })
map("n", "<leader>mk", "<cmd>m .-2<CR>==", { desc = "Move line up" })

-- Visual mode
map("v", "<leader>mj", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "<leader>mk", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
