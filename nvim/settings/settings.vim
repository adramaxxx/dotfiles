syntax enable
set number rnu
set clipboard+=unnamedplus

set tabstop=4 softtabstop=4
set shiftwidth=4
set noexpandtab
"set cursorline
set wrap
set smartcase
set ignorecase
set noswapfile
set nobackup
filetype plugin indent on
filetype on
set laststatus=2
"set guicursor=
set hidden
set title
set ruler
set showcmd
set nohlsearch
set scrolloff=8
set noshowmode
"set mouse=a

"autorun xrdb whenever .xresources is being saved
autocmd BufRead,BufNewFile .Xresources,xdefaults set filetype=xdefaults
autocmd BufWritePost .Xresources,Xdefaults,.Xresources,xdefaults !xrdb %

" save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !doas tee % >/dev/null' <bar> edit!

" no more autocomment on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" set spell when filetype is .md or .tex
autocmd BufNewFile,BufRead *.md set spell
autocmd BufNewFile,BufRead *.tex set spell

" do such that if i accidentally press :W to save, then I do not get an error
cabb W w
cabb Q q
