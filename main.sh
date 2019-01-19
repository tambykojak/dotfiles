PROMPT_COMMAND=__prompt_command

__prompt_command() {
  PS1="$? $"
}

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