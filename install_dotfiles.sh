rc="bashrc bash_aliases vimrc"

for dotfile in $rc; do
	if [ -L ~/.${dotfile} ]; then
		rm ~/.${dotfile}
	fi
	ln -sv ~/dotfiles/${dotfile} ~/.${dotfile}
done
