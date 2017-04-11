#!/bin/bash
# Auto completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

# iTerm2 integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# PS1
export PS1='\[\033[1;32m\]\u \[\033[1;34m\]\w\[\033[0m\]$(__git_ps1) \$ '

# ls colored. ls aliases is in `aliases`
export CLICOLOR=true

# aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
