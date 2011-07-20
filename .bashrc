# ~/.bashrc

# used for bash non-login shells.
# non-login shells include:
# * X sessions (xdm, gdm, kdm)
# * X Terminals (xterm, konsole, gnome-terminal)
# * running remote commands via ssh

# NOTE: some programs (ie, winscp) fail if this generates any output.

# first, source the system bashrc
if [ -r /etc/bashrc ]; then
    . /etc/bash.bashrc
fi

# modules
module use --append /org/centers/pecos/modulefiles
loadmodules () { for modname in $*; do module load $modname; done }; 
loadmodules gcc/4.5-lucid openmpi mkl-pecos tbb petsc slepc trilinos vtk libmesh/trunk-debug
export LIBMESH_DIR=/workspace/truman/libmesh/libmesh

# default editor: this is used by svn, etc.
# the only safe default for EDITOR is one which instructs the user how to quit.
# most users will change this to vim or emacs.
export EDITOR=vim
set -o vi

# add your customizations below
alias ls='ls --color'
alias g="egrep --exclude=\*.svn\* -r -n "
alias cdc='cd /workspace/truman'
export CDIR='/workspace/truman'
# PS1='\[\e[0;31m\]\u@\h\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'
source ~/.bash_prompt
export HISTCONTROL=ignoreboth
