#!/bin/bash

# MY ALIASES SCRIPT
# source: https://github.com/panosangel/my-aliases

# Basic Variables
EDITOR=nano
# Enable special aliases
MY_PYTHON_ALIASES=false
MY_ANGULAR_ALIASES=true

# System commands
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ls="ls --color=auto"
alias als="ls -als"
alias alh="ls -alh"
alias mkdir="mkdir -p -v"
alias egrep="egrep -i --color=auto"

# System tools
alias update="sudo apt-get update"
alias upgrade="sudo apt-get upgrade"
alias fontupdate="sudo fc-cache -f -v"
alias mysystem="inxi -Fxzr"
alias mydistro="lsb_release -d -c"
alias g="git"

# Networking
alias ping="ping -c4"
alias open_ports="sudo netstat -tupna"
alias listening_ports="sudo netstat -tupnl"
alias mywanip="dig +short myip.opendns.com @resolver1.opendns.com"
alias mylocalip="sudo ipp addr | grep -Eo 'inet (addr:)?([0-9]*\\.){3}[0-9]*' | grep -Eo '([0-9]*\\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias myiptables="sudo iptables -vnL --line-numbers"

# Quick File Editing
alias edit_hosts="sudo $EDITOR /etc/hosts"

# GoTo section
alias gt_docs="cd ~/Documents"
alias gt_dl="cd ~/Documents/Downloads"
alias gt_projects="cd ~/Documents/My_Projects"

# Shell: BASH
alias reload_bash="source ~/.bashrc"

# Shell: Z Shell
alias reload_zsh="source ~/.zshrc"

# Development: Python
if [ "$MY_PYTHON_ALIASES" = true ] ; then
  alias py_devenv="source ~/Documents/My_Projects/python-devenv/bin/activate"
  alias py_webserver="python -m SimpleHTTPServer 8182"
  alias py_notebook="jupyter notebook"
fi

# Development: Angular 6
if [ "$MY_ANGULAR_ALIASES" = true ] ; then
  alias ngs='ng serve --open'
  alias npmrl='npm run local'
fi
