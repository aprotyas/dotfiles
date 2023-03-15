# dotfiles
Personal system config files (vim, zsh, etc.) :smiley:

## Instructions  
*  `git clone https://github.com/aprotyas/dotfiles.git $HOME/dotfiles`  
*  `./install`  

## Note to self
*  For Vundle, run `vim +PluginInstall +qall` to install the plugins listed in
vimrc.  
*  Remember to create an [ssh key](https://docs.gitlab.com/ee/ssh/ "SSH Key").  

## Git submodules  
Some vim modules and the dotbot utility is part of this git repo as Git
submodules. To initialize submodules and checkout the specified version, use the
command: `git submodule update --init --recursive`  
Upgrading submodules to the latest published version can be done by running the
command: `git submodule update --init --remote`  
When using submodules like this, it is handy to have submodule initialization
as part of the installation script of dotbot. This can be done by adding the
following shell command to Dotbot's YAML config file:  

```yaml
[
    {
        "shell": [
            ["git submodule update --init --recursive",
                "Installing submodules"]
        ]
    }
]
```
