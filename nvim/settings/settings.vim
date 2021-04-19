syntax enable
set number rnu

set tabstop=4 softtabstop=4
set shiftwidth=4
set noexpandtab
set wrap
set smartcase
set ignorecase
set noswapfile
set nobackup
filetype plugin indent on
filetype on
set laststatus=2
set hidden
set title
set ruler
set showcmd
set nohlsearch
set scrolloff=8
set cursorline

" always show tabline
set showtabline=2

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

" change tabs when writing tex to 2 tabs
autocmd BufNewFile,BufRead *.tex set tabstop=2 softtabstop=2 shiftwidth=2

" do such that if i accidentally press :W to save, then I do not get an error
cabb W w
cabb Q q

" haskell specific indentation
autocmd BufNewFile,BufRead *.hs setlocal expandtab autoindent
