# Jamie's Dotfiles

Modern, minimal Neovim setup with native LSP.

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

## Post-Install

1. Open nvim - plugins auto-install
2. Run `:checkhealth` to verify
3. Mason will auto-install TypeScript LSP
4. Enjoy! 🌙
