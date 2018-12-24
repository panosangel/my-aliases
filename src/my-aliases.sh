#!/bin/bash

# MY ALIASES SCRIPT
# source: https://github.com/panosangel/my-aliases

EDITOR=nano

common_aliases() {
    # System commands
    alias ..="cd .."
    alias ...="cd ../.."
    alias ....="cd ../../.."
    alias als="ls -als"
    alias alh="ls -alh"
    alias mkdir="mkdir -p -v"
    alias egrep="egrep -i --color=auto"

    # Networking
    alias ping="ping -c4"
    alias mywanip="dig +short myip.opendns.com @resolver1.opendns.com"

    # Quick File Editing
    alias edit_hosts="sudo $EDITOR /etc/hosts"

    # Shell: BASH
    alias reload_bash="source ~/.bashrc"

    # Shell: Z Shell
    alias reload_zsh="source ~/.zshrc"

    # Development tools
    alias g="git"

    # Development: Python
    alias py_devenv="source ~/Documents/My_Projects/python-devenv/bin/activate"
    alias py_webserver="python -m SimpleHTTPServer 8182"
    alias py_notebook="jupyter notebook"

    # Development: Angular 6
    alias ngs='ng serve --open'
    alias npmrl='npm run local'
}

macOS_aliases() {
    # System commands
    alias ls="ls -G"
    alias tree="tree -F -L 1"

    # Networking
    alias localip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\\.){3}[0-9]*' | grep -Eo '([0-9]*\\.){3}[0-9]*' | grep -v '127.0.0.1'"

    # GoTo section
    alias gt_docs="cd ~/Documents"
    alias gt_dl="cd ~/Downloads"
    alias gt_projects="cd ~/Documents/My_Projects"
}

gnuLinux_aliases() {
    # System commands
    alias ls="ls --color=auto"

    # System helpers
    alias update="sudo apt-get update"
    alias upgrade="sudo apt-get upgrade"
    alias fontupdate="sudo fc-cache -f -v"
    alias mysystem="inxi -Fxzr"
    alias mydistro="lsb_release -d -c"
    alias dstato="dstat -cdn --disk-util --disk-tps"

    # Networking
    alias open_ports="sudo netstat -tupna"
    alias listening_ports="sudo netstat -tupnl"
    alias myiptables="sudo iptables -vnL --line-numbers"
    alias mylocalip="sudo ipp addr | grep -Eo 'inet (addr:)?([0-9]*\\.){3}[0-9]*' | grep -Eo '([0-9]*\\.){3}[0-9]*' | grep -v '127.0.0.1'"

    # GoTo section
    alias gt_docs="cd ~/Documents"
    alias gt_dl="cd ~/Downloads"
    alias gt_projects="cd ~/My_Projects"
}

init() {
    if [[ ${OSTYPE} == "linux-gnu" ]] || [[ ${OSTYPE} == "darwin"* ]]; then
        common_aliases
        if [[ ${OSTYPE} == "linux-gnu" ]]; then
            gnuLinux_aliases
        elif [[ ${OSTYPE} == "darwin"* ]]; then
            macOS_aliases
        fi
    fi
}

init