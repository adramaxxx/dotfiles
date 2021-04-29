" remapping leader for faster fzf
let mapleader=" "

" for switching between buffers with ctrl+p (previous) and ctrl+n (next)
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>


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

" nerd tree toggle
nmap <F6> :NERDTreeToggle<CR>

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

" A nice way to toggle buffers in the top bar
let s:bufferline = 1
function! ToggleBufferline()
	if s:bufferline == 1
		let s:bufferline=0
		set showtabline=0
	else
		let s:bufferline=1
		set showtabline=2
	endif
endfunction
nnoremap <leader>tt :call ToggleBufferline()<CR>

let s:statusline = 1
function! ToggleStatus()
	if s:statusline == 1
		let s:statusline=0
		set laststatus=0
	else
		let s:statusline=1
		set laststatus=2
	endif
endfunction
nnoremap <leader>ts :call ToggleStatus()<CR>

let s:cursorline = 0
function! ToggleCursorLine()
	if s:cursorline == 0
		let s:cursorline = 1
		set cursorline
	else
		let s:cursorline = 0
		set nocursorline
	endif
endfunction
nnoremap <leader>tl :call ToggleCursorLine()<CR>
