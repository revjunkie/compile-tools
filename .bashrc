#
# ~/.bashrc
#

# auto export variables per directory
function run_ini()
{
	if [ -f "$PWD/ini" ]; then
		source "$PWD/ini"
	fi
}

function replace_cd()
{
	if builtin cd "$@"; then
		run_ini
	fi
}

alias cd="replace_cd"
