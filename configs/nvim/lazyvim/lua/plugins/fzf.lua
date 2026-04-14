return {
  "ibhagwan/fzf-lua",
  opts = {
    winopts = {
      preview = {
        layout = "vertical",
        vertical = "right:80%", -- bigger preview
        wrap = true, -- ✅ THIS is what you want
      },
    },
    grep = {
      previewer = "bat", -- ✅ use bat for full readable lines
    },
  },
}
