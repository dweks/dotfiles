
rc="bashrc bash_aliases bscripts vimrc"

for dotfile in $rc; do
	if [ -L ~/.${dotfile} ]; then
		rm ~/.${dotfile}
	fi
	ln -sv $(pwd)/${dotfile} ~/.${dotfile}
done
