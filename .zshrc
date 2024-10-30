plugins=(git gitfast fzf z)

export ZSH="$HOME/.oh-my-zsh"
export GOPATH="$HOME/code/go"
export PATH=$PATH:$GOPATH/bin
export PATH=/opt/homebrew/bin:$PATH
export LC_ALL=en_US.UTF-8

source <(fzf --zsh)
source $ZSH/oh-my-zsh.sh

PROMPT="$ "

setopt INC_APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS

alias ..="cd .."
alias c="clear"
alias f="pwd"
alias n="nvim"
alias b="git rev-parse --abbrev-ref HEAD"

cover () {
  t=$(mktemp)
  go test $COVERFLAGS -race -coverprofile=$t $@ && go tool cover -func=$t && unlink $t
}

coverweb() {
  t=$(mktemp)
  go test $COVERFLAGS -coverprofile=$t $@ && go tool cover -html=$t && unlink $t
}
