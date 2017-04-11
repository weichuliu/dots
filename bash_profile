#!/bin/bash
# Auto completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# aliases & functions
if [ -f ~/.aliases ]; then . ~/.aliases; fi
if [ -f ~/.functions ]; then . ~/.functions; fi

# Bigger History
shopt -s histappend
export HISTCONTROL=ignoreboth
export HISTSIZE=50000
export HISTFILESIZE=50000

# iTerm2 integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# PS1
PS1='\[\033[1;32m\]\u \[\033[1;34m\]\w\[\033[0m\]$(__git_ps1) \$ '

# ls colored. ls aliases is in `aliases`
# grep colored.
export CLICOLOR=true
export GREP_OPTIONS="--color=auto"

# # thefuck
# eval $(thefuck --alias)

# # rbenv
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init - --no-rehash)"
# # Golang Settings
# export GOPATH=$HOME/go
# export PATH="$PATH:$GOPATH/bin"
# # Java
# export PATH=/usr/local/jre/bin:$PATH
