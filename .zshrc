# Add homebrew sbin to path.
export PATH="/opt/homebrew/bin:/opt/local/bin:$PATH"

# NVM init. https://github.com/nvm-sh/nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# History configuration for shared history across terminals
setopt SHARE_HISTORY          # Share history between all sessions
setopt INC_APPEND_HISTORY     # Write to history file immediately, not when shell exits
setopt HIST_IGNORE_DUPS       # Don't record duplicate entries
setopt HIST_FIND_NO_DUPS      # Don't display duplicates when searching
HISTSIZE=10000                # Number of commands to keep in memory
SAVEHIST=100000               # Number of commands to save to file
HISTFILE=~/.zsh_history       # History file location

# History search for up/down arrow.
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# Alias to work with our .dotfiles repo.
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Alias ls to show hidden files.
alias ls="ls -laG"

source ~/.functions

# Add homebrew shell completions.
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"