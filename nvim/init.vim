set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
let mapleader=" "

" More general settings
source ~/.config/nvim/settings/settings.vim
source ~/.config/nvim/settings/keybinds.vim
" Plugin settings
source ~/.config/nvim/plugins/plug.vim
source ~/.config/nvim/plugins/vimtex.vim
source ~/.config/nvim/plugins/airline.vim

source ~/.config/nvim/plugins/fzf.vim

" more stuff
"source ~/.config/nvim/status.vim
"luafile ~/.config/nvim/lua/bufferline.lua

source ~/.config/nvim/plugins/coc.vim

source ~/.config/nvim/settings/colors.vim
"luafile ~/.config/nvim/lua/evil-line.lua
luafile ~/.config/nvim/lua/expressline2.lua
"source ~/.config/nvim/status.vim

" Add comment tomorrow on why I put this in the first place
" I believe it has something to do with the lua expressline thingy and relative file paths from Explore
let g:netrw_keepdir= 0
