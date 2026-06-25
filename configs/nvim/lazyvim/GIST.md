# LazyVim Config — Gist

**Distro**: [LazyVim](https://github.com/LazyVim/LazyVim) by folke  
**Colorscheme**: Catppuccin Mocha  
**Plugin Manager**: lazy.nvim (auto-bootstraps)

---

## Structure

```
lazyvim/
├── init.lua                     # entrypoint → config.lazy
├── lazy-lock.json               # pinned plugin versions
└── lua/
    ├── config/
    │   ├── lazy.lua             # lazy.nvim setup, plugin spec
    │   ├── options.lua          # Neovim options
    │   ├── keymaps.lua          # custom keymaps
    │   └── autocmds.lua         # custom autocommands
    └── plugins/                 # one file per plugin override
        ├── ai.lua               # claudecode.nvim placeholder
        ├── bufferline.lua
        ├── cloak.lua            # .env secret masking
        ├── colorscheme.lua      # catppuccin default
        ├── comment.lua
        ├── formatting.lua       # conform.nvim
        ├── fzf.lua              # fzf-lua options
        ├── gitsigns.lua         # inline git blame
        ├── learn.lua
        ├── lsp.lua              # nvim-lspconfig, format-on-save
        ├── multi_cursor.lua
        ├── precognition.lua
        ├── snack.lua            # folke/snacks.nvim
        ├── undotree.lua
        ├── wakatime.lua
        └── yanky.lua
```

---

## Key Overrides

### Options (`lua/config/options.lua`)
- Absolute + relative line numbers
- Custom filetypes: Jenkinsfile → groovy, Dockerfile, dockerignore

### Keymaps (`lua/config/keymaps.lua`)
| Key | Action |
|-----|--------|
| `<leader>cp` | Copy absolute file path to clipboard |
| `<leader>fy` | Copy relative file path (notify) |
| `<leader>fY` | Copy absolute file path (notify) |
| `<leader>mj` / `<leader>mk` | Move line or selection down/up |
| `:BufTab <bufnr>` | Open buffer in new tab |

### Autocmds (`lua/config/autocmds.lua`)
- **Large JSON guard**: Disables LSP clients on JSON files >500KB (performance)

---

## Plugin Highlights

### Snacks (`folke/snacks.nvim`)
- Notifier enabled
- Picker: shows hidden + ignored files, excludes `node_modules`/`.git`, preview disabled in files/explorer sources

### fzf-lua
- Vertical preview layout at 80% width
- `bat` as grep previewer, wrap enabled

### LSP (`neovim/nvim-lspconfig`)
- Format on save enabled (2s timeout, synchronous)

### Gitsigns
- Inline blame at end-of-line, no delay

### Cloak (`laytan/cloak.nvim`)
- Masks secrets in `.env*` files with `*`
- Keymaps: toggle (`<leader>ct`), preview line (`<leader>cl`), enable/disable (`<leader>ce`/`<leader>cd`)

### Conform (`stevearc/conform.nvim`)
- Groovy → `npm-groovy-lint`
- SQL → `sql_formatter`

### Colorscheme
- Catppuccin Mocha (priority 1000, set as LazyVim default)

---

## Default LazyVim Behavior (not overridden)
- Most LazyVim defaults preserved — this config is intentionally minimal
- Plugin lazy-loading: LazyVim plugins lazy, custom plugins eager (`lazy = false`)
- No `version` pinning — tracks latest git commits
- Periodic update checks (no notification)
- Disabled built-in plugins: gzip, tarPlugin, tohtml, tutor, zipPlugin
