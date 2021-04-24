# Dotfiles instructions

```shell
git init --bare $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
dotfiles remote add origin https://github.com/fshowalter/dotfiles.git
```

# Powerlevel10k
https://github.com/romkatv/powerlevel10k

# NVM
https://github.com/nvm-sh/nvm