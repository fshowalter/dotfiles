# Dotfiles instructions

## Homebrew
https://brew.sh/

```shell
git init --bare $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
dotfiles remote add origin https://github.com/fshowalter/dotfiles.git
```

## Starship
https://starship.rs/

## NVM
https://github.com/nvm-sh/nvm

