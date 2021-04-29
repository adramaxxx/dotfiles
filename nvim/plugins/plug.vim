call plug#begin('~/.vim/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'airblade/vim-rooter'
	Plug 'lervag/vimtex'
	Plug 'tpope/vim-fugitive'
	Plug 'godlygeek/tabular'
	Plug 'justinmk/vim-sneak'
	Plug 'voldikss/vim-floaterm'
	Plug 'bohlender/vim-smt2'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
	Plug 'honza/vim-snippets'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'morhetz/gruvbox'
	Plug 'puremourning/vimspector'
	Plug 'OmniSharp/omnisharp-vim'
	Plug 'PontusPersson/pddl.vim'
	Plug 'preservim/nerdtree'
	Plug 'joshdick/onedark.vim'
call plug#end()
