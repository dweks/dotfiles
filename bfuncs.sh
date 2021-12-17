function pulldot()
{
	echo -e "\e[0;33mPulling dotfiles...\e[m"
	git -C ~/dotfiles/ pull
}

function pushdot()
{
	if [ -z $1 ]; then
		echo -e "\e[1;31mProvide commit message\e[m"
		return
	fi	
	COMMIT=$@

	echo -e "\e[0;33mAdding to stage...\e[m"
	git -C $DOTFILES add .
	echo -e "\e[0;33mCommitting: \"$COMMIT\" \e[m"
	git -C $DOTFILES commit -m "$COMMIT"
	git -C $DOTFILES status
	echo -e "\e[0;33mPushing to GitHub...\e[m"
	git -C $DOTFILES push
}
