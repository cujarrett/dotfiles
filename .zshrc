export ZSH="/Users/matt-jarrett/.oh-my-zsh"

ZSH_THEME=""

alias "suggestionsOn"="_zsh_autosuggest_enable"
alias "suggestionsOff"="_zsh_autosuggest_disable"

alias "k"="kubectl"
alias "kn"="kubectl config set-context --current --namespace "

alias "python"="python3"
alias "pip"="pip3"

alias "reload"="source=~/.zshrc"

plugins=(git)

source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
prompt pure

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

