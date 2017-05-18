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
                gitconfig \
                gitignore_global \
                inputrc \
                gemrc \
                vimrc; do
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

## Other files

- brew_list: Softwares I installed with Homebrew
- sublime-settings: Sublime Settings
- ssh_config: If you want, you can link it to ~/.ssh/config
- ssh_config_vagrant: linked from ~/.ssh/config.d/vagrant, to work with [xenial box](https://www.github.com/weichuliu/xenial)
