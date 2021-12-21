# Code

if [[ $H_WHERE == $MY_PSU ]]; then
	alias proj='cd $PROJ'
	alias prac='cd $PRAC'
	alias plan='proj && cd planner && vim -S ~/.vim/sessions/planner/def.vim -S ~/.vimrc'
	alias set='proj && cd set-build' #takes me directly to set-builder
fi

# Vim
alias vrc='vim $VRC'

# Bash
#alias alldot='vim -p $BRC $ABRC $SOURCER $BFUNCS $BCOLORS $BSCRIPTS $INPUTRC'
alias brc='vim $BRC'
alias abrc='vim $ABRC'
alias sourcer='vim $ABRC'

alias bscripts='vim $BRC'
alias bcolors='vim $BCOLORS'
alias inputrc='vim $INPUTRC'
alias bfuncs='vim $BFUNCS'

alias scb='source $BRC'

# Server jumps
alias quizor='ssh blak7@quizor1.cs.pdx.edu'
alias psu='ssh blak7@ada.cs.pdx.edu'

# Actions
alias rmswp='rm *.swp *.swo -v' # Clean Swap files
alias leak='clear && valgrind --leak-check=full ./a.out' # Run compiled program with valgrind
alias cmp='clear && g++ -Wall -g *.cpp *.o'
alias acmp='cmp && ./a.out'

# List mods
# c: mod time, 1: vert, X: sort by ext, F: indicator symb, A: show all, g: no show owner
alias ls='ls -1XF --color=auto'
alias la='ls -A'
alias ll='la -gc'

# Navigation
alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'
alias bb='cd -'

if [[ $H_WHERE == $MY_TCSS ]]; then
    alias master='cd /mnt/quizor/materials && ls'
fi
