set runtimepath^=~/.vim runtimepath+=~/.vim/after
set termguicolors

let mapleader=" "

" entrypoint for installing plugins in neovim
source ~/.config/nvim/plug.vim

" fzf for fuzzy file searching and ripgrep for grepping files
source ~/.config/nvim/fzf.vim

" statusline configuration
"" galaxyline with evil line example configuration
set laststatus=3
luafile ~/.config/nvim/lua/spaceline.lua

"Colorscheme settings
source ~/.config/nvim/colors.vim

" coc (conquer-of-completion) settings
source ~/.config/nvim/coc.vim

" additional custom keybinds
source ~/.config/nvim/keybinds.vim


""" General settings
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
set hidden
set noshowmode
let g:airline#extensions#tabline#enabled = 0

set colorcolumn=110
"set guicursor=""

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


" split below right when opening a new split
set splitbelow splitright

let g:OmniSharp_highlighting = 0 

let g:vimspector_enable_mappings = "HUMAN"
