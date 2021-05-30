" colors
"set background=dark
set termguicolors
"black
"highlight LineNr guifg=#000000 gui=bold
"highlight CursorLineNR gui=bold

"yellow
"highlight LineNr guifg=#cecb00 gui=bold
"highlight CursorLineNR guifg=#cecb00 gui=bold

" blue
"highlight LineNr guifg=#5eacd3 gui=bold
"highlight CursorLineNR guifg=#5eacd3


function! SolarizedLight()
    colorscheme solarized8_high
    set background=light
    highlight clear SpellBad
    highlight SpellBad cterm=underline,bold gui=underline,bold
    highlight EndOfBuffer guibg=NONE
    highlight Statusline guifg=#000000 gui=bold
    highlight clear SignColumn
    highlight clear CursorLineNr
    highlight clear LineNr
    highlight Normal guibg=NONE 
endfunction

function! SolarizedDark()
    colorscheme solarized8_high
    set background=dark
    "highlight clear SpellBad
    "highlight SpellBad cterm=underline,bold gui=underline,bold
    highlight EndOfBuffer guibg=NONE
    "highlight clear Statusline
    "highlight Statusline guifg=#FFFFFF guibg=#282c34 gui=bold
    "highlight clear StatuslineNC
    "highlight StatuslineNC guifg=#525252 guibg=#282c34 gui=bold
    highlight Normal guibg=NONE 
    highlight clear SignColumn
    highlight clear CursorLineNr
    highlight clear LineNr
    highlight CursorLineNr gui=bold
    highlight LineNr gui=bold
    highlight CursorLineNR guifg=#cecb00 gui=bold
    highlight clear TablineFill
    let g:solarized_extra_hi_groups = 1
    highlight clear VertSplit 
    highlight VertSplit guifg=#282c34 guibg=#282c34
endfunction

function! XcodeLight()
    colorscheme xcodelighthc
    set background=light
    highlight clear SpellBad
    highlight SpellBad cterm=underline,bold gui=underline,bold
    highlight EndOfBuffer guibg=NONE
    highlight Statusline gui=bold
    "highlight Statusline guifg=#000000 gui=bold
    highlight Normal guibg=NONE 
    highlight LineNr gui=bold
    highlight CursorLineNr gui=bold
    highlight clear VertSplit
    highlight VertSplit guibg=#4c5563 guifg=#4c5563
endfunction

function! XcodeDark()
    set background=dark
    colorscheme xcodedarkhc
    highlight EndOfBuffer guibg=NONE
    highlight Statusline gui=bold
    highlight Normal guibg=NONE 
    highlight LineNr gui=bold
    highlight CursorLineNr gui=bold
endfunction

function! ColorSonoKai()
    colorscheme sonokai
    set background=dark
    highlight clear SpellBad
    highlight clear SignColumn
    highlight SpellBad cterm=underline,bold gui=underline,bold
    highlight EndOfBuffer guibg=NONE
    highlight Statusline gui=bold
    highlight Normal guibg=NONE 
    "highlight LineNr gui=bold
    highlight CursorLineNr gui=bold
    highlight CursorLineNR guifg=#cecb00 gui=bold
    highlight clear VertSplit
    highlight VertSplit guibg=#4c5563 guifg=#4c5563
    highlight TablineSel gui=bold
endfunction

function! ColorDefault()
    set background=dark
    colorscheme default
    highlight clear SpellBad
    highlight SpellBad cterm=underline,bold gui=underline,bold
    highlight EndOfBuffer guibg=NONE
    highlight Normal guibg=NONE 
    highlight LineNr gui=bold
    highlight clear SignColumn
    highlight clear StatuslineNC
    "highlight Statusline guibg=black
    highlight CursorLineNr gui=bold
    highligh clear Pmenu
    hi Pmenu           guifg=#FFFFFF guibg=#282c34
    hi PmenuSel                      guibg=#808080
    hi PmenuSbar                     guibg=#080808
    hi PmenuThumb      guifg=#66D9EF
    highlight clear StatusLine
    highlight StatusLine guifg=#FFFFFF guibg=#2c323c
    highlight clear TablineFill
    highlight clear Tabline
    highlight TablineFill guibg=#2c323c
endfunction

function! ColorGruvboxDark()
    let g:gruvbox_contrast_dark = 'hard'
    set background=dark
    colorscheme gruvbox
    highlight clear SignColumn
    highlight clear SpellBad
    highlight SpellBad cterm=underline,bold gui=underline,bold
    highlight EndOfBuffer guibg=NONE
    highlight Normal guibg=NONE 
    highlight CursorLineNr gui=bold
    highlight clear StatusLine
    highlight StatusLine guifg=#FFFFFF guibg=#2c323c
    highlight clear Tabline
    highlight clear TablineFill
    highlight clear TablineSel
    highlight TablineSel gui=bold guibg=#202328
    highlight Tabline guibg=#202328 guifg=#81a2be
endfunction

function! ColorNightbuddy()
    lua vim.g.nb_style = "midnight"
    lua require('colorbuddy').colorscheme('nightbuddy')
    highlight clear SpellBad
    highlight SpellBad cterm=underline,bold gui=underline,bold
    highlight EndOfBuffer guibg=NONE
    highlight Normal guibg=NONE 
    highlight clear CursorLineNr
    highlight CursorLineNr gui=bold
    "highlight clear StatuslineNC
    "highlight StatuslineNC guifg=
    highlight Statusline gui=bold
    hi Pmenu           guifg=#FFFFFF guibg=#282c34
    hi PmenuSel                      guibg=#808080
    hi PmenuSbar                     guibg=#080808
    hi PmenuThumb      guifg=#66D9EF
endfunction!

function! ColorRandomDoomOne()
    highlight Normal           guifg=#dfdfdf ctermfg=15   guibg=#282c34 ctermbg=none  cterm=none
    highlight LineNr           guifg=#5b6268 ctermfg=8    guibg=#282c34 ctermbg=none  cterm=none
    highlight CursorLineNr     guifg=#202328 ctermfg=7    guifg=#5b6268 ctermbg=8     cterm=none
    highlight VertSplit        guifg=#1c1f24 ctermfg=0    guifg=#5b6268 ctermbg=8     cterm=none
    highlight Statement        guifg=#98be65 ctermfg=2    guibg=none    ctermbg=none  cterm=none
    highlight Directory        guifg=#51afef ctermfg=4    guibg=none    ctermbg=none  cterm=none
    highlight StatusLine       guifg=#202328 ctermfg=7    guifg=#5b6268 ctermbg=8     cterm=none
    highlight StatusLineNC     guifg=#202328 ctermfg=7    guifg=#5b6268 ctermbg=8     cterm=none
    highlight NERDTreeClosable guifg=#98be65 ctermfg=2
    highlight NERDTreeOpenable guifg=#5b6268 ctermfg=8
    highlight Comment          guifg=#51afef ctermfg=4    guibg=none    ctermbg=none  cterm=italic
    highlight Constant         guifg=#3071db ctermfg=12   guibg=none    ctermbg=none  cterm=none
    highlight Special          guifg=#51afef ctermfg=4    guibg=none    ctermbg=none  cterm=none
    highlight Identifier       guifg=#5699af ctermfg=6    guibg=none    ctermbg=none  cterm=none
    highlight PreProc          guifg=#c678dd ctermfg=5    guibg=none    ctermbg=none  cterm=none
    highlight String           guifg=#3071db ctermfg=12   guibg=none    ctermbg=none  cterm=none
    highlight Number           guifg=#ff6c6b ctermfg=1    guibg=none    ctermbg=none  cterm=none
    highlight Function         guifg=#ff6c6b ctermfg=1    guibg=none    ctermbg=none  cterm=none
    highlight Visual           guifg=#dfdfdf ctermfg=1    guibg=#1c1f24 ctermbg=none  cterm=none
    hi Pmenu           guifg=#FFFFFF guibg=#282c34
    hi PmenuSel                      guibg=#808080
    hi PmenuSbar                     guibg=#080808
    hi PmenuThumb      guifg=#66D9EF
endfunction!

function! ColorDracula()
    let g:dracula_colorterm = 0
    colorscheme dracula
    highlight StatusLine       guifg=#FFFFFF ctermfg=7    
    highlight Normal guibg=NONE
    highlight StatusLineNC     guifg=#202328 ctermfg=7    guifg=#5b6268 ctermbg=8     cterm=none
    highlight LineNr gui=bold
    highlight CursorLineNr gui=bold
endfunction

function! ColorGruvbuddyTransparent()
    lua require('colorbuddy').colorscheme('gruvbuddy')
    highlight Normal guibg=NONE
    highlight clear LineNr
    highlight clear CursorLineNr
    highlight clear SignColumn
    highlight StatusLine guifg=#000000
    "yellow
    highlight LineNr guifg=#cecb00 gui=bold
    highlight CursorLineNR guifg=#cecb00 gui=bold
    highlight clear VertSplit
    highlight VertSplit guifg=#202328 guibg=#202328

    highlight clear TablineFill 
    "highlight TablineFill guibg=#282c34
    highlight clear StatusLine
    highlight StatusLine guifg=#FFFFFF guibg=#2c323c
endfunction

function! ColorGruvBuddy()
    lua require('colorbuddy').colorscheme('gruvbuddy')
    highlight Normal guibg=NONE
    "highligh clear LineNr
    "highlight clear CursorLineNr
    highlight LineNr gui=bold
    "highlight CursorLineNr
    "highlight clear SignColumn
    "highlight StatusLine gui=bold
    "highlight clear TablineFill
    highlight clear VertSplit
    highlight VertSplit guifg=#202328 guibg=#202328
endfunction

function! GruvboxLight()
    let g:gruvbox_contrast_light = 'hard'
    set background=light
    colorscheme gruvbox
    highlight clear SignColumn
    highlight clear SpellBad
    highlight SpellBad cterm=underline,bold gui=underline,bold
    highlight EndOfBuffer guibg=NONE
    highlight Normal guibg=NONE 
    "highlight clear CursorLineNr
    "highlight clear LineNr
    "highlight LineNr guifg=#cecb00  gui=bold
    "highlight CursorLineNr guifg=#cecb00 gui=bold
endfunction

function! ColorOneNvimLight()
    set background=light
    colorscheme one-nvim
    highlight Normal guibg=NONE 
    highlight Statusline guifg=#000000 gui=bold
    highlight VertSplit guifg=#4c5563
    highlight LineNr gui=bold
    highlight CursorLineNr gui=bold
    highlight clear CursorLineNr
    highlight CursorLineNr gui=bold
    highlight clear SpellBad
    highlight SpellBad cterm=underline,bold gui=underline,bold
    highlight clear LineNr
    highlight clear StatusLineNC
    highlight StatusLineNC gui=bold guibg=#d6d6d6 guifg=#8a8a8a
    highlight StatusLine guibg=#bfc3c9 gui=bold
    highlight clear Tabline
    highlight clear TablineSel
    highlight Tabline gui=bold
    highlight TablineSel gui=bold guibg=#bfc3c9
    highlight clear TablineFill
endfunction

function! ColorPeachPuff()
    set background=light
    colorscheme peachpuff
    highlight Normal guibg=NONE 
    highlight clear SignColumn
endfunction

function! ColorPaperColor()
    set background=light
    colorscheme PaperColor
    highlight Normal guibg=NONE
    highlight clear SignColumn
    highlight LineNr gui=bold
    highlight CursorLineNr gui=bold
endfunction

function! ColorAyuLight()
    let ayucolor="light" 
    set background=light
    colorscheme ayu
    highlight Normal guibg=NONE
    highlight clear SignColumn
    highlight LineNr gui=bold
    highlight CursorLineNr gui=bold
endfunction

function! ColorPencilLight()
    set background=light
    colorscheme pencil
    highlight Normal guibg=NONE
    highlight clear LineNr
    highlight LineNr gui=bold
    highlight CursorLineNr gui=bold guibg=NONE
    highlight Statusline gui=bold guifg=#000000
endfunction

function Base16template(colorname)
    let color = a:colorname

    if(color == 'nil')
        execute 'colorscheme base16-isotope'
        highlight clear SignColumn
        "highlight clear CursorLineNr
        "highlight clear LineNr
        highlight LineNR guibg=NONE
        highlight CursorLineNr guibg=NONE
        highlight CursorLineNr guifg=#cecb00 gui=bold
        highlight Normal guibg=NONE
        highlight Statusline guifg=#FFFFFF
    else
        execute 'colorscheme ' color
    endif

    "execute 'colorscheme ' color
    "highlight clear SignColumn
    "highlight clear CursorLineNr
    "highlight clear LineNr
    "highlight CursorLineNr guifg=#cecb00 gui=bold
endfunction

function! ColorDoomOne()
    colorscheme doom-one
    highlight clear SignColumn
    highlight clear CursorLineNr
    highlight clear LineNr
    highlight CursorLineNr guifg=#cecb00 gui=bold
    highlight Normal guibg=NONE
    highlight Statusline guifg=#FFFFFF
endfunction


function! ColorOneDark()
    set background=dark
    colorscheme one-nvim
    highlight CursorLineNr gui=bold
    highlight Statusline guifg=#FFFFFF
    highlight Normal guibg=NONE
    highlight clear SignColumn
endfunction


function! ColorMolokai()
    set background=dark
    colorscheme molokai
    highlight clear SignColumn
    highlight clear LineNr
    highlight Normal guibg=NONE
    highlight LineNr gui=bold
    highlight CursorLineNr gui=bold guifg=#cecb00
    highlight clear PmenuThumb
    highlight PmenuThumb guibg=#282c34
endfunction

"call ColorGruvbuddyTransparent()
"call ColorGruvboxDark()
"call GruvboxLight()
"call ColorDefault()
call ColorMolokai()
"call ColorOneNvimLight()

function! LoadDefaults()
    highlight clear SpellBad
    "highlight clear SignColumn
    "highlight clear CursorLineNr
    "highlight clear LineNr

    highlight SpellBad cterm=underline,bold gui=underline,bold
    highlight Normal guibg=NONE 
    highlight EndOfBuffer guibg=NONE

    "highlight TablineFill guibg=#282c34

    "highlight LineNr guifg=#5eacd3 gui=bold
    "highlight CursorLineNR guifg=#5eacd3 gui=bold
    "highlight LineNr guifg=#cecb00 gui=bold
    "highlight CursorLineNR guifg=#cecb00 gui=bold
"    if (s:colormode == 'light')
"        highlight Statusline guifg=#000000
"    endif
endfunction


"call LoadDefaults()
