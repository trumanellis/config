# ~/.bashrc

# used for bash non-login shells.
# non-login shells include:
# * X sessions (xdm, gdm, kdm)
# * X Terminals (xterm, konsole, gnome-terminal)
# * running remote commands via ssh

# NOTE: some programs (ie, winscp) fail if this generates any output.

# first, source the system bashrc
#if [ -r /etc/bashrc ]; then
#  . /etc/bash.bashrc
#fi

# smart tab completion
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# disable command-not-found
unset command_not_found_handle

# default editor: this is used by svn, etc.
# the only safe default for EDITOR is one which instructs the user how to quit.
# most users will change this to vim or emacs.
export EDITOR=vim
set -o vi

# add your customizations below
alias ls='ls --color'
alias g="grep -Ir --exclude='*\.svn*'"
alias ctags="ctags --extra=+f -R"
alias sl='ls'
alias sc='screen'
alias vi='vim'
alias l='ls'
alias sl='ls'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
source ~/.bash_prompt
export HISTCONTROL=ignoreboth

# source .bash_custom for machine specific settings
source ~/.bash_custom
