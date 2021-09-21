set termguicolors

function! ColorMolokai()
    let g:rehash256 = 1
    set background=dark
	colorscheme molokai
    highlight Normal guibg=NONE guifg=#FFFFFF
    highlight CursorLineNr gui=bold
    highlight Normal guibg=NONE guifg=#FFFFFF
    highlight CursorLineNr gui=bold 
	highlight clear SignColumn
    highlight LineNr gui=bold guibg=NONE guifg=#808080
    highlight CursorLineNr gui=bold guifg=#cecb00
    hi Pmenu           guifg=#FFFFFF guibg=#333841
    hi PmenuSel                      guibg=#4b5263
    hi PmenuSbar                     guibg=#282c34
    hi PmenuThumb      guifg=#aab2bf
endfunction


call ColorMolokai()

"highlight Normal guibg=NONE
