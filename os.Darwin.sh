BASEDIR=$(dirname $0)
. "$BASEDIR/os.common.sh"

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
    [[ $# -ne 0 ]] && open $@ || open .
}
alias o=openInOS

openInLaunchBar() {
    # Default to "open ."
    [[ $# -ne 0 ]] && open -a LaunchBar $@ || open -a LaunchBar .
}
alias lb=openInLaunchBar
