call plug#begin('~/.vim/plugged')
	Plug 'gruvbox-community/gruvbox'
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'airblade/vim-rooter'
	Plug 'neovim/nvim-lspconfig'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
	Plug 'justinmk/vim-sneak'
	Plug 'godlygeek/tabular'
	Plug 'tpope/vim-fugitive'
	Plug 'hrsh7th/nvim-compe'
    Plug 'caenrique/nvim-toggle-terminal'
	Plug 'voldikss/vim-floaterm'
	Plug 'tomasr/molokai'
    Plug 'mkitt/tabline.vim'
call plug#end()
