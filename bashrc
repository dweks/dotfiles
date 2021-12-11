# psu
export TERM=xterm-256color
stty -ixon

suc="(+) "
warn="(!) "
fail="(x) "
conf="(?) "


echo ${suc}".bashrc sourced"

# Source script-specific bash config 
if [ -f ~/.bscripts ]; then
	source ~/.bscripts
	echo ${suc}".bscripts sourced"
else
	echo ${fail}"~/.bscripts doesn't exist!"
fi

# Source aliases file
if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
	echo ${suc}".bash_aliases sourced"
else
	echo ${fail}"~/.bash_aliases doesn't exist!"
fi

if [ -f ~/dotfiles/bscripts ]; then
	source ~/dotfiles/inputrc
	echo ${suc}"inputrc sourced"
else
	echo ${fail}"~/inputrc doesn't exist!"
fi


echo -n On:\ ;hostname # Reminder of where I am

# Code
export PROJ=~/code/proj/
export PRAC=~/code/prac/
export SCRIPTS=~/code/plan/

# Vim
export VRC=~/.vim/vimrc

# Bash
export BRC=~/.bashrc
export ABRC=~/.bash_aliases
export BSCRIPT=~/.bscripts

# Color and format
export PS1="\e[0;33m▓\e[m\e[1;34m \w \e[m\e[1;33m>\e[m " # Prompt customization
export LS_COLORS=$LS_COLORS:'di=34:*.cpp=32:*.h=33:*.c=31:*.o=35:' # LS colors
#[DEFAULT do not delete] PS1='[\u@\h \W]\$ '

# Environmental variables
export PATH=${PATH}:/cat/bin # look in the cat bin
export PATH=${PATH}:/scripts # look in the cat bin
export MANPATH=${MANPATH}:/cat/man # look in cat for manpages too
export EDITOR=$(which vi) # sets vim as the standard editor, always

