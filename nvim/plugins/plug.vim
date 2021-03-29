call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'airblade/vim-rooter'
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
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
