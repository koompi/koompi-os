#!/bin/sh
# navigation
alias ls='ls -lGh --color=auto'
alias la='ls -alGh --color=auto'
alias ..='cd .. ; ls -laGh --color=auto'
alias h='cd ~ ; pwd'
alias r='cd / ; ls -laGh --color=auto'
alias reboot="systemctl reboot -i"
alias c='clear'
alias cl='c & ls'

# improve pi experience
alias pi='[[ -f /var/lib/pacman/db.lck ]] && sudo rm -rf /var/lib/pacman/db.lck; find /var/cache/pacman/pkg/ -name *.part -exec sudo rm -rf {} \;; pi'

function cwp() {
        cargo watch -x "run --package ${1}"
}

# unalias sudo
function sudo() {
        # improve pacman experience
        if [[ $1 == "pacman" ]]; then
                find /var/cache/pacman/pkg/ -name "*.part" -exec sudo rm -rf {} \;
                [[ -f /var/lib/pacman/db.lck ]] && sudo rm -rf /var/lib/pacman/db.lck
                command sudo pacman ${@:2}
        else
                command sudo $@
        fi
}
