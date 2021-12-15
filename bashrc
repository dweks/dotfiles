# psu
export TERM=xterm-256color
stty -ixon

suc="(+) "
warn="(!) "
fail="(x) "
conf="(?) "

# Bash
export DOTFILES=~/dotfiles
export BRC=~/.bashrc
export ABRC=~/.bash_aliases
export BSCRIPTS=${DOTFILES}/bscripts.sh
export SOURCER=${DOTFILES}/sourcer.sh
export BCOLORS=${DOTFILES}/bcolors.sh
export INPUTRC=${DOTFILES}/inputrc.sh

# Source master sourcer
source ${DOTFILES}/sourcer.sh
if [ ! -f ${DOTFILES}/sourcer.sh ]; then
	echo ${fail}"${DOTFILES}/sourcer.sh doesn't exist!"
fi

echo -n On:\ ;hostname # Reminder of where I am

# Code
export PROJ=~/code/proj
export PRAC=~/code/prac
export SCRIPTS=~/code/plan

# Vim
export VRC=~/.vim/vimrc

# Color and format
export PS1="${bldblk}\H: \w \e[m\n${bldgrn}>> \e[m" # Prompt customization
export LS_COLORS=$LS_COLORS:'di=1;34:*.cpp=32:*.h=33:*.c=31:*.o=35:' # LS colors
#[DEFAULT do not delete] PS1='[\u@\h \W]\$ '

# Environmental variables
export PATH=${PATH}:/cat/bin # look in the cat bin
export PATH=${PATH}:/scripts # look in the cat bin
export MANPATH=${MANPATH}:/cat/man # look in cat for manpages too
export EDITOR=$(which vi) # sets vim as the standard editor, always

