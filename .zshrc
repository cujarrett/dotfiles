export ZSH="/Users/matt-jarrett/.oh-my-zsh"
export PATH="/usr/local/opt/ruby/bin:$PATH"

ZSH_THEME=""

alias "suggestionsOn"="_zsh_autosuggest_enable"
alias "suggestionsOff"="_zsh_autosuggest_disable"

alias "k"="kubectl"
alias "kn"="kubectl config set-context --current --namespace "
alias "kgc"="kubectl config get-contexts"

alias "tf"="terraform"

alias "python"="python3"
alias "pip"="pip3"

alias "gitnevermind"="git reset --soft HEAD~1"

alias "reload"="source=~/.zshrc"

plugins=(
  git
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

source /Users/matt-jarrett/.oh-my-zsh/custom/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

