EE="\e[m" # works for echo (why?)
EEE="\[\e[m\]" # works for PS1 (why?)

txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
undblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
bakgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset


# Show all colors
function showcolor()
{
	colortest=' 〓 path/to/file ~ ! @ # $ % ^ & \ * ( { [ _ - + ='
	echo -e "${txtblk} txtblk${colortest}${EE}"
	echo -e "${txtred} txtred${colortest}${EE}"
	echo -e "${txtgrn} txtgrn${colortest}${EE}"
	echo -e "${txtylw} txtylw${colortest}${EE}"
	echo -e "${txtblu} txtblu${colortest}${EE}"
	echo -e "${txtpur} txtpur${colortest}${EE}"
	echo -e "${txtcyn} txtcyn${colortest}${EE}"
	echo -e "${txtwht} txtwht${colortest}${EE}"
	echo -e "${bldblk} bldblk${colortest}${EE}"
	echo -e "${bldred} bldred${colortest}${EE}"
	echo -e "${bldgrn} bldgrn${colortest}${EE}"
	echo -e "${bldylw} bldylw${colortest}${EE}"
	echo -e "${bldblu} bldblu${colortest}${EE}"
	echo -e "${bldpur} bldpur${colortest}${EE}"
	echo -e "${bldcyn} bldcyn${colortest}${EE}"
	echo -e "${bldwht} bldwht${colortest}${EE}"
	echo -e "${undblk} undblk${colortest}${EE}"
	echo -e "${undred} undred${colortest}${EE}"
	echo -e "${undgrn} undgrn${colortest}${EE}"
	echo -e "${undylw} undylw${colortest}${EE}"
	echo -e "${undblu} undblu${colortest}${EE}"
	echo -e "${undpur} undpur${colortest}${EE}"
	echo -e "${undcyn} undcyn${colortest}${EE}"
	echo -e "${undwht} undwht${colortest}${EE}"
	echo -e "${bakblk} bakblk${colortest}${EE}"
	echo -e "${bakred} bakred${colortest}${EE}"
	echo -e "${bakgrn} bakgrn${colortest}${EE}"
	echo -e "${bakylw} bakylw${colortest}${EE}"
	echo -e "${bakblu} bakblu${colortest}${EE}"
	echo -e "${bakpur} bakpur${colortest}${EE}"
	echo -e "${bakcyn} bakcyn${colortest}${EE}"
	echo -e "${bakwht} bakwht${colortest}${EE}"
	echo -e "${txtrst} txtrst${colortest}${EE}"
	echo
}
