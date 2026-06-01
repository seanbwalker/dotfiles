eval "$(/opt/homebrew/bin/brew shellenv zsh)"

# pyenv — PATH export only
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
