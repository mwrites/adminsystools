# .bashrc

# User specific aliases and functions
alias rc='vi ~/.bashrc'
alias sz='exec bash'

alias l='ls -l'
alias la='ls -la'

alias v='vi'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'



# Docker
alias dk='docker'
alias dkps='docker ps'
alias dkcps='docker-compose ps'
alias dkbuild='docker-compose up -d --build'
alias dkup='docker-compose up -d'
alias dkdown='docker-compose down --remove-orphans'
alias dr='dkdown && dkbuild'


function dklogs {
    docker logs $(docker ps -aqf "name=$@")
}

function dksh {
    docker exec -it `docker ps -aqf "name=$@"` /bin/bash
}

function dkre {
    docker-compose up -d --force-recreate -no-deps --build $@
}

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi-
