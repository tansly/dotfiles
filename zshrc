# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=65535
SAVEHIST=65535
setopt extended_history
setopt share_history
setopt hist_verify

bindkey -e

zstyle :compinstall filename '/home/tansly/.zshrc'

autoload -Uz compinit
compinit
#############################################################

umask 027

setopt interactivecomments
setopt extendedglob

if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

# set the prompt
autoload -Uz colors && colors
PROMPT="%{$fg_bold[white]%}%n@%m%b %~ %{$fg_bold[green]%}%#%b "
RPROMPT='?:%? j:%j'

# colored gcc output
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

eval $(dircolors)
# colorized completion
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

if [ -d "$HOME/local/bin" ] ; then
    PATH="$HOME/local/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/local/share/man" ] ; then
    MANPATH="$HOME/local/share/man:$(manpath 2>/dev/null)"
fi

export EDITOR=vim

export MANPAGER="nvim -c 'set ft=man' -"

# first word search in history
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

source $HOME/src/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
