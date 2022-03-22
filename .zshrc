export ZSH="$HOME/.oh-my-zsh"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '[%b]'
PROMPT='%F{78}@%n%f ~/%1d %F{75}${vcs_info_msg_0_}%f'$'\n''%F{78}$%f '

alias ..='cd ..'
alias ...='cd ../..'
alias c="clear"
alias vim="nvim"
alias zshconfig="sudo vim ~/.zshrc"
alias ohmyzsh="sudo vim ~/.oh-my-zsh"
alias hosts="sudo vim /etc/hosts"
alias nvimconfig="sudo vim ~/.config/nvim/init.vim"