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
$ for dotfile in bash_profile \
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

This repository works with `iTerm2` + `bash 4.x` environment
`bash 4.x` should be installed by `Homebrew` and be set as default login shell:

1. `brew install bash`
2. iTerm2: `Profiles -> General -> Command -> Commands` set to `/usr/local/bin/bash --login`

The `inputrc` works with `iTerm2`'s `xterm` Key Mappings:

- iTerm2: `Profiles -> Keys -> Load Preset...` select `xterm with Numeric Keypad`

## Notes

#### dots/bin
`/path/to/dots/bin` is appended to `PATH` to use some homemade handy commands:

- `google`: quick google/I_am_feeling_lucky from terminal. Run `alias | grep google` to see some `google` shortcuts
- `shelloverflow`: aliases as `soso`, is a `how2`/`socli` ish command (but much nicer) by `@weichuliu`. Prints highlighted **stackoverflow** solution on terminal. Perfect for stackoverflow oriented programming
    - This requires some additional python libraries you need to manually install with `pip3`

#### iTerm2 Shell Integration Script

`iterm2_shell_integration` is automatically loaded from `dots` directory, for convenience

#### Awesome Secret Shortcuts

There are two convenient keybindings:

- `C-x c` will copy the current command line buffer into pasteboard.
- `C-x p` will auto join current pasteboard and insert to command line buffer.
- `C-x e` will expand the current command into its result, similar to built-in `Ctrl-Alt-e`

#### `bash-completion@2`

The `bash-completion@2` claims to be a faster and better debian `bash-completion` and this repository supports it. To use `bash-completion@2`, just `brew uninstall bash-completion; brew install bash-completion@2`

#### `pyenv` and `rbenv`

`Dotfiles` expects you use `pyenv`/`rbenv` to manage `Python`/`Ruby` versions. They are installed by `Homebrew`, while actual `Python`/`Ruby` packages/libraries should be installed and managed manually using these two commands

#### IPython 5.0+ "Option(Alt) + Arrows"

If you are using `ipython` and find `Option(Alt) + Up/Down/Left/Right` throwing `[1;9A` ish code, do the following:

```
dots $ ln -s "$(pwd)/ipython_startup_keybindings.py" ~/.ipython/profile_default/startup/
```

to have ipython correctly bind the sequence to word jump / history search

#### GNU grep

I tended not to use GNU tools e.g. coreutils mixed with BSD tools brought by macOS, because it may introduce confusing behaviors.

However I encountered a shocking [behavior](https://bugs.freebsd.org/bugzilla/show_bug.cgi?id=201650) in macOS version `grep` which is fixed in latest GNU version. So I decided to switch to `ggrep`. GNU grep is installed by Homebrew and is aliased as `grep` here.

## Other files

- `brew_list`: Softwares I installed with Homebrew
- `sublime-settings`: Sublime Settings (paste them in "Preference: Settings")
- `sublime-keymap`: Sublime macOS keymap, fixes `Option` key functions (paste them in "Preference: Key Bindings")
- `ssh_config`: If you want, you can link it to ~/.ssh/config
- `ssh_config_vagrant`: linked from ~/.ssh/config.d/vagrant, to work with [bionic box](https://www.github.com/weichuliu/bionic)
