#!/bin/bash
# Auto completion with bash-completion@2
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && \
    BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d" source "/usr/local/etc/profile.d/bash_completion.sh"
# Old bash-completion for backward compatibility
[[ -f /usr/local/etc/bash_completion ]] && source /usr/local/etc/bash_completion

# Find __dots_dir. Will be unset after sourcing
__dots_dir="$( dirname "$( readlink "$BASH_SOURCE" )" )"

# Add dots/bin to PATH if exists
[[ -d "${__dots_dir}/bin" ]] && export PATH="$PATH:${__dots_dir}/bin"

# aliases & functions & envvars & completes
[[ -f "${__dots_dir}/envvars" ]] && source "${__dots_dir}/envvars"
[[ -f "${__dots_dir}/aliases" ]] && source "${__dots_dir}/aliases"
[[ -f "${__dots_dir}/functions" ]] && source "${__dots_dir}/functions"
[[ -f "${__dots_dir}/completes" ]] && source "${__dots_dir}/completes"

# iTerm2 integration
[[ -f "${__dots_dir}/iterm2_shell_integration.bash" ]] && ITERM_ENABLE_SHELL_INTEGRATION_WITH_TMUX=yes source "${__dots_dir}/iterm2_shell_integration.bash"

unset __dots_dir

# nazo
[[ -f ~/.fortytwo ]] && source ~/.fortytwo

# rbenv + pyenv
command -v rbenv &>/dev/null && eval "$(rbenv init - --no-rehash 2>/dev/null)"
command -v pyenv &>/dev/null && eval "$(pyenv init - --no-rehash 2>/dev/null)"
