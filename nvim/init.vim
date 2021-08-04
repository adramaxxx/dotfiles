set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
let mapleader=" "

" More general settings
source ~/.config/nvim/settings/settings.vim
source ~/.config/nvim/settings/keybinds.vim
" Plugin settings
source ~/.config/nvim/plugins/plug.vim
source ~/.config/nvim/plugins/vimtex.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/settings/colors.vim
source ~/.config/nvim/plugins/airline.vim

luafile ~/.config/nvim/lua/expressline.lua
source ~/.config/nvim/jupyter/jupyter.vim

" To prevent absolute path in statusline
