" Custom keybinds that make my life a lot easier
" for switching between buffers with ctrl+p (previous) and ctrl+n (next)
"nnoremap <silent> <C-n> :bnext<CR>
"nnoremap <silent> <C-p> :bprevious<CR>

" for switching between tabs with ctrl+p (previous) and ctrl+n (next)
nnoremap <silent> <C-M-n> :tabnext<CR>
nnoremap <silent> <C-M-p> :tabprevious<CR>
nnoremap <silent> <C-t> :tabnew<CR>
"nnoremap <silent> <C-w> :tabclose<CR>

" use navigation keys to move around windows when splitting
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" better indenting in visual mode
vnoremap < <gv
vnoremap > >gv

" better resizing of panes
nnoremap <M-j> :resize -5<CR>
nnoremap <M-k> :resize +5<CR>
nnoremap <M-h> :vertical resize -5<CR>
nnoremap <M-l> :vertical resize +5<CR>

" Toggle floating terminal
nnoremap <leader>fo : FloatermToggle <CR>

" remapping to exit terminal mode
tnoremap <Esc> <C-\><C-n>

" better copying
vnoremap <leader>y "+y
nnoremap <leader>Y "+yg_
nnoremap <leader>y "+y
nnoremap <leader>p "+p
nnoremap <leader>P "+P

" remapping to convert visually selected stuff to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

" Delete current open buffer
nnoremap <leader>dd :bd <CR>

"Move by display lines when wrapping lines
" Inspired by Dr. Lybech
nnoremap <silent> <Up>   gk
nnoremap <silent> <Down> gj

vnoremap <silent> <Up>   gk
vnoremap <silent> <Down> gj

" Keybinds for moving visually selected lines up or down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" delete visually selected to void reg and paste from quote reg
vnoremap <leader>p "_dP

" Toggle Terminal
"nnoremap ,t :ToggleTerminal<CR>

" This command probably needs to be replaced with something else at another time, since I am using native lsp now
"command Gsh :CocCommand clangd.switchSourceHeader

" Search for file under cursor with regex
"command Scw echo expand("<cword>")

nnoremap ,t :terminal <CR>
