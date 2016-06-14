alias ll='ls -lh'
alias la='ls -A'
alias l='ls -CF'
alias lla='ls -lhA'
alias upgrade='sudo aptitude update && sudo aptitude upgrade'
alias bri='xrandr --output HDMI-0 --brightness'
alias j="jobs"


# "repeat" command.  Like:
#
#	repeat 10 echo foo
repeat ()
{ 
    local count="$1" i;
    shift;
    for i in $(_seq 1 "$count");
    do
        eval "$@";
    done
}

# Subfunction needed by `repeat'.
_seq ()
{ 
    local lower upper output;
    lower=$1 upper=$2;

    if [ $lower -ge $upper ]; then return; fi
    while [ $lower -lt $upper ];
    do
	echo -n "$lower "
        lower=$(($lower + 1))
    done
    echo "$lower"
}

psgrep()
{
	ps -aux | grep $1 | grep -v grep
}
