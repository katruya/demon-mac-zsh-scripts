# starship prompt
eval "$(starship init zsh)"

# plugins
source $HOME/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $HOME/.zsh/completion.zsh

# Initialize the completion system
autoload -Uz compinit

# Cache completion if nothing changed - faster startup time
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# Enhanced form of menu completion called `menu selection'
zmodload -i zsh/complist

# MY ALIASES

# Edit .zshrc (requires visual studio code installed in path)
alias ez='code ~/.zshrc'

alias sz='source ~/.zshrc && cp ~/.zshrc ~/scripts'

# Edit .hyper.js
alias hyjs='code ~/.hyper.js'

# Copy .hyper.js to my scripts repo
alias chjs='cp ~/.hyper.js ~/scripts'

# System
alias ls='ls -G'
alias lla='ls -laG'
alias cls='clear'
alias mkf='touch'
alias mkd='mkdir'
alias rm='rm -i'
alias rma='rm -rf'
alias cp='cp -i'
alias mv='mv -i'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias less='less -R'

# FUCK
alias fuck='sudo'
alias fuckit='sudo su'

# PG f**k
alias fk='sudo'
alias fkit='sudo su'

# git commands
alias g='git'
alias gnt='git init'

alias ga='git add'

alias gaa='git add .'

alias gc='git commit -m'

alias glg='git log'

alias gst='git status'

alias gph='git push'

# quickly add & commit changes
function gaac() {
    git add .
    git commit -m "$1"
}

# add all changes, commit all changes, & push all changes 
# gpa stands for "git push all"
function gpa() {
    git add .
    git commit -m "[ git-push-all script-generated text ] This is an emergency commit & push operation - or I just am being lazy..."
    git push
}

# I'm going to need this...
alias gamend='git commit --amend'

# node/npm commands
alias js='node'
alias nit='npm init'
alias ni='npm install'
alias nps='npm start'
alias npt='npm test'

# Compile & Run - C++
alias cpcr='g++ -I -std=c++14 *.cpp -o app && ./app'

# brew commands
alias bi='brew install'

# logging commands
alias logger='~/scripts/logger.sh'
alias newlogger='~/scripts/logger.sh'eval "$(starship init zsh)"

# personal stuff
alias depresso='node ~/depressed/depresso.js'
