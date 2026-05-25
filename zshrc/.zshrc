# generic aliases
alias ff='fastfetch'
alias lg='lazygit'
alias nv='nvim'

# eza aliases
alias ls="eza --icons --group-directories-first"
alias ll="eza -la --icons --group-directories-first --git"
alias la="eza -a --icons --group-directories-first"
alias tree="eza --tree --icons --git-ignore"
alias lt="eza --tree --level=2 --icons --git-ignore"
alias ltt="eza --tree --level=3 --icons --git-ignore"

source <(fzf --zsh)

# Python version management
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Node version management
eval "$(fnm env --use-on-cd --shell zsh)"

eval "$(starship init zsh)"
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
