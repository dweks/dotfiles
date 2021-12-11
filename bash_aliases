# Code
alias proj='cd $PROJ'
alias prac='cd $PRAC'
alias plan='proj && cd planner && vim -S ~/.vim/sessions/planner/def.vim -S ~/.vimrc'
alias set='proj && cd set-build' #takes me directly to set-builder

# Vim
alias vrc='vim $VRC'

# Bash
alias allbash='vim -p $BRC $ABRC $BSCRIPT'
alias brc='vim $BRC'
alias abrc='vim $ABRC'
alias sbrc='vim $ABRC'
alias scb='source $BRC'

# Server jumps
alias tlabs='ssh blak7@cs163lab.cs.pdx.edu'
alias psu='ssh blak7@ada.cs.pdx.edu'

# Actions
alias clean='rm *.swp *.swo -v' # Clean Swap files
alias leak='clear && valgrind --leak-check=full ./a.out' # Run compiled program with valgrind
alias cmp='g++ -Wall -g *.cpp'

# List mods
alias ls='ls -cX1F --color=always'
alias la='ls -cAX1F --color=always'
alias ll='ls -cAXoF --color=always'

# Navigation
alias up='cd ..'
alias up2='cd ../..'
alias up3='cd ../../..'
alias bb='cd -'
