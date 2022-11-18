export ZSH="$HOME/.oh-my-zsh"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

plugins=(git fzf)

source $ZSH/oh-my-zsh.sh

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '[%b]'
PROMPT='%F{78}@%n%f ~/%1d %F{75}${vcs_info_msg_0_}%f'$'\n''%F{78}$%f '

alias ..='cd ..'
alias ...='cd ../..'
alias c="clear"
alias vim="nvim"
alias zshconfig="sudo vim ~/.zshrc"
alias nvimconfig="sudo vim ~/.config/nvim/init.vim"
alias ohmyzsh="sudo vim ~/.oh-my-zsh"
alias hosts="sudo vim /etc/hosts"
