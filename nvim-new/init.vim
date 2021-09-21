set runtimepath^=~/.vim runtimepath+=~/.vim/after

let mapleader=" "
" Important to get native lsp to work
set completeopt=menuone,noselect

source ~/.config/nvim/plug.vim
source ~/.config/nvim/fzf.vim
source ~/.config/nvim/colors.vim

" Lsp stuff
luafile ~/.config/nvim/languages.lua
luafile ~/.config/nvim/completions.lua

source ~/.config/nvim/keybinds.vim

" General settings
syntax enable
set number rnu
set tabstop=4 softtabstop=4
set shiftwidth=4
set noexpandtab
filetype plugin indent on
set noswapfile
set nobackup
set incsearch
set noshowcmd
set cursorline
set guicursor=""

" Setting for using indentline with tabs
set list lcs=tab:\|\ 

" Sign column for showing lsp diagnostics
set signcolumn=yes

" Search for everything, ignoring upper and lower case letters
set ignorecase smartcase


" no more autocomment on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" set spell when filetype is .md or .tex
autocmd BufNewFile,BufRead *.md set spell 
autocmd BufNewFile,BufRead *.tex set spell

autocmd TermOpen * set nospell

" change tabs when writing tex to 2 tabs
autocmd BufNewFile,BufRead *.tex set tabstop=2 softtabstop=2 shiftwidth=2

" do such that if i accidentally press :W to save, then I do not get an error
cabb W w
cabb Q q

" split below right when opening a new split
set splitbelow splitright
