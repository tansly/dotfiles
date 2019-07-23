if [ -d "$HOME/local/bin" ] ; then
    PATH="$HOME/local/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/local/share/man" ] ; then
    MANPATH="$HOME/local/share/man:$(manpath 2>/dev/null)"
fi

export MANPAGER="nvim -c 'set ft=man' -"

export EDITOR=nvim
