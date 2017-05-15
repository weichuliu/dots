#!/bin/bash
# Auto completion
# Replace $(brew --prefix)to accelerate startup
if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi

# aliases & functions & envvars & completes
if [ -f ~/.envvars ]; then . ~/.envvars; fi
if [ -f ~/.aliases ]; then . ~/.aliases; fi
if [ -f ~/.functions ]; then . ~/.functions; fi
if [ -f ~/.completes ]; then . ~/.completes; fi
if [ -f ~/.fortytwo ]; then . ~/.fortytwo; fi # nazo

# iTerm2 integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# rbenv
eval "$(rbenv init - --no-rehash)"

# thefuck - too slow
# eval $(thefuck --alias)
