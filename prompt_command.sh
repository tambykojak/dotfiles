PROMPT_COMMAND=__prompt_command

__prompt_command() {
  EXIT_CODE="$?"
  shell_session_history_check
  update_terminal_cwd
  current_branch=""

  if [ -d .git ]; then
    current_branch="$(git rev-parse --abbrev-ref HEAD 2>/dev/null)"

    if [ $(git diff-index HEAD| wc -l) -gt 0 ]; then
      current_branch+=" ±"
    fi

    current_branch=" \[\e[1m\e[35m\][$current_branch]\[\e[0m\e[0m\]"
  fi

  PS1="$EXIT_CODE \[\e[1m\e[36m\]\W\[\e[0m\e[0m\]$current_branch \$ "
}
