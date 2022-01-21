# Qnote
export QSRC=~/scripts/qnotes/qnot
export QPATH=~/qnotes/
export QFILE=.q
export QFULL=$QPATH$QFILE

alias qedit='vim $QFULL'
alias qview='cat -n $QFULL | less'
#alias qdir='cd $QPATH && ls'
alias qlist='ls $QPATH'
alias eqnot='vim $QSRC'

