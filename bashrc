export TERM=xterm-256color
stty -ixon

export H_WHERE=$(hostname)
export D_WHERE=$(dnsdomainname)

if [ "$SSH_TTY" ] || [[ ${H_WHERE} == ${MY_HOME} ]]; then
	echo -e "\e[0;33mbashrc sourced!\e[m"
fi

MY_DNS='cs.pdx.edu'
MY_HOME='sqDesk'
MY_PSU='ada.cs.pdx.edu'
MY_TCSS='quizor1.cs.pdx.edu'

# All servers
DOTFILES=~/dotfiles
export VRC=~/.vim/vimrc
export BRC=~/.bashrc
export ABRC=~/.bash_aliases

SOURCER=${DOTFILES}/sourcer.sh
BSCRIPTS=${DOTFILES}/bscripts.sh
BCOLORS=${DOTFILES}/bcolors.sh
BFUNCS=${DOTFILES}/bfuncs.sh
INPUTRC=${DOTFILES}/inputrc.sh

# Source master sourcer
if [ -f ${SOURCER} ]; then
	source ${SOURCER}
else
	echo "${SOURCER} doesn't exist!"
fi

# Code
if [[ $H_WHERE == $MY_PSU ]]; then
	PROJ=~/code/proj
	PRAC=~/code/prac
fi
if [[ $H_WHERE == $MY_HOME ]]; then
	SCRIPTS=~/scripts
fi

# Default Environmental variables
export PS1="\[${bldblk}\]\h: \w\n${EEE}\[${txtylw}\]\j${EEE} \[${bldgrn}\]>> ${EEE}" # Prompt customization
export LS_COLORS=$LS_COLORS:'di=1;34:*.cpp=32:*.h=33:*.c=31:*.o=35:' # LS colors
export PATH=${PATH}:/cat/bin # look in the cat bin
export PATH=${PATH}:/scripts # enable global script execution
export MANPATH=${MANPATH}:/cat/man # look in cat for manpages too
export EDITOR=$(which vi) # sets vim as the standard editor

