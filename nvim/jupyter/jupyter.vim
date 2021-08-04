command! -nargs=0 RunQtConsole
  \ call jobstart("jupyter qtconsole --JupyterWidget.include_other_output=True")

let g:ipy_celldef = '^##' " regulært udtryk til starten på en celle og slutningen på den

" Genvejstaster som du sikkert gerne vil lave om
nmap <silent> <leader>jqt :RunQtConsole<CR>
nmap <silent> <leader>jk :IPython --existing --no-window<CR>
nmap <silent> <leader>jc <Plug>(IPy-RunCell)
nmap <silent> <leader>ja <Plug>(IPy-RunAll)


" Kør :UpdateRemotePlugins hvis den brokker sig over dumme ting
" Hvis den begynder at påstå at jobstart ikke findes, så source den her fil en gang til (den er lidt dum uden grund, ligesom vores statsminister)

" Afhængigheder

" Neovim
" Plug 'bfredl/nvim-ipy'

" python ting
" sudo pacman -S python-qtconsole


" Rækkefølge
" 1. Kør RunQtConsole funktionen for at starte et qt vindue
" 2. Kør nmap <silent> <leader>jk :IPython --existing --no-window<CR> dimsen
" 3. Nu kan du gøre hvad du har lyst til. Hvis du vil eksekvere en celle skal din cursor bare være inde i den, og så bruger du bare <leader>jc
" <leader>ja burde næsten forklare sig selv :P

" Øvrige bemærkninger
" Det er ikke alle ting coc-python fatter at forstå, såsom at den brokker sig over at display() funktionen ikke findes, dog er det stadig uendeligt bedre end din nuværende situation med at skrive i browseren.
" DET ER MEGET VIGTIGT at din pwd i både neovim og den der qt console stemmer overens med hvor dine filer er henne
" I mit tilfælde, der skulle jeg først ændre neovims path til den sti hvori de her to filer som du bruger i den her opgave ligger, og det samme gør sig gældende med qt vinduet, da den bliver startet i den mappe som din vim instans står i

" Sidst men ikke mindst, så skrives alle tingene i .py filer og ikke de andet afskyelige format
" Jeg antager at markdown celler laves med # foran de ting der skal printes
