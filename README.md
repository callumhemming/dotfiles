# dotfiles

Personal dotfiles

## Using GNU stow

Stow is a symlink manager

Install stow with: `sudo apt install stow`

By default, stow will map a given directory to the home directory.
For example, `stow nvim` will copy the folder structure of ./nvim and map it from ~. So nvim/.config/nvim will map to ~/.config/nvim

Clear all symlinks with `stow -D .`

## Install NVIM

I use Ubuntu which restricts packages to stable version, the offical version is really out of date, so we need to add the unstable release NVIM repo:

Add unstable releases repo:
`sudo add-apt-repository ppa:neovim-ppa/unstable`

Install NVIM:

Update apt
`sudo apt update`
Install NVIM
`sudo apt install neovim`

Install Zsh and Oh-My-Zsh

I use Zsh and oh my zsh for my terminal:

Install Zsh:
`sudo apt install zsh`
Install Oh-My-Zsh
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
