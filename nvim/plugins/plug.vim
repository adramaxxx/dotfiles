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
	Plug 'morhetz/gruvbox'
	Plug 'itchyny/lightline.vim'
	Plug 'mengelbrecht/lightline-bufferline'
	Plug 'tjdevries/colorbuddy.vim'
	Plug 'tjdevries/gruvbuddy.nvim'
	Plug 'Th3Whit3Wolf/onebuddy'
	Plug 'bohlender/vim-smt2'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
call plug#end()
