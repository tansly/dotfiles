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
PROMPT="%40<...<%~%<< %{$fg_bold[red]%}%#%b "
RPROMPT='?:%? j:%j'

# colored gcc output
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

eval $(dircolors)
# colorized completion
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# first word search in history
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
