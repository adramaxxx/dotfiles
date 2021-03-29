set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

" More general settings
source ~/.config/nvim/settings/settings.vim
source ~/.config/nvim/settings/colors.vim
source ~/.config/nvim/settings/keybinds.vim

" Plugin settings
source ~/.config/nvim/plugins/plug.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/vimtex.vim
source ~/.config/nvim/plugins/instantmarkdown.vim
