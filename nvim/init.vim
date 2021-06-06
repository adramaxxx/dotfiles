set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
let mapleader=" "

" More general settings
source ~/.config/nvim/settings/settings.vim
source ~/.config/nvim/settings/keybinds.vim
" Plugin settings
source ~/.config/nvim/plugins/plug.vim
source ~/.config/nvim/plugins/vimtex.vim
source ~/.config/nvim/plugins/airline.vim

source ~/.config/nvim/plugins/fzf.vim

" more stuff
"source ~/.config/nvim/status.vim
"luafile ~/.config/nvim/lua/bufferline.lua

source ~/.config/nvim/plugins/coc.vim

source ~/.config/nvim/settings/colors.vim
"luafile ~/.config/nvim/lua/evil-line.lua
luafile ~/.config/nvim/lua/expressline.lua
"source ~/.config/nvim/status.vim

" To prevent absolute path in statusline
let g:netrw_keepdir= 0

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
  },
}
EOF
