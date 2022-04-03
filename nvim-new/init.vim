set runtimepath^=~/.vim runtimepath+=~/.vim/after

let g:ale_disale_lsp = 1
let mapleader=" "
source ~/.config/nvim/plug.vim
source ~/.config/nvim/fzf.vim
source ~/.config/nvim/colors.vim

" Lsp stuff
"luafile ~/.config/nvim/languages.lua
"luafile ~/.config/nvim/completions.lua

source ~/.config/nvim/coc.vim

source ~/.config/nvim/keybinds.vim

" General settings
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

set laststatus=0
set colorcolumn=80
"set guicursor=""


" Setting for using indentline with tabs
"set list lcs=tab:\|\ 

" Sign column for showing lsp diagnostics
set signcolumn=yes

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

" do such that if i accidentally press :W to save, then I do not get an error
cabb W w
cabb Q q

" split below right when opening a new split
set splitbelow splitright

let g:OmniSharp_highlighting = 0 
"let g:OmniSharp_highlighting = 0

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

let g:EasyMotion_smartcase = 1
nmap , <Plug>(easymotion-overwin-f)
map , <Plug>(easymotion-prefix)
