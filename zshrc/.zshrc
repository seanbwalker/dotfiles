alias ff='fastfetch'
alias lg='lazygit'
alias nv='nvim'
source <(fzf --zsh)

# Python version management
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

eval "$(starship init zsh)"
