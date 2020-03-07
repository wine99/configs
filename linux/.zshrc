# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch
unsetopt notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/zijun/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


alias condaon='source /opt/anaconda/bin/activate root'
alias condaoff='source /opt/anaconda/bin/deactivate root'
