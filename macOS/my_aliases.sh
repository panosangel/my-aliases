# MY ALIASES SCRIPT
# source: https://github.com/panosangel/my-aliases

# Basic Variables
EDITOR=nano
# Enable special aliases
MY_ANGULAR_ALIASES=true

# System commands
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ls="ls -G"
alias als="ls -als"
alias alh="ls -alh"
alias mkdir="mkdir -p -v"
alias egrep="egrep -i --color=auto"
alias tree="tree -F -L 1"

# System tools
alias g="git"

# Networking
alias ping="ping -c4"
alias mywanip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="sudo ifconfig | grep -Eo 'inet (addr:)?([0-9]*\\.){3}[0-9]*' | grep -Eo '([0-9]*\\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias dnsflush="sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache"

# Quick File Editing
alias edit_hosts="sudo $EDITOR /etc/hosts"

# GoTo section
alias gt_projects="cd ~/Documents/My_Projects"
alias gt_pf="cd ~/Documents/My_Projects/ergo.hellas.portal.frontend"
alias gt_pb="cd ~/Documents/My_Projects/ergo.hellas.portal.backend"

# Shell: BASH
alias reload_bash="source ~/.bashrc"

# Shell: Z Shell
alias reload_zsh="source ~/.zshrc"

# Development: Angular 6
if [ "$MY_ANGULAR_ALIASES" = true ] ; then
  alias ngs='ng serve --open'
  alias npmrl='npm run local'
fi


