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
unkblk='\e[4;30m' # Black - Underline
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
	colortest=' 〓 path/to/file ~ ! @ # $ % ^ & \* ( { [ _ - + ='
	echo -e $txtblk txtblk$colortest
	echo -e $txtred txtred$colortest
	echo -e $txtgrn txtgrn$colortest
	echo -e $txtylw txtylw$colortest
	echo -e $txtblu txtblu$colortest
	echo -e $txtpur txtpur$colortest
	echo -e $txtcyn txtcyn$colortest
	echo -e $txtwht txtwht$colortest
	echo -e $bldblk bldblk$colortest
	echo -e $bldred bldred$colortest
	echo -e $bldgrn bldgrn$colortest
	echo -e $bldylw bldylw$colortest
	echo -e $bldblu bldblu$colortest
	echo -e $bldpur bldpur$colortest
	echo -e $bldcyn bldcyn$colortest
	echo -e $bldwht bldwht$colortest
	echo -e $unkblk unkblk$colortest
	echo -e $undred undred$colortest
	echo -e $undgrn undgrn$colortest
	echo -e $undylw undylw$colortest
	echo -e $undblu undblu$colortest
	echo -e $undpur undpur$colortest
	echo -e $undcyn undcyn$colortest
	echo -e $undwht undwht$colortest
	echo -e $bakblk bakblk$colortest
	echo -e $bakred bakred$colortest
	echo -e $bakgrn bakgrn$colortest
	echo -e $bakylw bakylw$colortest
	echo -e $bakblu bakblu$colortest
	echo -e $bakpur bakpur$colortest
	echo -e $bakcyn bakcyn$colortest
	echo -e $bakwht bakwht$colortest
	echo -e $txtrst txtrst$colortest
	echo
}
