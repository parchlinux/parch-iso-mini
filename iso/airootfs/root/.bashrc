HISTFILE=~/.bash_history
HISTSIZE=10000
SAVEHIST=10000
HISTCONTROL=ignoredups:erasedups

shopt -s histappend

PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$ '

alias ll='ls -la'
alias la='ls -a'
alias l='ls -CF'
alias grep='grep --color=auto'
alias ip='ip --color=auto'

shopt -s cdspell
shopt -s checkwinsize
