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

# Show all colors
function showcolor()
{
	echo -en "${txtblk}txtblk${EE} "
	echo -en "${txtred}txtred${EE} "
	echo -en "${txtgrn}txtgrn${EE} "
	echo -en "${txtylw}txtylw${EE} "
	echo -en "${txtblu}txtblu${EE} "
	echo -en "${txtpur}txtpur${EE} "
	echo -en "${txtcyn}txtcyn${EE} "
	echo -e  "${txtwht}txtwht${EE} "
	echo -en "${bldblk}bldblk${EE} "
	echo -en "${bldred}bldred${EE} "
	echo -en "${bldgrn}bldgrn${EE} "
	echo -en "${bldylw}bldylw${EE} "
	echo -en "${bldblu}bldblu${EE} "
	echo -en "${bldpur}bldpur${EE} "
	echo -en "${bldcyn}bldcyn${EE} "
	echo -e  "${bldwht}bldwht${EE} "
	echo -en "${undblk}undblk${EE} "
	echo -en "${undred}undred${EE} "
	echo -en "${undgrn}undgrn${EE} "
	echo -en "${undylw}undylw${EE} "
	echo -en "${undblu}undblu${EE} "
	echo -en "${undpur}undpur${EE} "
	echo -en "${undcyn}undcyn${EE} "
	echo -e  "${undwht}undwht${EE} "
	echo -en "${bakblk}bakblk${EE} "
	echo -en "${bakred}bakred${EE} "
	echo -en "${bakgrn}bakgrn${EE} "
	echo -en "${bakylw}bakylw${EE} "
	echo -en "${bakblu}bakblu${EE} "
	echo -en "${bakpur}bakpur${EE} "
	echo -en "${bakcyn}bakcyn${EE} "
	echo -e  "${bakwht}bakwht${EE} "
}
