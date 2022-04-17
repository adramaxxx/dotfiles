# dotfiles
nothing special :)

My dotfiles are currently a mess, but you should be able to find the information you need if you found this repo.
I plan to do some cleanup at some point in time (perhaps never).

## Dependencies for running stuff

- Neovim
	- Vimplug with working dir "~/.vim/plugged"
	- Version *0.7 nightly
	- COC.nvim 
		- Nodejs >= 12.1
- Tmux
	- (Tmux plugin manager)[https://github.com/tmux-plugins/tpm]
		- Is available as an AUR package, might have to build myself on ubuntu

- zsh
	- bat as alternative to cat
	- exa as alternative to ls

## Stow
My dotfiles can be installed using GNU stow by running stow.

Not all configuration files are set up to work with gnu stow.
