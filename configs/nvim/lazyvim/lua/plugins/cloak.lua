return {
  "laytan/cloak.nvim",
  event = "BufReadPre",
  config = function()
    local cloak = require("cloak")

    -- Setup patterns
    cloak.setup({
      enabled = true,
      cloak_character = "*",
      patterns = {
        {
          file_pattern = ".env*",
          cloak_pattern = "=.+",
        },
      },
    })

    -- ────────────── KEYMAPS ──────────────

    -- Toggle cloak for entire buffer
    vim.keymap.set("n", "<leader>ct", "<cmd>CloakToggle<CR>", { desc = "Toggle Cloak Buffer" })

    vim.keymap.set("n", "<leader>cl", "<cmd>CloakPreviewLine<CR>", { desc = "Preview Cloak Line" })

    -- Enable / Disable cloak manually for entire buffer
    vim.keymap.set("n", "<leader>ce", "<cmd>CloakEnable<CR>", { desc = "Enable Cloak Buffer" })
    vim.keymap.set("n", "<leader>cd", "<cmd>CloakDisable<CR>", { desc = "Disable Cloak Buffer" })
  end,
}
