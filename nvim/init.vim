set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

" More general settings
source settings/settings.vim
source settings/colors.vim
source settings/keybinds.vim

" Plugin settings
source plugins/plug.vim
source plugins/coc.vim
source plugins/fzf.vim
source plugins/airline.vim
source plugins/vimtex.vim
source plugins/instantmarkdown.vim
