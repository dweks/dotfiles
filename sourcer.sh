# source rust cargo (with alias)
if [ $H_WHERE == $MY_PSU ]; then
    scargo
fi
# source bash aliases file
if [ -f ${ABRC} ]; then
	source ${ABRC}
else
	echo "${ABRC} doesn't exist!"
fi

# source master bash script 
if [ -f ${BSCRIPTS} ]; then
	source ${BSCRIPTS}
else
	echo "${BSCRIPTS} doesn't exist!"
fi

# source bash color variables
if [ -f ${BCOLORS} ]; then
	source ${BCOLORS}
else
	echo "${BCOLORS} doesn't exist!"
fi

# source bash functions
if [ -f ${BFUNCS} ]; then
	source ${BFUNCS}
else
	echo "${BFUNCS} doesn't exist!"
fi

