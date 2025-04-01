# dotfiles

Personal dotfiles

## Using GNU stow

Stow is a symlink manager

Install stow with: `sudo apt install stow`

By default, stow will map a given directory to the home directory.
For example, `stow nvim` will copy the folder structure of ./nvim and map it from ~. So nvim/.config/nvim will map to ~/.config/nvim

Clear all symlinks with `stow -D .`
