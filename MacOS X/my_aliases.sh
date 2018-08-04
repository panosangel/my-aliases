# MY ALIASES SCRIPT

# Basic Variables
EDITOR=nano
# Enable special aliases
MY_PYTHON_ALIASES=false
MY_ANGULAR_ALIASES=true

# System commands
alias ls="ls -G"
alias als="ls -als"
alias alh="ls -alh"
alias mkdir="mkdir -p -v"
alias egrep="egrep -i --color=auto"
alias tree="tree -F -L 1"

# System tools


# Networking
alias dnsflush="sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache"

# Quick File Editing
alias edit_hosts="sudo $EDITOR /etc/hosts"

# GoTo section
alias goto_projects="cd ~/Documents/My\ Projects"
alias goto_pf="cd ~/Documents/My_Projects/ergo.hellas.portal.frontend"
alias goto_pb="cd ~/Documents/My_Projects/ergo.hellas.portal.backend"

# Z Shell section
alias zshreload="source ~/.zshrc"

# Development: Python
if [ "$MY_PYTHON_ALIASES" = true ] ; then
  alias py_devenv="source ~/Workspace/python-devenv/bin/activate"
  alias py_webserver="python -m SimpleHTTPServer 8182"
  alias py_notebook="jupyter notebook"
fi

# Development - Angular 6
if [ "$MY_ANGULAR_ALIASES" = true ] ; then
  alias ngs='ng serve --open'
  alias npmrl='npm run local'
fi


