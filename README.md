# Dots

[Weichu's](github.com/weichuliu) yak-shaving dotfiles

## Installation

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
                vimrc; do
    ln -s ~/work/dots/${dotfile} ~/.${dotfile}
done
unset dotfile

# Set git user
$ git config --global user.name #<user.name>
$ git config --global user.email #<user.email>
```

## Other files

- brew_list: Softwares I installed with Homebrew
- sublime-settings: Sublime Settings
- ssh_config: If you want, you can link it to ~/.ssh/config
