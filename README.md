# My Aliases
Description: Linux and macOS command line aliases

## System: GNU Linux
Destination: /etc/profile.d/my-aliases.sh

### Theory
- https://answers.launchpad.net/ubuntu/+source/bash/+question/229895
- http://serverfault.com/questions/321763/linux-shared-aliases-in-etc-profile-d-not-applied-to-root-user-why
- http://apple.stackexchange.com/questions/25352/list-all-defined-aliases-in-terminal

Important: `/etc/profile` or `/etc/profile.d/*.sh` do  NOT pass aliases to interactive shells.
- /etc/profile = system-wide LOGIN shells
- /etc/bash.bashrc = system-wide INTERACTIVE shells

### Setup
1) System-wide file `/etc/profile.d/my-aliases.sh`.

2) User Interactive add the following lines to `$HOME/.bashrc`

Enable my-aliases in interactive shells:
```bash
if [ -f /etc/profile.d/my-aliases.sh ]; then
    . /etc/profile.d/my-aliases.sh
fi
```

## System: Mac OS X
Destination: ~/.my-aliases.sh

### Setup
1) System-wide file `/etc/profile`.

2) User Interactive file `$HOME/.bashrc` or `$HOME/.zshrc`.

Add the following lines to any of the aforementioned (not both) to enable my-aliases:
```bash
if [ -f ~/.my-aliases.sh ]; then
  source ~/.my-aliases.sh
fi
```
