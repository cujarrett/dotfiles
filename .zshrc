export ZSH="$HOME/.oh-my-zsh"

# Keep PATH stable across repeated `source ~/.zshrc` calls.
typeset -U path PATH
path=(
  /opt/homebrew/opt/node@24/bin
  $HOME/go/bin
  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
  $path
)

export DROPBOX="$HOME/Library/CloudStorage/Dropbox"

# Load sensitive environment variables
[ -f ~/.secrets ] && source ~/.secrets

ZSH_THEME=""

plugins=(
  git
  zsh-autosuggestions
  tmux
)

source $ZSH/oh-my-zsh.sh

#Alias
[ -f ~/.aliases ] && source ~/.aliases

export EDITOR="code -w"
export VISUAL="$EDITOR"

# Starship prompt. Keep this last.
export STARSHIP_CONFIG="$HOME/Developer/dotfiles/terminal/starship.toml"
command -v starship >/dev/null && eval "$(starship init zsh)"
