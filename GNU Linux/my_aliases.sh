#!/bin/bash

# MY ALIASES SCRIPT
# source: https://github.com/panosangel/my-aliases

# Basic Variables
EDITOR=nano
# Enable special aliases
MY_PYTHON_ALIASES=false
MY_ANGULAR_ALIASES=true
MY_DOCKER_ALIASES=true

# System commands
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

# Networking
alias open_ports="sudo netstat -tupna"
alias listening_ports="sudo netstat -tupnl"
alias mywanip="wget -qO- http://checkip.dyndns.org|cut -d\> -f7 |cut -d\< -f1"
alias myiptables="sudo iptables -vnL --line-numbers"

# Quick File Editing
alias edit_hosts="sudo $EDITOR /etc/hosts"

# GoTo section
alias goto_projects="cd ~/Documents/My_Projects"

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

# Development: Docker
if [ "$MY_DOCKER_ALIASES" = true ] ; then
  #TODO
fi
