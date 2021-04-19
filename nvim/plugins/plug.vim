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
	Plug 'tjdevries/colorbuddy.vim'
	Plug 'tjdevries/gruvbuddy.nvim'
	Plug 'Th3Whit3Wolf/onebuddy'
	Plug 'bohlender/vim-smt2'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
	Plug 'joshdick/onedark.vim'
	Plug 'honza/vim-snippets'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
call plug#end()
