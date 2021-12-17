function pulldot()
{
	echo -e "\e[0;33mPulling dotfiles...\e[m"
	git -C ~/dotfiles/ pull
}

