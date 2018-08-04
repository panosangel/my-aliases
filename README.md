# My Aliases

Description: Collection of useful aliases.
Last Update: 2018.08.04


## System: GNU Linux

File: my_aliases.sh
Destination: /etc/profile.d/

### Theory

- https://answers.launchpad.net/ubuntu/+source/bash/+question/229895
- http://serverfault.com/questions/321763/linux-shared-aliases-in-etc-profile-d-not-applied-to-root-user-why
- http://apple.stackexchange.com/questions/25352/list-all-defined-aliases-in-terminal

As I explained in my question, /etc/profile or /etc/profile.d/*.sh do  NOT pass aliases to interactive shells.
- /etc/profile = system-wide LOGIN shells
- /etc/bash.bashrc = system-wide INTERACTIVE shells

### Setup

1) System-wide file "/etc/profile.d/my_aliases.sh".

2) User Interactive add the following lines to $HOME/.bashrc

Enable my_aliases in interactive shells

if [ -f /etc/profile.d/my_aliases.sh ]; then
    . /etc/profile.d/my_aliases.sh
fi


## System: Mac OS X

File: .my_aliases.sh
Destination: ~/

### Setup

1) System-wide file "/etc/profile".

2) User Interactive file $HOME/.bashrc or $HOME/.zshrc

Add the following lines to any of the forementioned (not both) to enable my_aliases

if [ -f ~/.my_aliases.sh ]; then
  source ~/.my_aliases.sh
fi
