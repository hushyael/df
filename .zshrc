export ZSH="$HOME/.oh-my-zsh"
export GOPATH="$HOME/code/go"
export PATH=$PATH:$GOPATH/bin

plugins=(git fzf)

ulimit -n 200000

source $ZSH/oh-my-zsh.sh

autoload -U promptinit && promptinit
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ":vcs_info:git:*" formats "[%b]"
PROMPT="%F{78}@%n%f ~/%1d %F{75}${vcs_info_msg_0_}%f "

alias ..="cd .."
alias ...="cd ../.."
alias c="clear"
alias vim="nvim"
alias vi="nvim"
alias zshconfig="sudo vim ~/.zshrc"
alias nvimconfig="sudo vim ~/.config/nvim/init.vim"
alias ohmyzsh="sudo vim ~/.oh-my-zsh"
alias hosts="sudo vim /etc/hosts"
