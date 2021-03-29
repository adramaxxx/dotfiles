" vimtex config
nnoremap <leader>lp : VimtexCompile<CR>
let g:vimtex_quickfix_mode = 0
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'latexmk -pdf -pvc $*'
let g:vimtex_view_general_viewer = 'zathura'
let g:tex_flavor = 'latex'
