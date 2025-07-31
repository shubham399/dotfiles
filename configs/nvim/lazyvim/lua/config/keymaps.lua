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
