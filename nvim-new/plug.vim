call plug#begin('~/.vim/plugged')
	Plug 'gruvbox-community/gruvbox'
	Plug 'junegunn/fzf.vim'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'airblade/vim-rooter'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
	Plug 'justinmk/vim-sneak'
	Plug 'godlygeek/tabular'
	Plug 'tpope/vim-fugitive'
	Plug 'voldikss/vim-floaterm'
	Plug 'tomasr/molokai'
    Plug 'mkitt/tabline.vim'
	Plug 'tanvirtin/monokai.nvim'
	Plug 'Yagua/nebulous.nvim'
	Plug 'Th3Whit3Wolf/one-nvim'
	Plug 'tjdevries/colorbuddy.vim'
	Plug 'tjdevries/gruvbuddy.nvim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'OmniSharp/omnisharp-vim'
	Plug 'overcache/NeoSolarized'
	Plug 'tomasiser/vim-code-dark'
	Plug 'easymotion/vim-easymotion'
	Plug 'jiangmiao/auto-pairs'
	Plug 'liuchengxu/space-vim-dark'
	Plug 'dracula/vim'
	Plug 'puremourning/vimspector'
	Plug 'preservim/tagbar'
	Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
	" If you want to display icons, then use one of these plugins:
	Plug 'kyazdani42/nvim-web-devicons' " lua
	Plug 'ryanoasis/vim-devicons' " vimscript
	Plug 'folke/which-key.nvim'
	Plug 'RRethy/nvim-base16'
	Plug 'tpope/vim-commentary'
call plug#end()
