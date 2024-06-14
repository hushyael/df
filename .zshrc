plugins=(git gitfast fzf)

export ZSH="$HOME/.oh-my-zsh"
export GOPATH="$HOME/code/go"
export PATH=$PATH:$GOPATH/bin
export PATH=/opt/homebrew/bin:$PATH
export LC_ALL=en_US.UTF-8

source $ZSH/oh-my-zsh.sh

setopt INC_APPEND_HISTORY     # Immediately append to history file.
setopt HIST_EXPIRE_DUPS_FIRST # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS       # Dont record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS   # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS      # Do not display a line previously found.
setopt HIST_IGNORE_SPACE      # Dont record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS      # Dont write duplicate entries in the history file.

PROMPT="$ "

alias ..="cd .."
alias c="clear"
alias f="pwd"
alias b="git rev-parse --abbrev-ref HEAD"
