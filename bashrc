# If not running interactively, don't do anything
[[ $- != *i* ]] && return

function pps () {
	pgrep -a \[${1:0:1}\]${1:1}
}

function mypps () {
	pgrep -U $USER -u $USER -a \[${1:0:1}\]${1:1}
}

bind '"\eh": "\C-a\eb\ed\C-y\e#man \C-y\C-m\C-p\C-p\C-a\C-d\C-e"'

stty stop "" 
bind space:magic-space 

shopt -s checkwinsize
shopt -s cdspell

HISTCONTROL=ignoreboth
shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000
HISTTIMEFORMAT="%d/%m/%y %T "
HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"

test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

powerline-daemon -q
. /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

source /usr/share/nvm/init-nvm.sh

source /usr/share/doc/pkgfile/command-not-found.bash

source /usr/share/bash-completion/completions/dkms

. /usr/share/fzf/key-bindings.bash
. /usr/share/fzf/completion.bash

# kubectl completion
source <(kubectl completion bash)

# TMUX
if [[ $XDG_CURRENT_DESKTOP ]]
then
  /usr/local/bin/tmux-attach && exit
fi

cat /etc/issue

