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
  # Enable brew (check both Intel and Apple Silicon paths)
  if [ -f /opt/homebrew/bin/brew ]; then
    eval $(/opt/homebrew/bin/brew shellenv)
  elif [ -f /usr/local/bin/brew ]; then
    eval $(/usr/local/bin/brew shellenv)
  fi

  # Enable dev (Shopify)
  [ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

  # Enable nvm (check multiple paths)
  export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && source "/opt/homebrew/opt/nvm/nvm.sh"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && source "/usr/local/opt/nvm/nvm.sh"
fi

# tec profile (must come AFTER Homebrew so tec tools take priority)
[[ -x /Users/jamieguerrero/.local/state/tec/profiles/base/current/global/init ]] && eval "$(/Users/jamieguerrero/.local/state/tec/profiles/base/current/global/init zsh)"

# bun completions
[ -s "/Users/jamieguerrero/.bun/_bun" ] && source "/Users/jamieguerrero/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
