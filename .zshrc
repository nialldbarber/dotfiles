# Theme
export ZSH="/Users/niall.barber/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"

export DEFAULT_USER="$(whoami)"

# Plugins
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme

EMOJIS=(💩  🚀  🍕  👽  🔥  ☕️  💀  🍔  🍻  😶  😎  🤓  👻  🥔  🤦  🔫 )
SELECTED_EMOJI=${EMOJIS[$RANDOM % ${#EMOJIS[@]}]};

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%K{282a36}%k"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%K{282a36} ${SELECTED_EMOJI}  %f%F{000}%k\ue0b0%f "

# Time
POWERLEVEL9K_TIME_FORMAT="⏰   %D{%H:%M || 📅   %d.%m.%y}"
POWERLEVEL9K_TIME_BACKGROUND='117'
POWERLEVEL9K_TIME_FOREGROUND='black'

# Aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
# - Permissions
alias plz='sudo $(fc -ln -1)'
# - Git
alias gc="git commit -m"
alias gs="git status"
alias gp="git push"
alias ga="git add ."
alias gcc="git checkout"
alias gcb="git checkout -b"
# - NPM
alias ns="npm start"
alias nbb="npm run build"
alias nd="npm run dev"
alias ffs="rm -rf package-lock.json node_modules && npm i"
# - Travel
alias go="cd ~/Git"
