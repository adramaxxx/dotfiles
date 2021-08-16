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
set scrolloff=8
set completeopt=menuone,noinsert,noselect
set incsearch
set nohlsearch
set noshowmode
set noshowcmd
set cursorline

set guicursor=

" Search for everything, ignoring upper and lower case letters
set ignorecase smartcase
"set signcolumn=yes


"autorun xrdb whenever .xresources is being saved
autocmd BufRead,BufNewFile .Xresources,xdefaults set filetype=xdefaults
autocmd BufWritePost .Xresources,Xdefaults,.Xresources,xdefaults !xrdb %

" Only show tabline when more than one tab is open
set showtabline=1

" save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !sudo tee % ' <bar> edit!

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

" wipe netrw buffers when they are no longer open
"augroup AutoDeleteNetrwHiddenBuffers
"  au!
"  au FileType netrw setlocal bufhidden=wipe
"augroup end
