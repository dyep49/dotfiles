vol () {
  if [ -z "$1" ]
  then
    echo "Example usage: vol 24 //Sets volume to 24"
  else
    amixer -D pulse sset Master $1%
  fi
}

alias brightness='xbacklight -set'
alias pcat='pygmentize -f terminal256 -O style=monokai -g'
alias xclip='xclip -selection c'
alias flux='redshift -l 37.7749:-122.4194'
alias i3lock='/usr/bin/i3lock -c 000000'
