export TERM=xterm-256color
stty -ixon

set -o vi
export H_WHERE=$(hostname)
export D_WHERE=$(dnsdomainname)

# SFTP does not like this message, only show if bashrc runs from SSH or desktop
if [ "$SSH_TTY" ] || [[ ${H_WHERE} == ${MY_HOME} ]]; then
	echo -e "\e[0;33mbashrc sourced!\e[m"
fi

export MY_DNS='cs.pdx.edu'
export MY_HOME='sqLap'
export MY_PSU='ada.cs.pdx.edu'
export MY_TCSS='quizor1.cs.pdx.edu'

# All hosts
DOTFILES=~/dotfiles
export VRC=~/.vimrc
export BRC=~/.bashrc
export ABRC=~/.bash_aliases

SOURCER=${DOTFILES}/sourcer.sh
BSCRIPTS=${DOTFILES}/bscripts.sh
BCOLORS=${DOTFILES}/bcolors.sh
BFUNCS=${DOTFILES}/bfuncs.sh
#INPUTRC=${DOTFILES}/inputrc.sh

# source master sourcer
if [ -f ${SOURCER} ]; then
	source ${SOURCER}
else
	echo "${SOURCER} doesn't exist!"
fi

# personal code variables
if [[ $H_WHERE == $MY_PSU ]]; then
	PROJ=~/code/proj
	PRAC=~/code/prac
fi
if [[ $H_WHERE == $MY_HOME ]]; then
	export SCRIPTS=~/scripts
    export PATH=${PATH}:/scripts # enable global script execution
    source /usr/share/bash-completion/completions/git # enables autocomplete for git
fi

# Default Environmental variables
export PS1="\[${bldblk}\]\h: \w\n${EEE}\[${txtcyn}\]\j${EEE}\[${bldblk}\]|${EEE}\[${bldred}\]>> ${EEE}" # Prompt customization
export LS_COLORS=$LS_COLORS:'di=1;34:*.cpp=32:*.h=33:*.c=31:*.o=35:' # LS colors
export PATH=${PATH}:/cat/bin # look in the cat bin
export PATH=${PATH}:/.cargo/env
export MANPATH=${MANPATH}:/cat/man # look in cat for manpages too
export EDITOR=$(which vim) # sets vim as the standard editor

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
