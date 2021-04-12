" colors
set background=dark
"colorscheme gruvbox

lua require('colorbuddy').colorscheme('onebuddy')

hi clear SpellBad
hi clear SignColumn
hi SpellBad cterm=underline,bold
highlight Normal ctermbg=NONE ctermfg=NONE
highlight Normal guibg=NONE guifg=NONE
"hi LineNr cterm=NONE ctermbg=NONE guibg=NONE guifg=NONE term=bold
"highlight clear CursorLine
"highlight CursorLine ctermbg=234
"let g:gruvbox_contrast_dark = 'hard'
