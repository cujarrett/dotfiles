# Path to your oh-my-zsh installation.
export ZSH="/Users/matt-jarrett/.oh-my-zsh"

ZSH_THEME=""

alias "k"="kubectl"
alias "reload"="source=~/.zshrc"

plugins=(git)

source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
prompt pure

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
