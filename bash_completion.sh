if [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]]; then
  source "/usr/local/etc/profile.d/bash_completion.sh"
else
  echo "Make sure to run brew install bash-completion"
fi
