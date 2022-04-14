"set runtimepath^=~/.vim runtimepath+=~/.vim/after
set runtimepath^=~/.vim runtimepath+=~/.vim/after
set termguicolors

let mapleader=" "

" entrypoint for installing plugins in neovim
source ~/.config/nvim/plug.vim

" fzf for fuzzy file searching and ripgrep for grepping files
source ~/.config/nvim/fzf.vim

" statusline configuration
set laststatus=3
highlight WinSeparator guibg=NONE

" Dead sourcing of express line for now
"luafile ~/.config/nvim/lua/statusline.lua

""" galaxyline with evil line example configuration
luafile ~/.config/nvim/lua/spaceline.lua

"" whichkey setup

"Colorscheme settings
source ~/.config/nvim/colors.vim

" coc (conquer-of-completion) settings
source ~/.config/nvim/coc.vim

" additional custom keybinds
source ~/.config/nvim/keybinds.vim


""" General settings
syntax enable
set number rnu
set tabstop=4 softtabstop=4
set shiftwidth=4
set noexpandtab
filetype plugin indent on
set noswapfile
set nobackup
set incsearch
set noshowcmd
set cursorline
set hidden
set noshowmode
let g:airline#extensions#tabline#enabled = 0

set colorcolumn=110
"set guicursor=""

set signcolumn=no

" Search for everything, ignoring upper and lower case letters
set ignorecase smartcase

" no more autocomment on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" set spell when filetype is .md or .tex
autocmd BufNewFile,BufRead *.md set spell 
autocmd BufNewFile,BufRead *.tex set spell

autocmd TermOpen * set nospell

" change tabs when writing tex to 2 tabs
autocmd BufNewFile,BufRead *.tex set tabstop=2 softtabstop=2 shiftwidth=2


" split below right when opening a new split
set splitbelow splitright

let g:OmniSharp_highlighting = 0 

" Enable treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
	highlight = {
	enable = true,              -- false will disable the whole extension
	-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
	-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
	-- Using this option may slow down your editor, and you may see some duplicate highlights.
	-- Instead of true it can also be a list of languages
	additional_vim_regex_highlighting = false,
	},
}
EOF
" in .vimrc/init.vim
