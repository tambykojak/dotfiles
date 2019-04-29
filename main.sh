dotfiles_directory=~/.dotfiles

source $dotfiles_directory/prompt_command.sh
source $dotfiles_directory/bash_completion.sh
source $dotfiles_directory/fun_methods.sh
source $dotfiles_directory/git_helpers.sh
source $dotfiles_directory/rbenv.sh
source $dotfiles_directory/nvm.sh

resource() {
  source ~/.bash_profile
}

edit-dotfiles() {
  cd $dotfiles_directory
  code .
}

edit-bash-profile() {
  code ~/.bash_profile
}
