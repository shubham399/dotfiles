return {
  "neovim/nvim-lspconfig",
  opts = {
    -- Add this to your existing LSP config
    format = {
      -- Format on save
      timeout_ms = 2000,
      async = false,
      quiet = false,
      -- Important: This enables the actual format on save feature
      format_on_save = {
        enabled = true,
        -- Only format specific file types if needed
        -- allow_filetypes = { "lua", "python", "javascript" }
      },
    },
  },
}
