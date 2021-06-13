# MY ALIASES

# Edit .zshrc (requires visual studio code installed in path)
alias ez='code ~/.zshrc'

alias sz='source ~/.zshrc && cp ~/.zshrc ~/scripts'

# Edit .hyper.js
alias hyjs='code ~/.hyper.js'

# Copy .hyper.js to my scripts repo
alias chjs='cp ~/.hyper.js ~/scripts'

# System
alias lla='ls -la'
alias cls='clear'
alias mkf='touch'
alias mkd='mkdir'

# FUCK
alias fuck='sudo'
alias fuckit='sudo su'

# PG f**k
alias fk='sudo'
alias fkit='sudo su'

# git commands
alias gnt='git init'

alias ga='git add'

alias gaa='git add .'

alias gc='git commit -m'

alias glg='git log'

alias gst='git status'

alias gph='git push'

# quickly add & commit changes
function gac () {
    git add "$1"
    git commit -m "$2"
}

# add all changes, commit all changes, & push all changes 
# gpa stands for "git push all"
function gpa () {
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
