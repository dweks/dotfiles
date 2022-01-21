function count_dirs() {
	local count=0
	for i in */ .*/; do
		((++count))
	done
	((count-=2))
	echo $count
}

function count_files() {
	local count=0
	for i in ${1}* ${1}.*; do
		if ! [[ -d "$i" ]]; then
			((++count))
		fi
	done
	echo $count
}

function ls_dirs() {
	local d_row="${bldblk} | ${EE}"
	local f_row="${bldblk} + ${EE}"
	for f in */ .*/; do
		if ! [[ "$f" == "../" ]] && ! [[ "$f" == "./" ]]; then
			num_files=$(count_files $f)
			echo -e "${bldblu}${f%/}${EE} (${txtylw}$num_files${EE})"

			# lists directory names only
			for n in $f/*; do
				if [[ -d "$n" ]]; then
					echo -ne "$d_row"
					name_dir ${n}
					echo
				fi
			done

			# if files exist, list them

			if [ "$num_files" -ge 1 ]; then
				echo -ne "$f_row"
				ls_files $f $num_files
			fi
			echo
		fi
	done
}

function ls_files() {
	# list up to max_file files in each directory
	local count=0
	local rem=$2
	local MAX=5
	local f_sep="  "
	for n in ${1}* ${1}.*; do
		echo "_________ n: $n"
		if [ "$count" -ge "$MAX" ]; then
			((rem-=count))
			rem="${bldylw}+${rem}${EE}"
			echo -ne "[${rem}]" 
			break
		elif [[ -L "$n" ]] && ! [[ -d "$n" ]]; then
			name_sym ${n}
			echo -ne "$f_sep"
			((++count))
		elif [[ -x "$n" ]] && ! [[ -d "$n" ]]; then
			name_ex ${n}
			echo -ne "$f_sep"
			((++count))
		elif ! [[ -d "$n" ]]; then
			name_reg ${n}
			echo -ne "$f_sep"
			((++count))
		fi
	done
	echo
}

function bs(){
	dir_count=$(count_dirs)
	file_count=$(count_files)

	# List non-hidden directories
	ls_dirs $file_count
	ls_files * $file_count

}

function name_dir () {
	echo -ne "${txtcyn}${1##*/}$EE"
}
function name_sym () {
	echo -ne "${bldcyn}${1##*/}$EE>"
}
function name_ex () {
	echo -ne "${txtgrn}${1##*/}$EE*"
}
function name_reg () {
	echo -ne "${txtwht}${1##*/}$EE"
}
