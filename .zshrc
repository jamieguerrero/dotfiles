# Path to oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="random-emoji"

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
if [ "$(whoami)" = "jamieguerrero" ] ; then
  # Enable brew (check both Intel and Apple Silicon paths)
  if [ -f /opt/homebrew/bin/brew ]; then
    eval $(/opt/homebrew/bin/brew shellenv)
  elif [ -f /usr/local/bin/brew ]; then
    eval $(/usr/local/bin/brew shellenv)
  fi

  # Enable dev (Shopify)
  [ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

  # tec profile (must come AFTER Homebrew so tec tools take priority)
  [[ -x /Users/jamieguerrero/.local/state/tec/profiles/base/current/global/init ]] && eval "$(/Users/jamieguerrero/.local/state/tec/profiles/base/current/global/init zsh)"

  # Custom prompt with worktree information
  function git_worktree_name() {
    local worktree_name=""
    if [[ "$PWD" == */world/trees/* ]]; then
      worktree_name=$(echo "$PWD" | sed -E 's|.*/world/trees/([^/]+).*|\1|')
      echo "%{$fg[magenta]%}[$worktree_name]%{$reset_color%}"
    fi
  }

  # Override PROMPT to include worktree
  EMOJI=(💩 🐦 🚀 🐞 🎨 🍕 🐭 👽 ☕️ 🔬 💀 🐷 🐼 🐶 🐸 🐧 🐳 🍔 🍣 🍻 🔮 💰 💎 💾 💜 🍪 🌞 🌍 🐌 🐓 🍄)
  function random_emoji { echo -n "$EMOJI[$RANDOM%$#EMOJI+1]"; }
  ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}("
  ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
  ZSH_THEME_GIT_PROMPT_DIRTY="*"
  ZSH_THEME_GIT_PROMPT_CLEAN=""
  PROMPT='$(random_emoji) %{$fg_bold[green]%}➜ %{$fg_bold[cyan]%}%c%{$reset_color%} $(git_prompt_info)$(git_worktree_name) '
  RPROMPT=''

  # bun completions
  [ -s "/Users/jamieguerrero/.bun/_bun" ] && source "/Users/jamieguerrero/.bun/_bun"
fi

# Enable nvm (check multiple paths)
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && source "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && source "/usr/local/opt/nvm/nvm.sh"

  # bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
