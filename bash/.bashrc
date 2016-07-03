vol () {
  if [ -z "$1" ]
  then
    echo "Example usage: vol 24 //Sets volume to 24"
  else
    amixer -D pulse sset Master $1%
  fi
}

alias cat='pygmentize -O style=monokai -f console256 -g'
