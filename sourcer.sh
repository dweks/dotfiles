# source bash aliases file
if [ -f ~/.bash_aliases ]; then
	source ~/.bash_aliases
else
	echo ${fail}"~/.bash_aliases doesn't exist!"
fi

# source master bash script 
if [ -f ${DOTFILES}/bscripts.sh ]; then
	source ${DOTFILES}/bscripts.sh
else
	echo ${fail}"${DOTFILES}/bscripts.sh doesn't exist!"
fi

# source inputrc
if [ -f ${DOTFILES}/inputrc.sh ]; then
	source ${DOTFILES}/inputrc.sh
else
	echo ${fail}"${DOTFILES}/inputrc.sh doesn't exist!"
fi

# source bash color variables
if [ -f ${DOTFILES}/bcolors.sh ]; then
	source ${DOTFILES}/bcolors.sh
else
	echo ${fail}"${DOTFILES}/bcolors.sh doesn't exist!"
fi

