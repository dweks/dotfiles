export TERM=xterm-256color
stty -ixon

# Bash
export DOTFILES=~/dotfiles
export BRC=~/.bashrc
export ABRC=~/.bash_aliases
export SOURCER=${DOTFILES}/sourcer.sh

export BSCRIPTS=${DOTFILES}/bscripts.sh
export BCOLORS=${DOTFILES}/bcolors.sh
export BFUNCS=${DOTFILES}/bfuncs.sh
export INPUTRC=${DOTFILES}/inputrc.sh

# Source master sourcer
if [ -f ${SOURCER} ]; then
	source ${SOURCER}
else
	echo "${SOURCER} doesn't exist!"
fi

# Code
export PROJ=~/code/proj
export PRAC=~/code/prac
export SCRIPTS=~/code/plan

# Vim
export VRC=~/.vim/vimrc

# Default Environmental variables
export PS1="${bldblk}\H: \w\n${EEE}${bldgrn}>> ${EEE}" # Prompt customization
export LS_COLORS=$LS_COLORS:'di=1;34:*.cpp=32:*.h=33:*.c=31:*.o=35:' # LS colors
export PATH=${PATH}:/cat/bin # look in the cat bin
export PATH=${PATH}:/scripts # enable global script execution
export MANPATH=${MANPATH}:/cat/man # look in cat for manpages too
export EDITOR=$(which vi) # sets vim as the standard editor

