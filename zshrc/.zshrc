# Env
export EDITOR="nvim"
export VISUAL="nvim"
export LANG="en_AU.UTF-8"
export LC_ALL="en_AU.UTF-8"

# History
export HISTSIZE=100000
export SAVEHIST=100000
export HISTFILE="$HOME/.zsh_history"

# Shell opt
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY
setopt AUTO_CD
setopt CORRECT
setopt EXTENDED_GLOB
setopt NO_BEEP

# generic aliases
alias ff='fastfetch'
alias lg='lazygit'
alias nv='nvim'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'

alias reload='source ~/.zshrc'

# eza aliases
alias ls="eza --icons --group-directories-first"
alias ll="eza -la --icons --group-directories-first --git"
alias la="eza -a --icons --group-directories-first"
alias tree="eza --tree --icons --git-ignore"
alias lt="eza --tree --level=2 --icons --git-ignore"
alias ltt="eza --tree --level=3 --icons --git-ignore"

# Functions
mkcd() {
  mkdir -p "$1" && cd "$1"
}

# Plugins
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(fzf --zsh)"

# Python version management
if command -v pyenv &>/dev/null; then
  eval "$(pyenv init -)"
fi

# Node version management
if command -v fnm &>/dev/null && [[ -z "$FNM_MULTISHELL_PATH" ]]; then
  eval "$(fnm env --use-on-cd --shell zsh)"
fi

# Prompt Starship
eval "$(starship init zsh)"

