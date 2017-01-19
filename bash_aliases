alias ls='/usr/bin/ls --color=always'
alias ll='/usr/bin/ls -alF --color=always'
alias la='/usr/bin/ls -A --color=always'
alias l='/usr/bin/ls -CF --color=always'

alias grep='/usr/bin/grep --color=always'
alias fgrep='/usr/bin/fgrep --color=always'
alias egrep='/usr/bin/egrep --color=always'

alias cssh='tmux-cssh -sc'
alias csshp='tmux-cssh -cs'

alias dmesg='/usr/bin/dmesg --color=always'

alias less=$PAGER

alias open='/usr/bin/xdg-open'

alias pacman='/usr/bin/pacman --color always'
alias pacaur='/usr/bin/pacaur --color always'
alias pactree='/usr/bin/pactree -c'
alias cower='/usr/bin/cower --color always'

alias pacfind='/usr/bin/pacaur --color always -Ss'
alias pacinstall='/usr/bin/pacaur --color always -S'
alias pacload='/usr/bin/pacaur --color always -U'
alias pacpurge='/usr/bin/pacaur --color always -Rcnsu'
alias pacupgrade='sudo cryptboot upgrade'
alias pacown='/usr/bin/pacaur --color always -Qo'
alias pacfiles='/usr/bin/pacaur --color always -Ql'
alias pacdump='/usr/bin/pacaur --color always -Qe'

alias tree='/usr/bin/tree -C'

alias pstree='/usr/local/bin/pstree-color'

alias hexdump='/usr/local/bin/hexdump-color -C'

alias incognito="set +o history ; echo '[0;31m<[0;32mIncognito Mode[0;31m>'; $SHELL ; set -o history ; echo '[0;31m</[0;32mIncognito Mode[0;31m>' ; sleep 1 ; clear"

alias rm='/usr/bin/trash-put -i'
alias cp='/usr/bin/cp -i'
alias mv='/usr/bin/mv -i'

alias tls='/usr/bin/trash-list'
alias tpop='/usr/bin/trash-restore'

alias pwgen='openssl rand -base64'

alias reload='source ~/.bashrc'

alias ping='ping -a'

alias update-local-mime-database='update-mime-database ~/.local/share/mime'

alias userctl='/usr/bin/systemctl --user'
source /usr/share/bash-completion/completions/systemctl
complete -o default -F _systemctl userctl 

