export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

export GEM_HOME="$(asdf where ruby)"
export PATH=$GEM_HOME/bin:$PATH

# Go environment variables
export PATH="$PATH:$(go env GOBIN)"

export JAVA_HOME="/Applications/Android\ Studio.app/Contents/jbr/Contents/Home"

# PSQL config
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# Libpq
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# PHP Composer
export PATH="$HOME/.config/composer/vendor/bin:$PATH"


autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:default' menu-select=2


HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_IGNORE_DUPS


export EDITOR="nvim"
export VISUAL="nvim"


alias ls='ls --color=auto'
alias cpwd="pwd | tr -d '\n' | pbcopy"
alias tmux='tmux attach || tmux'
alias dotfiles='cd ~/.dotfiles'


bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
bindkey -M emacs '^P' history-search-backward
bindkey -M emacs '^N' history-search-forward

PROMPT='%1d  '
