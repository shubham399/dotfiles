return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    init = function()
      vim.g.VM_maps = {
        ["Find Under"] = "<C-n>",
        ["Find Subword Under"] = "<C-n>",
      }
    end,
    config = function()
      vim.keymap.set("n", "<leader>md", "<Plug>(VM-Add-Cursor-Down)", { noremap = false, desc = "VM Add Cursor Down" })
      vim.keymap.set("n", "<leader>mu", "<Plug>(VM-Add-Cursor-Up)", { noremap = false, desc = "VM Add Cursor Up" })
      vim.keymap.set("n", "<leader>mf", "<Plug>(VM-Find-Under)", { noremap = false, desc = "VM Find Next Occurrence" })
    end,
  },
}
