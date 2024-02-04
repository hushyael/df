plugins=(git gitfast fzf)

export ZSH="$HOME/.oh-my-zsh"
export GOPATH="$HOME/code/go"
export PATH=$PATH:$GOPATH/bin
export PATH=/opt/homebrew/bin:$PATH
export LC_ALL=en_US.UTF-8

source $ZSH/oh-my-zsh.sh

# PROMPT="%(?:%1 :%1 )%c"
# PROMPT+='%F{blue}$(__git_ps1 " [%s]")%f $ '

PROMPT="$ "

alias ..="cd .."
alias c="clear"
alias f="pwd"
alias b="git rev-parse --abbrev-ref HEAD"
alias pprof="go tool pprof -http=:"