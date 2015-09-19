### SSH ###

alias vk='ssh -l mkko vapaakoodarit.fi'
alias irc='ssh -t -l mkko vapaakoodarit.fi "cd /home/mkko && exec screen -d -r irc"'

### Git ###

alias groot='cd $(git rev-parse --show-toplevel)'
alias gff='git flow feature'
alias gfr='git flow release'
alias gaa='git add -A'

alias buildnum="git rev-list head |wc -l"
alias snap='g ci -m wip'

# Misc
alias untar='tar -xzvf'

alias chkdir='(du -ks .??* ; du -ks *) | sort -n'
#alias which='alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'
alias vi='vim'

alias h='history | grep'

# General file handling
function archive_7z() {
	[ "$#" -lt 2 ] && 7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on ${1%/}-`date +%Y-%m-%d-%H%M`.7z $1
}
