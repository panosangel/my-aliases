#!/bin/bash

# MY ALIASES SCRIPT
# source: https://github.com/panosangel/my-aliases

common_aliases() {
    # System commands
    alias ..="cd .."
    alias ...="cd ../.."
    alias ....="cd ../../.."
    alias als="ls -als"
    alias alh="ls -alh"
    alias mkdir="mkdir -p -v"
    alias egrep="egrep -i --color=auto"
    alias du="du -h"

    # Networking
    alias ping="ping -c4"
    alias my_wan_ip="curl ifconfig.me"

    # Shell: BASH
    alias reload_bash="source ~/.bashrc"

    # Shell: Z Shell
    alias reload_zsh="source ~/.zshrc"

    # Docker Compose
    alias dc='docker compose'
    alias dcu='docker compose up'
    alias dcud='docker compose up -d'
    alias dcl="docker compose logs"
    alias dcd='docker compose down'
}

macOS_aliases() {
    # System commands
    alias ls="ls -G"
    alias tree="tree -F -L 1"
    alias df="df -h"

    # Networking
    alias my_local_ip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\\.){3}[0-9]*' | grep -Eo '([0-9]*\\.){3}[0-9]*' | grep -v '127.0.0.1'"

    # my-alias inception
    alias update_my_aliases="wget -q -O ~/.my-aliases.sh https://raw.githubusercontent.com/panosangel/my-aliases/master/src/my-aliases.sh && chmod 644 ~/.my-aliases.sh && reload_zsh"
}

gnuLinux_aliases() {
    # System commands
    alias ls="ls --color=auto"
    alias df="df -Th"

    # System helpers
    alias update="sudo apt-get update"
    alias upgrade="sudo apt-get upgrade"
    alias update_fonts="sudo fc-cache -f -v"
    alias my_system="inxi -Fxzr"
    alias my_distro="lsb_release -d -c"
    alias dstato="dstat -cdn --disk-util --disk-tps"

    # Networking
    alias open_ports="sudo netstat -tupna"
    alias listening_ports="sudo netstat -tupnl"
    alias my_iptables="sudo iptables -vnL --line-numbers"
    alias my_local_ip="sudo ip addr | grep -Eo 'inet (addr:)?([0-9]*\\.){3}[0-9]*' | grep -Eo '([0-9]*\\.){3}[0-9]*' | grep -v '127.0.0.1'"
    alias active_tunnels="sudo lsof -i -n | egrep '\<ssh\>'"

    # my-alias inception
    alias update_my_aliases="sudo wget -q -O /etc/profile.d/my-aliases.sh https://raw.githubusercontent.com/panosangel/my-aliases/master/src/my-aliases.sh && sudo chmod 644 /etc/profile.d/my-aliases.sh"
}

init() {
    if [[ ${OSTYPE} == "linux-gnu"* ]] || [[ ${OSTYPE} == "darwin"* ]]; then
        common_aliases
        if [[ ${OSTYPE} == "linux-gnu"* ]]; then
            gnuLinux_aliases
        elif [[ ${OSTYPE} == "darwin"* ]]; then
            macOS_aliases
        fi
    fi
}

init
