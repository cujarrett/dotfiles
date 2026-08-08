export ZSH="$HOME/.oh-my-zsh"

# Keep PATH stable across repeated `source ~/.zshrc` calls.
typeset -U path PATH
path=(
  /opt/homebrew/opt/node@24/bin
  /opt/homebrew/opt/ruby/bin
  $HOME/go/bin
  $path
)

export DROPBOX="$HOME/Library/CloudStorage/Dropbox"

# Load sensitive environment variables
[ -f ~/.secrets ] && source ~/.secrets

ZSH_THEME=""

TIMER_FORMAT='[%d]'
TIMER_PRECISION=2

plugins=(
  git
  timer
  zsh-autosuggestions
  tmux
)

source $ZSH/oh-my-zsh.sh

#Alias
[ -f ~/.aliases ] && source ~/.aliases

# powerline-go prompt (README style)
POWERLINE_GO_BIN="$(command -v powerline-go 2>/dev/null)"

function powerline_precmd() {
    PS1="$("$POWERLINE_GO_BIN" -error $? -modules "cwd,git" -cwd-mode plain -cwd-max-depth 3 -git-mode simple -max-width 70 -theme default)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done

  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ] && [ -n "$POWERLINE_GO_BIN" ] && [ -x "$POWERLINE_GO_BIN" ]; then
    install_powerline_precmd
fi
