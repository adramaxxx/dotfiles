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
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
	Plug 'honza/vim-snippets'
	"Plug 'vim-airline/vim-airline'
	"Plug 'vim-airline/vim-airline-themes'
"	Plug 'puremourning/vimspector'
"	Plug 'OmniSharp/omnisharp-vim'
"	Plug 'preservim/nerdtree'
	Plug 'tjdevries/colorbuddy.vim'
	Plug 'tjdevries/gruvbuddy.nvim'
	Plug 'joshdick/onedark.vim'
	Plug 'tweekmonster/django-plus.vim'
	Plug 'sainnhe/sonokai'
	Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
	"Plug 'akinsho/nvim-bufferline.lua'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'tjdevries/express_line.nvim'
	Plug 'tpope/vim-surround'
	Plug 'romgrk/doom-one.vim'
	"Plug 'chriskempson/base16-vim'
	"Plug 'romgrk/barbar.nvim'
	Plug 'ayu-theme/ayu-vim'
    Plug 'mkitt/tabline.vim'
    "Plug 'sainnhe/gruvbox-material'
    Plug 'DilanGMB/nightbuddy'
    Plug 'sickill/vim-monokai'
    Plug 'lifepillar/vim-solarized8'
    Plug 'gruvbox-community/gruvbox'
    Plug 'caenrique/nvim-toggle-terminal'
    "Plug 'morhetz/gruvbox'
    Plug 'cespare/vim-toml'
    Plug 'chriskempson/base16-vim'
    Plug 'owickstrom/vim-colors-paramount'
    Plug 'tomasr/molokai'
    Plug 'Th3Whit3Wolf/one-nvim'
call plug#end()
