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
source ${SOURCER}
if [ ! -f ${SOURCER} ]; then
	echo ${fail}"${SOURCER} doesn't exist!"
fi

# Code
export PROJ=~/code/proj
export PRAC=~/code/prac
export SCRIPTS=~/code/plan

# Vim
export VRC=~/.vim/vimrc
# Default Environmental variables
export PS1="${bldblk}\H: \w\n${EE}${bldgrn}>> ${EE}" # Prompt customization
export LS_COLORS=$LS_COLORS:'di=1;34:*.cpp=32:*.h=33:*.c=31:*.o=35:' # LS colors
export PATH=${PATH}:/cat/bin # look in the cat bin
export PATH=${PATH}:/scripts # enable global script execution
export MANPATH=${MANPATH}:/cat/man # look in cat for manpages too
export EDITOR=$(which vi) # sets vim as the standard editor

