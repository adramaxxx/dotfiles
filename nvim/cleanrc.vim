syntax enable
set number rnu
set clipboard=unnamedplus
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set wrap
set smartcase
set noswapfile
set nobackup
set nocompatible
filetype plugin on
set laststatus=2
set statusline+=%f
set hidden
set title
set showcmd

" alot of the plugins are just colorschemes since i have a hard time deciding
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'airblade/vim-rooter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'sheerun/vim-polyglot'
Plug 'lervag/vimtex'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'arzg/vim-colors-xcode'
Plug 'therubymug/vim-pyte'
Plug 'dracula/vim'
Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdtree'
call plug#end()

" use navigation keys to move around windows when splitting
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

colorscheme onedark
set t_Co=256
hi Normal guibg=NONE ctermbg=NONE

"instant markdown cfg
map <leader>md :InstantMarkdownPreview<CR>
let g:instant_markdown_autostart = 0
let g:instant_markdown_mathjax = 1
let g:instant_markdown_browser = ""

" set spell when filetype is .md or .tex
autocmd BufNewFile,BufRead *.md set spell
autocmd BufNewFile,BufRead *.tex set spell

" remapping to exit terminal mode
tnoremap <Esc> <C-\><C-n>

" vimtex config
nnoremap <leader>lp : VimtexCompile<CR>
let g:vimtex_quickfix_mode = 0
"let g:Tex_GotoError = 0
"let g:Tex_ShowErrorContext = 0
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

nmap <F6> :NERDTreeToggle<CR>
