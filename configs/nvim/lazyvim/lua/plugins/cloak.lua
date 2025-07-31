-- ~/.config/nvim/lua/plugins/cloak.lua
return {
  "laytan/cloak.nvim",
  event = "BufReadPre",
  config = function()
    require("cloak").setup({
      enabled = true,
      cloak_character = "*",
      patterns = {
        {
          file_pattern = ".env*",
          cloak_pattern = "=.+",
        },
      },
    })
  end,
}
