#!/bin/bash
# Auto completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# aliases & functions & envvars & completes
if [ -f ~/.envvars ]; then . ~/.envvars; fi
if [ -f ~/.aliases ]; then . ~/.aliases; fi
if [ -f ~/.functions ]; then . ~/.functions; fi
if [ -f ~/.completes ]; then . ~/.completes; fi
if [ -f ~/.fortytwo ]; then . ~/.fortytwo; fi # nazo

# iTerm2 integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# PS1
PS1='\[\033[1;32m\]\u \[\033[1;34m\]\w\[\033[0m\]$(__git_ps1) \$ '


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
