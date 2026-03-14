#!/bin/bash

# Install oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install custom theme
cp ~/dotfiles/.zsh-theme/random-emoji.zsh-theme ~/.oh-my-zsh/themes/random-emoji.zsh-theme

# Symlink configs
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.config/nvim ~/.config/nvim
ln -sf ~/dotfiles/.config/helix ~/.config/helix
ln -sf ~/dotfiles/.config/efm-langserver ~/.config/efm-langserver

# Ensure efm-langserver log directory exists
mkdir -p ~/.cache/efm-langserver

echo "✓ Dotfiles installed!"
echo ""
echo "Next steps:"
echo "1. Open nvim - it will auto-install lazy.nvim and all plugins"
echo "2. Run :checkhealth to verify everything works"
echo "3. TypeScript LSP will auto-install via Mason"
echo "4. For Helix: install efm-langserver (brew install efm-langserver)"
echo "5. Update the log-file path in ~/.config/efm-langserver/config.yaml to your home directory"
