# Code

if [[ $H_WHERE == $MY_PSU ]]; then
	alias proj='cd $PROJ'
	alias prac='cd $PRAC'
	alias plan='proj && cd planner && vim -S ~/.vim/sessions/planner/def.vim -S ~/.vimrc'
fi

# Vim
alias vrc='vim $VRC'
alias vimall='vim *.cpp *.h -p'

# Bash
alias scb='source $BRC'
alias brc='vim $BRC'
alias abrc='vim $ABRC'
alias sourcer='vim $ABRC'
alias bscripts='vim $BRC'
alias bcolors='vim $BCOLORS'
alias inputrc='vim $INPUTRC'
alias bfuncs='vim $BFUNCS'

# Class shortcuts
if [[ $H_WHERE == $MY_PSU ]]; then
    alias frac='cd ~/cs/cs410-fractals'
fi
# Server jumps
alias quizor='ssh blak7@quizor1.cs.pdx.edu'
alias psu='ssh blak7@ada.cs.pdx.edu'

# Actions
alias rmswp='rm .*.swp .*.swo -v' # Clean Swap files
alias leak='clear && valgrind --leak-check=full ./a.out' # Run compiled program with valgrind
alias cmp='g++ -Wall -g *.cpp *.o'
alias acmp='cmp && ./a.out'

# List mods
# c: mod time, 1: vert, X: sort by ext, F: indicator symb, A: show all, g: no show owner
alias ls='ls -XF --color=auto'
alias lc='ls -1'
alias la='ls -gA'

# Navigation
alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'
alias bb='cd -'

if [[ $H_WHERE == $MY_TCSS ]]; then
    alias master='cd /mnt/quizor/materials && ls'
fi
