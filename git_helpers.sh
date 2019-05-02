s() {
  git status
}

c() {
  git add .
  git commit -am "$@"
}

wip() {
  c "WIP"
}

l() {
  git log --oneline "$@"
}
