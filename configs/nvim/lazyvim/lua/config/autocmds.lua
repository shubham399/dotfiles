-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
--

vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*.json",
  callback = function(args)
    local file = vim.api.nvim_buf_get_name(args.buf)
    local ok, stats = pcall(vim.loop.fs_stat, file)

    if ok and stats and stats.size > 500 * 1024 then
      for _, client in ipairs(vim.lsp.get_clients({ bufnr = args.buf })) do
        vim.lsp.stop_client(client.id)
      end
    end
  end,
})
