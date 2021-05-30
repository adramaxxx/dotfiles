" vimtex config
nnoremap <leader>lp : VimtexCompile<CR>
let g:vimtex_quickfix_mode = 0
let g:Tex_DefaultTargetFormat = 'pdf'
"let g:Tex_CompileRule_pdf = 'latexmk -pdf -pvc $*'
let g:vimtex_view_general_viewer = 'zathura'
let g:tex_flavor = 'latex'
let g:vimtex_view_automatic = 0
let g:vimtex_syntax_packages = {'todonotes': {'load': 0}}

let g:vimtex_compiler_latexmk = { 
        \ 'executable' : 'latexmk',
        \ 'continuous' : 0,
		\ 'build_dir' : 'build',
        \ 'options' : [ 
        \   '-xelatex',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
        \ ],
        \}
