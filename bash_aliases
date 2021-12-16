# Code
alias proj='cd $PROJ'
alias prac='cd $PRAC'
alias plan='proj && cd planner && vim -S ~/.vim/sessions/planner/def.vim -S ~/.vimrc'
alias set='proj && cd set-build' #takes me directly to set-builder

# Vim
alias vrc='vim $VRC'

# Bash
alias allbash='vim -p $BRC $ABRC $BSCRIPTS $BCOLORS $SOURCER $INPUTRC'
alias brc='vim $BRC'
alias abrc='vim $ABRC'
alias sourcer='vim $ABRC'
alias bscripts='vim $BRC'
alias bcolors='vim $BRC'
alias inputrc='vim $INPUTRC'
alias showalias='cat $ABRC | less'

alias scb='source $BRC'

# Server jumps
alias tlabs='ssh blak7@cs163lab.cs.pdx.edu'
alias psu='ssh blak7@ada.cs.pdx.edu'

# Actions
alias sclean='rm *.swp *.swo -v' # Clean Swap files
alias leak='clear && valgrind --leak-check=full ./a.out' # Run compiled program with valgrind
alias cmp='g++ -Wall -g *.cpp'

# List mods
alias ls='ls -cX1F --color=always'
alias ls='ls -cXF --color=always'
alias la='ls -A --color=always'
alias ll='la -o --color=always'

# Navigation
alias .='cd ..'
alias ..='cd ../..'
alias ...='cd ../../..'
alias bb='cd -'

# Dotfiles
alias updaterc='git -C ~/dotfiles/ pull'
#ADDITION
