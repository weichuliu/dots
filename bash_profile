#!/bin/bash
# Auto completion
# Replace $(brew --prefix) to accelerate startup
[[ -f /usr/local/etc/bash_completion ]] && . /usr/local/etc/bash_completion

# Find __dots_dir. Will be unset after sourcing
__dots_dir="$( dirname "$( readlink "$BASH_SOURCE" )" )"

# Add dots/bin to PATH if exists
[[ -d "${__dots_dir}/bin" ]] && export PATH="$PATH:${__dots_dir}/bin"

# aliases & functions & envvars & completes
[[ -f "${__dots_dir}/envvars" ]] && . "${__dots_dir}/envvars"
[[ -f "${__dots_dir}/aliases" ]] && . "${__dots_dir}/aliases"
[[ -f "${__dots_dir}/functions" ]] && . "${__dots_dir}/functions"
[[ -f "${__dots_dir}/completes" ]] && . "${__dots_dir}/completes"

# iTerm2 integration
[[ -f "${__dots_dir}/iterm2_shell_integration.bash" ]] && . "${__dots_dir}/iterm2_shell_integration.bash"

unset __dots_dir

# nazo
[[ -f ~/.fortytwo ]] && . ~/.fortytwo

# rbenv + pyenv
eval "$(rbenv init - --no-rehash 2>/dev/null)"
eval "$(pyenv init - --no-rehash 2>/dev/null)"
