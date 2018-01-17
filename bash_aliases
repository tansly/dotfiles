alias ll='ls -lh'
alias llz='ls -lZh'
alias la='ls -ACF'
alias l='ls -CF'
alias lla='ls -lhA'
alias bri='xrandr --output HDMI-0 --brightness'
alias j="jobs"
alias transmissiond='transmission-daemon --config-dir ~/.config/transmission/'
alias volmax='amixer set Master 100%'
alias volmute='amixer set Master mute'
alias volunmute='amixer set Master unmute'
alias less='vimpager'
alias zless='vimpager'

xlocked()
{
    startx &> ~/.startx.log &
    vlock
}

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

infos () { info --vi-keys --subnodes -o - "$@" | less; }
