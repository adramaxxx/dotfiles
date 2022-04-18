" Autoinstall vim-plg uf it does not already exist
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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
	"Plug 'overcache/NeoSolarized'
	Plug 'tomasiser/vim-code-dark'
	Plug 'easymotion/vim-easymotion'
	Plug 'jiangmiao/auto-pairs'
	Plug 'liuchengxu/space-vim-dark'
	Plug 'dracula/vim'
	Plug 'puremourning/vimspector'
	Plug 'preservim/tagbar'
	Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
	Plug 'kyazdani42/nvim-web-devicons' " lua
	Plug 'ryanoasis/vim-devicons' " vimscript
	Plug 'folke/which-key.nvim'
	Plug 'RRethy/nvim-base16'
	Plug 'tpope/vim-commentary'
	Plug 'preservim/nerdcommenter'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'ishan9299/modus-theme-vim'  " if using nightly neovim
	Plug 'ishan9299/nvim-solarized-lua'
call plug#end()
