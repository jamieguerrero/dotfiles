# Jamie's Dotfiles

Modern, minimal Neovim + Helix setup with native LSP.

## What's Included

### Neovim
- **Plugin Manager:** lazy.nvim
- **File Explorer:** Neo-tree (`<C-n>` to toggle)
- **Fuzzy Finder:** Telescope (`<leader>ff` for files, `<leader>fg` for grep)
- **LSP:** Native LSP with TypeScript, Lua support
- **Completion:** nvim-cmp with snippets
- **Syntax:** Treesitter
- **Theme:** TokyoNight
- **Git:** Gitsigns
- **Statusline:** Lualine

### Helix
- **Theme:** Catppuccin Mocha
- **Language Servers:** tsgo (TypeScript), efm-langserver (ESLint, Stylelint)
- **Formatting:** Prettier via auto-format on save
- **Git:** Gutter diff indicators, git blame keybinds
- **Fuzzy Finder:** Zellij-based file picker
- **File Explorer:** Yazi integration via Zellij

### Shell
- **Shell:** Zsh with oh-my-zsh
- **Theme:** Random emoji
- **Environment:** Auto-configured for Shopify dev, homebrew, nvm

## Installation

```bash
git clone https://github.com/jamieguerrero/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

## Key Bindings

**Leader key:** `<Space>`

### File Navigation
- `<C-n>` - Toggle file tree
- `<leader>ff` - Find files
- `<leader>fg` - Live grep
- `<leader>fb` - Find buffers
- `<leader>fr` - Recent files

### LSP
- `gd` - Go to definition
- `gr` - Go to references
- `K` - Hover documentation
- `<leader>rn` - Rename
- `<leader>ca` - Code actions
- `[d` / `]d` - Next/previous diagnostic

### General
- `jk` - Exit insert mode
- `<C-h/j/k/l>` - Window navigation
- `<Esc>` - Clear search highlight

## Helix Dependencies

Install these via Homebrew:

```bash
brew install helix          # Editor
brew install efm-langserver # Lint/format bridge (ESLint, Stylelint)
brew install zellij         # Terminal multiplexer (for file picker, git diff, etc.)
brew install yazi            # Terminal file manager
```

Install these via npm:

```bash
npm install -g @anthropic-ai/tsgo  # TypeScript language server (tsgo)
```

After installing, make sure `~/.cache/efm-langserver/` exists (the install script creates it) and update the `log-file` path in `~/.config/efm-langserver/config.yaml` if needed.

### Helix Key Bindings

**Leader key:** `<Space>`

| Key | Action |
|-----|--------|
| `jk` | Exit insert mode |
| `]g` / `[g` | Next/previous git change |
| `<Space>of` | Fuzzy file picker |
| `<Space>oy` | Yazi file browser |
| `<Space>ot` | Run tests for current file |
| `<Space>ol` | Stylelint current file |
| `<Space>oe` | ESLint current file |
| `<Space>ocf` | Copy file path to clipboard |
| `<Space>ogd` | Git diff current file |
| `<Space>ogD` | Git diff all |
| `<Space>ogh` | Open file on GitHub |
| `<Space>ogb` | Git blame selection |
| `<Space>ovf` | Open file in vertical split |
| `<Space>ohf` | Open file in horizontal split |

## Post-Install

### Neovim
1. Open nvim - plugins auto-install
2. Run `:checkhealth` to verify
3. Mason will auto-install TypeScript LSP

### Helix
1. Install dependencies above
2. Run `hx --health` to verify language servers are detected
3. Open a `.tsx` file and check `:lsp-status` for tsgo + efm

Enjoy! 🌙
