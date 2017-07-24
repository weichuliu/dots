# Dots

[Weichu's](https://www.github.com/weichuliu) yak-shaving dotfiles

## Installation

#### Homebrew installation:

1. [Download](https://developer.apple.com/download/more/) and install **Command Line Tools**
2. [Install](https://brew.sh/) Homebrew

#### Link dotfiles

```bash
# Clone git to ~/work/dots
$ cd ~
$ mkdir work
$ ( cd work && git clone https://github.com/weichuliu/dots.git )

# Link files to homedir
$ for dotfile in aliases \
                bash_profile \
                completes \
                envvars \
                functions \
                iterm2_shell_integration.bash \
                gitconfig \
                gitignore_global \
                inputrc \
                gemrc \
                vimrc \
                curlrc ; do
    ln -s ~/work/dots/${dotfile} ~/.${dotfile}
done
unset dotfile

# Set git user
$ git config --global user.name #<user.name>
$ git config --global user.email #<user.email>
```

#### Configure iTerm2

This repository works with `iTerm2` + `bash 4.x` environment.
`bash 4.x` should be installed by `Homebrew` and be set as default login shell:

1. `brew install bash`
2. iTerm2: `Profiles -> General -> Command -> Commands` set to `/usr/local/bin/bash --login`

The `inputrc` works with `iTerm2`'s `xterm` Key Mappings:

- iTerm2: `Profiles -> Keys -> Load Preset...` select `xterm with Numeric Keypad`

#### iTerm2 Shell Integration Script

The `iterm2_shell_integration` downloaded from [here](https://iterm2.com/shell_integration/bash) is slightly different from the one that installed by iTerm2.

It is a cleaner bash-preexec version, to solve [#5787](https://gitlab.com/gnachman/iterm2/issues/5787).

#### IPython 5.0+ "Option(Alt) + Arrows"

If you are using `ipython` and find `Option(Alt) + Up/Down/Left/Right` throwing `[1;9A` ish code, do the following:

```
dots $ ln -s "$(pwd)/ipython_startup_keybindings.py" ~/.ipython/profile_default/startup/
```

to have ipython correctly bind the sequence to word jump / history search.

## Other files

- brew_list: Softwares I installed with Homebrew
- sublime-settings: Sublime Settings
- ssh_config: If you want, you can link it to ~/.ssh/config
- ssh_config_vagrant: linked from ~/.ssh/config.d/vagrant, to work with [xenial box](https://www.github.com/weichuliu/xenial)
