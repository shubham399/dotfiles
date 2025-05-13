return {
  "mg979/vim-visual-multi",
  branch = "master",
  init = function()
    vim.g.VM_maps = {
      ["Find Under"] = "<C-d>", -- Select next occurrence (like VS Code)
      ["Find Subword Under"] = "<C-d>",
    }
  end,
}
