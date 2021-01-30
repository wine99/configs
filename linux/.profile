# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi



#alias startssh="sudo service ssh --full-restart && ssh -fCNR 3333:localhost:2222 root@47.114.175.116"
alias assh="autossh -fCNR 3333:localhost:2222 root@47.114.175.116"

export PATH=/home/yzj/.local/bin:/mnt/e/wsl/ubuntu/apps/racket/bin:$PATH
export whost=$(grep -m 1 nameserver /etc/resolv.conf | awk '{print $2}')

export DISPLAY=$whost:0
#export DISPLAY=:0.0
export LIBGL_ALWAYS_INDIRECT=1

#Virtualenvwrapper settings:
export WORKON_HOME=$HOME/.virtualenvs
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
. /home/yzj/.local/bin/virtualenvwrapper.sh
workon base
