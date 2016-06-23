BASEDIR=$(dirname $0)
. "$BASEDIR/os.common.sh"

export EDITOR='mate -w'
export REACT_EDITOR='mate'

alias wget="curl -O"
alias hey="while ((1)) { say hey; }"
alias bb='bbedit'
alias spot='mdfind -onlyin .'
alias lb="open -a LaunchBar"

alias pbjson="pbpaste | python -m json.tool"

# Use Homebrew's PostgreSQL
# Disable psql paging
alias psql='/usr/local/bin/psql'


openInOS() {
    # Default to "open ."
    if [[ $# -ne 0 ]]; then
        open $@
    else
        open .
    fi
}
alias o=openInOS

openInLaunchBar() {
    # Default to "open ."
    if [[ $# -ne 0 ]]; then
        open -a LaunchBar $@
    else
        open -a LaunchBar .
    fi
}
alias lb=openInLaunchBar
