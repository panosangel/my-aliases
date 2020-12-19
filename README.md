# My Aliases

Description: Linux and macOS command line aliases

## Where to install
- `/etc/profile` = system-wide LOGIN shells
- `/etc/bash.bashrc` = system-wide INTERACTIVE shells

**Note:** `/etc/profile` or `/etc/profile.d/*.sh` do **not** pass aliases to interactive shells.

## How to install on GNU Linux
**Recommended Destination:** `/etc/profile.d/my-aliases.sh`

1) Copy aliases file to `/etc/profile.d/my-aliases.sh`.
2) Add the following lines to `$HOME/.bashrc` in order to allow for aliases in user interactive mode
    ```bash
    if [ -f /etc/profile.d/my-aliases.sh ]; then
        . /etc/profile.d/my-aliases.sh
    fi
    ```

## How to install on Mac OS X
**Recommended Destination:** ~/.my-aliases.sh

1) System-wide file `/etc/profile`.
2) User Interactive file `$HOME/.bashrc` or `$HOME/.zshrc`.

Add the following lines to any of the aforementioned (not both) to enable my-aliases:
```bash
if [ -f ~/.my-aliases.sh ]; then
  source ~/.my-aliases.sh
fi
```

## Sources

- [where to install aliases system-wide](https://answers.launchpad.net/ubuntu/+source/bash/+question/229895)
- [serverfault - Linux :: Shared aliases in /etc/profile.d not applied to root user, why?](http://serverfault.com/questions/321763/linux-shared-aliases-in-etc-profile-d-not-applied-to-root-user-why)
- [apple - How can I list and edit all defined aliases in Terminal?](http://apple.stackexchange.com/questions/25352/list-all-defined-aliases-in-terminal)
- [superuser - What does 'source' do?](https://superuser.com/questions/46139/what-does-source-do)
