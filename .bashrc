# this file is processed on each interactive invocation of bash

# avoid problems with scp -- don't process the rest of the file if non-interactive
[[ $- != *i* ]] && return

PS1="`shorthostname` \! $ "
HISTSIZE=50

alias mail=mailx
alias l="ls -l"
alias la="ls -al"
alias lt="ls -alt"
alias p="pwd"
alias cl="clear"
alias svim="sudo vim"
alias v="vim"

set softtabstop=2

function c() {
    cd "$@" && ls -l;
}

function park() {
	cat ~/u/data/u3/park/pub/cs240/grades/saxena20/"$@";
}
