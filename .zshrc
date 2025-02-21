setopt INC_APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS

fpath=(~/.zsh/plugins/git-completion/zsh $fpath)

source ~/.zsh/plugins/git-completion/prompt.sh
source ~/.zsh/plugins/zsh-z/zsh-z.plugin.zsh
source <(fzf --zsh)

zstyle ':completion:*' menu select

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

export PATH=/opt/homebrew/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"
export GOPATH="$HOME/code/go"
export GOBIN="$GOPATH/bin"
export PATH="$GOBIN:$PATH"

PROMPT="$ "

alias ~="cd ~"
alias ..="cd .."
alias c="clear"
alias f="pwd"
alias n="nvim"
alias l="ls -a -lh -F"
alias b="git rev-parse --abbrev-ref HEAD"
alias vimcfg="n $HOME/.config/nvim"
alias zshcfg="n $HOME/.zshrc"

alias gl="git pull"
alias gf="git fetch"
alias ga="git add"
alias gd="git diff"
alias gc="git commit"
alias gb="git branch"
alias gp="git push origin \$(git rev-parse --abbrev-ref HEAD)"
alias gca="git commit --amend"
alias gcl="git clone "
alias gaa="git add -A"
alias gst="git status"
alias gco="git checkout"
alias gcb="git checkout -b"
alias glg="git log"
alias grs="git restore"
alias gbd="git branch -d"
alias grss="git restore --staged"
alias gcmsg="git commit -m"

alias compose="docker compose"
alias dkp="docker network prune -f && docker container prune -f && docker image prune -a -f && docker volume prune -a -f"
alias dkl="docker ps"
alias dke="docker exec"
alias dks="docker stop"
alias dksa="docker stop \$(docker ps -q)"

gor () {
  env_file=$1
  shift
  env $(cat $env_file | xargs) go run -race "$@"
}

got () {
	go test -v -race ./...
}

gol () {
	golangci-lint run --show-stats
}

goc () {
  t=$(mktemp)
  go test $COVERFLAGS -race -coverprofile=$t $@ && go tool cover -func=$t && unlink $t
}

gocw() {
  t=$(mktemp)
  go test $COVERFLAGS -coverprofile=$t $@ && go tool cover -html=$t && unlink $t
}

