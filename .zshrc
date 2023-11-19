export ZSH="$HOME/.oh-my-zsh"
export GOPATH="$HOME/code/go"
export PATH=$PATH:$GOPATH/bin
export PATH=/opt/homebrew/bin:$PATH

plugins=(git fzf)

source $ZSH/oh-my-zsh.sh

autoload -U promptinit && promptinit
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '[%b]'
PROMPT='%F{78}@%n%f ~/%1d %F{75}${vcs_info_msg_0_}%f '


alias ..="cd .."
alias c="clear"
