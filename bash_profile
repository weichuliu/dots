#!/bin/bash
# Auto completion
# Replace $(brew --prefix) to accelerate startup
if [[ -f /usr/local/etc/bash_completion ]]; then
    . /usr/local/etc/bash_completion
fi

# Find __dots_dir. Will be unset after sourcing
__dots_dir="$( dirname "$( readlink "$BASH_SOURCE" )" )"

# Add dots/bin to PATH if exists
if [[ -d "${__dots_dir}/bin" ]]; then
    export PATH="$PATH:${__dots_dir}/bin"
fi

# aliases & functions & envvars & completes
if [[ -f "${__dots_dir}/envvars" ]]; then . "${__dots_dir}/envvars"; fi
if [[ -f "${__dots_dir}/aliases" ]]; then . "${__dots_dir}/aliases"; fi
if [[ -f "${__dots_dir}/functions" ]]; then . "${__dots_dir}/functions"; fi
if [[ -f "${__dots_dir}/completes" ]]; then . "${__dots_dir}/completes"; fi

# iTerm2 integration
if [[ -f "${__dots_dir}/iterm2_shell_integration.bash" ]]; then . "${__dots_dir}/iterm2_shell_integration.bash"; fi

unset __dots_dir

# nazo
if [[ -f ~/.fortytwo ]]; then . ~/.fortytwo; fi

# rbenv + pyenv
eval "$(rbenv init - --no-rehash 2>/dev/null)"
eval "$(pyenv init - --no-rehash 2>/dev/null)"
