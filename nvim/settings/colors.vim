" colors
set background=dark
set termguicolors
let g:gruvbox_contrast_dark = "hard"
colorscheme onedark

highlight clear SpellBad
"highlight clear SignColumn
highlight clear CursorLineNR
"highlight clear LineNr

highlight SpellBad cterm=underline,bold gui=underline,bold
"highlight Normal guibg=NONE guifg=NONE

"highlight ColorColumn ctermbg=0 guibg=grey
"hi SignColumn guibg=none ctermbg=none
"hi CursorLineNR guibg=None ctermbg=none
highlight Normal guibg=none
highlight LineNr guifg=#5eacd3

" An interpretation of tomorrow night bright (uses different background and foreground colors) from term
"highlight VertSplit        guifg=#1c1f24 ctermfg=0    guifg=#5b6268 ctermbg=8     cterm=none
"highlight Statement        guifg=#98be65 ctermfg=2    guibg=none    ctermbg=none  cterm=none
"highlight Directory        guifg=#51afef ctermfg=4    guibg=none    ctermbg=none  cterm=none
"highlight StatusLine       guifg=#202328 ctermfg=7    guifg=#5b6268 ctermbg=8     cterm=none
"highlight StatusLineNC     guifg=#202328 ctermfg=7    guifg=#5b6268 ctermbg=8     cterm=none
"highlight NERDTreeClosable guifg=#98be65 ctermfg=2
"highlight NERDTreeOpenable guifg=#5b6268 ctermfg=8
"highlight Comment          guifg=#51afef ctermfg=4    guibg=none    ctermbg=none  cterm=italic
"highlight Constant         guifg=#3071db ctermfg=12   guibg=none    ctermbg=none  cterm=none
"highlight Special          guifg=#51afef ctermfg=4    guibg=none    ctermbg=none  cterm=none
"highlight Identifier       guifg=#5699af ctermfg=6    guibg=none    ctermbg=none  cterm=none
"highlight PreProc          guifg=#c678dd ctermfg=5    guibg=none    ctermbg=none  cterm=none
"highlight String           guifg=#3071db ctermfg=12   guibg=none    ctermbg=none  cterm=none
"highlight Number           guifg=#ff6c6b ctermfg=1    guibg=none    ctermbg=none  cterm=none
"highlight Function         guifg=#ff6c6b ctermfg=1    guibg=none    ctermbg=none  cterm=none
""highlight Visual           guifg=#dfdfdf ctermfg=1    guibg=#1c1f24 ctermbg=none  cterm=none
"highlight Visual guifg=none guibg=grey
"highlight Pmenu guifg=white guibg=grey 
"highlight PmenuSel guibg=darkgrey guifg=white

"highlight StatusLine guibg=lightgrey
