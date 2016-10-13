# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tansly/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#############################################################

umask 027

# source the aliases
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

sbin2path # defined in .zsh_aliases

# set the prompt
autoload -Uz colors && colors
PROMPT="%{$fg_bold[white]%}%n@%m%b %~ %{$fg_bold[green]%}%#%b "
RPROMPT='?:%? j:%j'

# colored gcc output
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

eval $(dircolors)
# colorized completion
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# add user bin to path
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/local/bin" ] ; then
    PATH="$HOME/local/bin:$PATH"
fi

export EDITOR=vim

export CFLAGS=" -Wall -ggdb "
export CXXFLAGS="$CFLAGS"

# first word search in history
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

setopt interactivecomments
