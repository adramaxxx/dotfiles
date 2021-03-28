syntax enable
set number rnu
set clipboard+=unnamedplus
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
"set guicursor=
set hidden
set title
set noruler
set nohlsearch
set mouse=a

" alot of the plugins are just colorschemes since i have a hard time deciding
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'airblade/vim-rooter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'lervag/vimtex'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'godlygeek/tabular'
Plug 'neovimhaskell/haskell-vim'
Plug 'justinmk/vim-sneak'
Plug 'romgrk/doom-one.vim'
Plug 'joshdick/onedark.vim'
Plug 'voldikss/vim-floaterm'
Plug 'morhetz/gruvbox'
call plug#end()

" use navigation keys to move around windows when splitting
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

colorscheme gruvbox
hi clear SpellBad
hi clear SignColumn
hi SpellBad cterm=underline,bold
highlight Normal ctermbg=NONE ctermfg=NONE
hi LineNr cterm=NONE ctermbg=NONE guibg=NONE guifg=NONE term=bold

"instant markdown cfg
map <leader>md :InstantMarkdownPreview<CR>
let g:instant_markdown_autostart = 0
let g:instant_markdown_mathjax = 1
let g:instant_markdown_browser = "brave"

" set spell when filetype is .md or .tex
autocmd BufNewFile,BufRead *.md set spell
autocmd BufNewFile,BufRead *.tex set spell


" remapping to exit terminal mode
tnoremap <Esc> <C-\><C-n>

" vimtex config
nnoremap <leader>lp : VimtexCompile<CR>
let g:vimtex_quickfix_mode = 0
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'latexmk -pdf -pvc $*'
let g:vimtex_view_general_viewer = 'zathura'
let g:tex_flavor = 'latex'

" remapping leader for faster fzf
let mapleader=" "

" switching between .h and .c very specific for coc clangd
map gth :CocCommand clangd.switchSourceHeader <CR>

" for switching between buffers with ctrl+p (previous) and ctrl+n (next)
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

" nerd tree toggle
nmap <F6> :NERDTreeToggle<CR>

" do such that if i accidentally press :W to save, then I do not get an error
cabb W w
cabb Q q

" Toggle floating terminal
nnoremap <leader>fo : FloatermToggle <CR>

" Function for toggling the bottom statusbar
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noruler
        set noshowcmd
        set laststatus=0
        set showtabline=0
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
        set showtabline=2
    endif
endfunction
nnoremap <leader>h :call ToggleHiddenAll()<CR>

" autorun xrdb whenever .xresources is being saved
autocmd BufRead,BufNewFile .Xresources,xdefaults set filetype=xdefaults
autocmd BufWritePost .Xresources,Xdefaults,.Xresources,xdefaults !xrdb %

" save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !doas tee % >/dev/null' <bar> edit!

" no more autocomment on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" airline config
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#enabled=1
let g:bufferline_echo = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#whitespace#enabled = 0
let g:airline_theme = 'simple'
