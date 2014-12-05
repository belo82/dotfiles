Dotfiles
========
This repository includes all of my custom dotfiles.  They should be cloned to
your home directory so that the path is `~/.dotfiles/`.  The included setup
script creates symlinks from your home directory to the files which are located
in `~/.dotfiles/`.

The setup script is smart enough to back up your existing dotfiles into a
`~/.dotfiles_old/` directory if you already have any dotfiles of the same name as
the dotfile symlinks being created in your home directory.

So, to recap, the install script will:

1. Back up any existing dotfiles in your home directory to `~/.dotfiles_old/`
2. Create symlinks to the dotfiles in `~/.dotfiles/` in your home directory

OSX
---
OSX does not load .bashrc file by default. You need to add `source ~/.bashrc` into .profile or .bash_profile. More info
here http://apple.stackexchange.com/questions/12993/why-doesnt-bashrc-run-automatically.

Ubuntu
------
Details of loading preference of configuration files for bash in Ubuntu are here 
https://help.ubuntu.com/community/EnvironmentVariables

Installation
------------

``` bash
git clone git@github.com:belo82/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./makesymlinks.sh
```
