fpath+=$HOME/.zsh/pure

autoload -U promptinit; promptinit
prompt pure

setopt auto_cd

# Theme
export ZSH="/Users/niall.barber/.oh-my-zsh"
export DEFAULT_USER="$(whoami)"

fortune | cowsay -f tux | lolcat

# Plugins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Functions
## Make directory && cd into it
mkcd () {
  mkdir -p -- "$1" &&
  cd -P -- "$1"
}

## Git: add, commit, push
gacp () {
  git add .
  git commit -m "$1"
  git push
}

## Push current git branch
gpcb () {
  ref=$(git symbolic-ref HEAD | cut -d'/' -f3)
  git push -u origin $ref
}

# Aliases
# - Permissions
alias plz='sudo $(fc -ln -1)'
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
# - Git
alias gc="git commit -m"
alias gs="git status"
alias gp="git push"
alias ga="git add ."
alias gcc="git checkout"
alias gcb="git checkout -b"
alias gp-u="git push -u origin"
# Git Work
alias gfp="git fetch pyrite"
alias gpp="git pull pyrite"
alias rrls="npm run reset && npm run lerna-bootstrap && npm run start"
# - NPM
alias ns="npm start"
alias nbb="npm run build"
alias nd="npm run dev"
alias ffs="rm -rf package-lock.json node_modules && npm i"
# - Travel
alias go="cd ~/Git"
# Taskbook
alias tbt="tb --timeline"
