### SSH ###

alias vk='ssh -l mkko vapaakoodarit.fi'
alias irc='ssh -t -l mkko vapaakoodarit.fi "cd /home/mkko && exec screen -d -r irc"'

### Git ###

alias groot='cd $(git rev-parse --show-toplevel)'
alias gaa='git add -A'

alias snap='g ci -m wip'

# USAGE: buildnum [commit]
# Counts the number of preceeding commits for the given argument.
# Without arguments uses HEAD.
function buildnum() {
    HASH=${1:-"head"}
    git rev-list $HASH | wc -l
}

# Misc
alias untar='tar -xzvf'

alias chkdir='(du -ks .??* ; du -ks *) | sort -n'
#alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'
alias vi='vim'

alias h='history | grep'

alias pjson='python -m json.tool'


# General file handling
function archive_7z() {
	[ "$#" -lt 2 ] && 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on ${1%/}-`date +%Y-%m-%d-%H%M`.7z $1
}

