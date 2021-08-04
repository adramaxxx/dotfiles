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
    set background=light
    colorscheme solarized8_high
    highlight Normal guibg=NONE 
    let g:solarized_extra_hi_groups = 1
    "highlight clear SpellBad
    "highlight SpellBad cterm=underline,bold gui=underline,bold
    highlight Statusline guifg=#000000 gui=bold
    "highlight clear SignColumn
    "highlight CursorLineNr guibg=NONE
    "highlight LineNr guibg=NONE
endfunction

function! SolarizedDark()
    set background=dark
    colorscheme solarized8_high
    "highlight clear SpellBad
    "highlight SpellBad cterm=underline,bold gui=underline,bold
    highlight EndOfBuffer guibg=NONE
    highlight Normal guibg=NONE 
    highlight clear SignColumn
    highlight clear CursorLineNr
    highlight clear LineNr
    highlight CursorLineNr gui=bold
    highlight LineNr gui=bold
    highlight CursorLineNR guifg=#cecb00 gui=bold
    highlight clear TablineFill
    highlight clear VertSplit 
    highlight VertSplit guifg=#282c34 guibg=#282c34
    highlight clear Statusline
    highlight Statusline guifg=#FFFFFF guibg=#282c34 gui=bold
    highlight clear StatuslineNC
    highlight StatuslineNC guifg=#525252 guibg=#282c34 gui=bold
endfunction

function! XcodeLight()
    set background=light
    colorscheme xcodelighthc
    highlight clear SpellBad
    highlight SpellBad cterm=underline,bold gui=underline,bold
    highlight EndOfBuffer guibg=NONE
    "highlight Statusline gui=bold
    highlight Statusline guifg=#000000 gui=bold
    highlight Normal guibg=NONE 
    highlight LineNr gui=bold
    highlight CursorLineNr gui=bold
    "highlight clear VertSplit
    highlight VertSplit guibg=#4c5563 
    highlight StatusLineNC guibg=#f1f1f1 guifg=#808080
    "guifg=#4c5563
    "highlight CursorLine guibg=#e5e5e5

    " Treesitter specific highlighting
    highlight TSError guibg=#f0f0f0
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
    let g:sonokai_style = 'default'
    let g:sonokai_enable_italic = 0
    set background=dark
    colorscheme sonokai
    highlight clear SpellBad
    highlight clear SignColumn
    highlight SpellBad cterm=underline,bold gui=underline,bold
    highlight EndOfBuffer guibg=NONE
    highlight Normal guibg=NONE 
    highlight CursorLineNr gui=bold
    highlight StatuslineNC guibg=#202020
    "highlight CursorLine guibg=#3d4455
endfunction

function! ColorDefault()
    set background=dark
    colorscheme default
    highlight EndOfBuffer guibg=NONE
    highlight Normal guibg=NONE guifg=#FFFFFF
    highlight clear SignColumn
    highlight clear StatuslineNC
    highlight StatuslineNC guibg=#282c34 guifg=#808080
    highligh clear Pmenu
	highlight Pmenu guibg=#303030 guifg=#FFFFFF
	highlight clear Tabline
	highlight clear TablineSel
	highlight TablineSel guibg=#505050 gui=bold
	highlight clear TablineFill

	highlight clear Statusline
	highlight clear StatuslineNC
	highlight Statusline guifg=#FFFFFF guibg=#2c323c
	highlight StatuslineNC cterm=reverse guifg=#5c6370
endfunction

function! ColorGruvboxDark()
	set background=dark
    let g:gruvbox_contrast_dark = 'hard'

    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif

    let g:gruvbox_invert_selection='0'

    colorscheme gruvbox

	highlight clear SignColumn

    highlight Normal guibg=NONE 

    "highlight CursorLineNr gui=bold guibg=NONE
    "highlight LineNr guifg=#fabd2f
    
	" blue
	highlight LineNr guifg=#5eacd3 gui=bold
	"highlight CursorLineNR guifg=#5eacd3

    " Statusline
    "highlight clear StatusLine
    "highlight StatusLine guifg=#FFFFFF guibg=#2c323c

    " Tabline
    "highlight clear Tabline
    "highlight clear TablineFill
    "highlight clear TablineSel
    "highlight TablineSel gui=bold guibg=#202328 guifg=#FFFFFF
    "highlight Tabline guibg=#202328 guifg=#81a2be
    "highlight TablineFill guibg=#282c34

    " Something netrw related
    highlight netrwDir guifg=#5eacd3

endfunction


function! ColorNebulousNight()
    lua vim.g.nb_italic_comments  = true
    lua vim.g.nb_italic_keywords  = false
    lua vim.g.nb_italic_functions = false
    lua vim.g.nb_italic_variables = false
    let g:nb_style = "night"
    colorscheme nebulous
    highlight Normal guibg=NONE 
endfunction

function! ColorNebulousMidnight()

    lua vim.g.nb_italic_comments  = true
    lua vim.g.nb_italic_keywords  = false
    lua vim.g.nb_italic_functions = false
    lua vim.g.nb_italic_variables = false
    let g:nb_style = "midnight"
    colorscheme nebulous

    highlight Normal guibg=NONE 
    highlight StatuslineNC guibg=#404040 guifg=#707070
    highlight Tabline guibg=#303030 guifg=#808080
    highlight TablineFill guibg=#282c34
    highlight CursorLineNr gui=bold
    highlight CursorLine guibg=#282736
	highlight clear LineNr
    "highlight CursorLineNr guibg=#101010 gui=bold
    "highlight clear SpellBad
    "highlight SpellBad cterm=underline,bold gui=underline,bold
    "highlight EndOfBuffer guibg=NONE
    "highlight clear CursorLineNr
    "highlight CursorLineNr gui=bold
    "highlight clear StatuslineNC
    "highlight StatuslineNC guibg=#282c34 guifg=#808080
    "highlight StatuslineNC guifg=
    highlight Statusline gui=bold
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
    let g:dracula_colorterm = 1
    colorscheme dracula
    "highlight StatusLine       guifg=#FFFFFF ctermfg=7    
    highlight Normal guibg=NONE
    "highlight StatusLineNC     guifg=#202328 ctermfg=7    guifg=#5b6268 ctermbg=8     cterm=none
    "highlight LineNr gui=bold
    "highlight CursorLineNr gui=bold
endfunction

function! ColorGruvbuddyTransparent()
    lua require('colorbuddy').colorscheme('gruvbuddy')
    highlight Normal guibg=NONE 
    highlight clear LineNr
    "highlight clear CursorLineNr
    highlight clear SignColumn
    "yellow
    "highlight LineNr guifg=#cecb00 gui=bold
    "highlight CursorLineNR guifg=#cecb00 gui=bold
    highlight clear VertSplit
    highlight VertSplit guifg=#202328 guibg=#202328

    "highlight clear TablineFill 
    "highlight TablineFill guibg=#282c34
    "highlight clear StatusLine
    highlight StatusLine guifg=#000000
	"guibg=#2c323c
endfunction

function! ColorGruvBuddy()
    lua require('colorbuddy').colorscheme('gruvbuddy')
	hi Normal guibg=NONE
    "highlight Normal guibg=NONE
    "highligh clear LineNr
    "highlight clear CursorLineNr
    "highlight LineNr gui=bold
    "highlight CursorLineNr
    "highlight clear SignColumn
    "highlight StatusLine gui=bold
    "highlight clear TablineFill
    "highlight clear VertSplit
    "highlight VertSplit guifg=#202328 guibg=#202328
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
    "highlight Statusline guifg=#000000 gui=bold
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

    " Treesitter specific highlighting
    highlight TSError guibg=#f0f0f0
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
        execute 'colorscheme base16-tomorrow-night'
        "highlight clear SignColumn
        "highlight clear CursorLineNr
        "highlight clear LineNr
        "highlight LineNR guibg=NONE
        "highlight CursorLineNr guibg=NONE
        "highlight CursorLineNr guifg=#cecb00 gui=bold
        highlight Normal guibg=NONE
        "highlight Statusline guifg=#FFFFFF
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
    "highlight clear SignColumn
    "highlight clear CursorLineNr
    "highlight clear LineNr
    "highlight CursorLineNr guifg=#cecb00 gui=bold
    "highlight Normal guibg=NONE
    "highlight Statusline guifg=#FFFFFF
endfunction


function! ColorOneDark()
    set background=dark
    colorscheme onedark
    highlight Normal guibg=NONE 
	highlight clear SignColumn
	highlight Statusline guifg=#FFFFFF
    "highlight TablineSel guibg=#005577 gui=bold
	highlight clear SpellBad
    highlight SpellBad cterm=underline,bold gui=underline,bold
	highlight clear LineNr
	highlight clear CursorLineNr 
	highlight CursorLineNr gui=bold
endfunction

function! ColorMolokai()
    let g:rehash256 = 1
    let g:molokai_original = 0
    set background=dark
    colorscheme molokai
    highlight clear SignColumn
    highlight clear LineNr
    highlight Normal guibg=NONE guifg=#FFFFFF
    highlight CursorLineNr gui=bold
    "highlight clear CursorLineNr
    highlight LineNr gui=bold
    highlight CursorLineNr gui=bold guifg=#cecb00
    highlight clear PmenuThumb
    "hi Pmenu           guifg=#FFFFFF guibg=#333841
    "hi PmenuSel                      guibg=#4b5263
    "hi PmenuSbar                     guibg=#282c34
    "hi PmenuThumb      guifg=#aab2bf
    "highlight clear StatusLine
    "highlight clear StatuslineNC
    "highlight StatusLine guifg=#FFFFFF guibg=#2c323c gui=bold
    "highlight StatuslineNC guibg=#282c34 guifg=#808080
endfunction

function! GetAllTreeSitter()
" configure treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
  },
}
EOF
endfunction

function! ColorNVCode()
    " configure nvcode-color-schemes
    let g:nvcode_termcolors=256
    syntax on
    colorscheme nvcode " Or whatever colorscheme you make
    " checks if your terminal has 24-bit color support
    if (has("termguicolors"))
        set termguicolors
        hi LineNr ctermbg=NONE guibg=NONE
    endif

    highlight clear SignColumn
    highlight Normal guibg=NONE 
endfunction

function! ColorSnazzy()
    colorscheme snazzy
    highlight Normal guibg=NONE
    highlight LineNr guifg=#909090
    highlight StatuslineNC guibg=#202020
    highlight clear SignColumn
endfunction


function! PerfectDark()
    "Almost perfect
    set background=dark
    colorscheme PerfectDark
    hi Pmenu           guifg=#FFFFFF guibg=#505050
    hi PmenuSel                      guibg=#909090
    hi PmenuSbar                     guibg=#080808
    hi PmenuThumb      guifg=#66D9EF
    hi Normal guibg=NONE
    hi EndOfBuffer guibg=NONE
    hi clear TablineFill
    hi TablineFill guibg=#282c34
    hi clear Tabline
    hi Tabline guibg=#505050
    hi clear VertSplit
    highlight VertSplit guifg=#4c5563 guibg=#4c5563
    hi clear SignColumn
    hi SignColumn guibg=#303030
    hi LineNr guibg=#303030
    highlight StatusLine guibg=#2c323c
    hi clear SignColumn
    hi LineNr guibg=NONE
endfunction

function! ColorVimCode()
	set background=dark
	colorscheme codedark
	hi clear SignColumn
	highlight Normal guibg=NONE 
	highlight EndOfBuffer guibg=NONE
	"highlight CursorLine guibg=#333333
	highlight LineNr guifg=#5eacd3 guibg=NONE gui=bold
endfunction

function! TomorrowNight()
	colorscheme Tomorrow-Night
	highlight Normal guibg=NONE
endfunction

"call Base16template('nil')
"call SolarizedDark()
call ColorVimCode()
"call TomorrowNight()
"call SolarizedDark()

" Enable treesitter highlighting
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

