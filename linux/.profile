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


source ~/.aliases

#alias startssh="sudo service ssh --full-restart && ssh -fCNR 3333:localhost:2222 root@47.114.175.116"
#alias assh="autossh -fCNR 3333:localhost:2222 root@47.114.175.116"

export PATH=$HOME/.yarn/bin:$HOME/.local/bin:$PATH
export whost=$(grep -m 1 nameserver /etc/resolv.conf | awk '{print $2}')
export XDG_CONFIG_HOME=$HOME/.config

export DISPLAY=$whost:0
#export DISPLAY=:0.0
#export NO_AT_BRIDGE=1
export LIBGL_ALWAYS_INDIRECT=1

#export HTTP_PROXY=http://$whost:7890
#export HTTPS_PROXY=http://$whost:7890
#export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libproxychains.so.3
alias proxy='
    export https_proxy="socks5://${whost}:2080";
    export http_proxy="socks5://${whost}:2080";
    export all_proxy="socks5://${whost}:2080";
    echo -e "Acquire::http::Proxy \"http://${whost}:2080\";" | sudo tee -a /etc/apt/apt.conf.d/proxy.conf > /dev/null;
    echo -e "Acquire::https::Proxy \"http://${whost}:2080\";" | sudo tee -a /etc/apt/apt.conf.d/proxy.conf > /dev/null;
'
alias unproxy='
    unset https_proxy;
    unset http_proxy;
    unset all_proxy;
    sudo sed -i -e "/Acquire::http::Proxy/d" /etc/apt/apt.conf.d/proxy.conf;
    sudo sed -i -e "/Acquire::https::Proxy/d" /etc/apt/apt.conf.d/proxy.conf;
'

#Virtualenvwrapper settings:
export WORKON_HOME=$HOME/.virtualenvs
VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
. $HOME/.local/bin/virtualenvwrapper.sh
workon base
