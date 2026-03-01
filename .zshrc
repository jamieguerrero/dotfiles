# Path to oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="random-emoji"

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# When zsh shell initializes,
# Only run these commands for my personal computer
if [ "$(whoami)" = "jamieguerrero" ] ; then
  # Enable brew
  eval $(/opt/homebrew/bin/brew shellenv)

  # Enable dev (Shopify)
  [ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

  # Enable nvm
  export NVM_DIR=~/.nvm
  source $(brew --prefix nvm)/nvm.sh
  [[ -x /opt/homebrew/bin/brew ]] && eval $(/opt/homebrew/bin/brew shellenv)
fi
