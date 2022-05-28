"======================================================================
"
" init-bundle-python-autopep8.vim - python代码格式化插件
"
"======================================================================


" For example, to map it to <F8>:
autocmd FileType python noremap <buffer> <Leader>f :call Autopep8()<CR>

" Do not fix these errors/warnings (default: E226,E24,W6)
let g:autopep8_ignore="E501,W293"

" Fix only these errors/warnings (e.g. E4,W)
let g:autopep8_select="E501,W293"

" Maximum number of additional pep8 passes (default: 100)
let g:autopep8_pep8_passes=100

" Set maximum allowed line length (default: 79)
let g:autopep8_max_line_length=79

" Enable possibly unsafe changes (E711, E712) (default: non defined)
" # add aggressive option (--aggressive)
let g:autopep8_aggressive=1
" # add more aggressive options (--aggressive --aggressive)
let g:autopep8_aggressive=2

" Number of spaces per indent level (default: 4)
let g:autopep8_indent_size=2

" Disable show diff window
let g:autopep8_disable_show_diff=1

" Chose diff window type. (default: horizontal)
" # default
let g:autopep8_diff_type='horizontal'
" let g:autopep8_diff_type='vertical'

" Automatically format every time saving a file.
let g:autopep8_on_save = 1

