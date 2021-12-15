# Qnote
export QSRC=~/scripts/qnotes/qnot
export QPATH=~/qnotes/
export QFILE=.q
export QFULL=$QPATH$QFILE

alias eq='vim $QFULL'
alias cq='cat -n $QFULL | less'
alias gq='cd $QPATH && ls'
alias eqnot='vim $QSRC'

