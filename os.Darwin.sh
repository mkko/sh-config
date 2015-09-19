BASEDIR=$(dirname $0)
. "$BASEDIR/os.common.sh"

alias wget="curl -O"
alias o="open ."
alias hey="while ((1)) { say hey; }"
alias bb='bbedit'
alias spot='mdfind -onlyin .'
alias lb="open -a LaunchBar"

alias pbjson="pbpaste | python -m json.tool"

# Use Homebrew's PostgreSQL
# Disable psql paging
alias psql='/usr/local/bin/psql'
