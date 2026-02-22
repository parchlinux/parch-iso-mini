HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
HISTCONTROL=ignoredups:erasedups

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt SHARE_HISTORY
setopt APPEND_HISTORY

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

PS1='%F{green}%n@%m%f:%F{blue}%~%f$ '
RPROMPT='%F{cyan}%?%f'

alias ll='ls -la'
alias la='ls -a'
alias l='ls -CF'
alias grep='grep --color=auto'
alias ip='ip --color=auto'

setopt autocd
setopt prompt_subst
