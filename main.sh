dotfiles_directory=~/.dotfiles

source $dotfiles_directory/prompt_command.sh
source $dotfiles_directory/android.sh
source $dotfiles_directory/fun_methods.sh
source $dotfiles_directory/git_helpers.sh
# source $dotfiles_directory/rbenv.sh
source $dotfiles_directory/nvm.sh

alias pretty_json='python -m json.tool | pygmentize -l json'

resource() {
  source ~/.zsh
}

edit-dotfiles() {
  cd $dotfiles_directory
  code .
}

edit-zshrc() {
  code ~/.zshrc
}
