PROMPT_COMMAND=__prompt_command

__prompt_command() {
  EXIT_CODE="$?"
  shell_session_history_check
  update_terminal_cwd

  if [ -d .git ]; then
    current_branch="$(git rev-parse --abbrev-ref HEAD)"

    if [ $(git status | wc -l) -gt 4 ]; then
      current_branch+=" ±"
    fi

    current_branch=" \e[1m\e[34m[$current_branch]\e[0m\e[0m"
  fi



  PS1="$EXIT_CODE \W$current_branch \$ "
}

eval "$(rbenv init -)"

if [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]]; then
  source "/usr/local/etc/profile.d/bash_completion.sh"
else
  echo "Make sure to run brew install bash-completion"
fi

google() {
    search=""
    for term in $@; do
        search="$search%20$term"
    done
    open "http://www.google.com/search?q=$search"
}

weather() {
  curl wttr.in/$1
}