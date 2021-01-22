syntax enable
set number rnu
set clipboard=unnamedplus
set tabstop=4 softtabstop=4
set shiftwidth=4
set noexpandtab
set wrap
set smartcase
set noswapfile
set nobackup
set nocompatible
filetype plugin on
set laststatus=0
set guicursor=
set hidden
set title
set noruler

" alot of the plugins are just colorschemes since i have a hard time deciding
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'airblade/vim-rooter'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'lervag/vimtex'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
call plug#end()

" use navigation keys to move around windows when splitting
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"set background=dark
"colorscheme onedark
" below command is to keep tmux sane
set t_Co=256
hi Normal guibg=NONE ctermbg=NONE
"set termguicolors
hi LineNr cterm=NONE ctermbg=NONE guibg=NONE guifg=NONE term=bold
" below command is to remove the ugly thing next to the linenumbers.
hi clear SignColumn
hi clear SpellBad
hi SpellBad cterm=underline
"hi! Pmenu cterm=NONE gui=NONE ctermbg=233 ctermfg=252 guifg=#1c1e26 guibg=#d5d8da
"hi! PmenuSbar cterm=NONE gui=NONE ctermbg=236 guibg=#3d425b
"hi! PmenuSel cterm=NONE gui=NONE ctermbg=240 ctermfg=255 guibg=#5b6389 guifg=#eff0f4
"hi! PmenuThumb cterm=NONE gui=NONE ctermbg=233 guibg=#1c1e26
"instant markdown cfg
map <leader>md :InstantMarkdownPreview<CR>
let g:instant_markdown_autostart = 0
let g:instant_markdown_mathjax = 1
"let g:instant_markdown_browser = "chromium"
" set spell when filetype is .md or .tex
autocmd BufNewFile,BufRead *.md set spell
autocmd BufNewFile,BufRead *.tex set spell

" set colorcolumn when working with cpp files
"autocmd BufNewFile,BufRead *.c set colorcolumn=110
"autocmd BufNewFile,BufRead *.h set colorcolumn=110
"autocmd BufNewFile,BufRead *.cpp set colorcolumn=110
"autocmd BufNewFile,BufRead *.hpp set colorcolumn=110

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

cabb W w
cabb Q q

nnoremap ½ :ls <CR>

"automatically delete trailing whitespace
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre *.[ch] %s/\%$/\r/e

" Function for toggling the bottom statusbar
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
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
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" no more autocomment on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
