"======================================================================
"
" init-pack-python-flake8.vim - python静态语法检测插件配置
"
"======================================================================


autocmd FileType python map <buffer> <F7> :call flake8#Flake8()<CR>
let g:flake8_quickfix_location="topleft"
let g:flake8_quickfix_height=7
let g:flake8_show_quickfix=1
let g:flake8_show_in_gutter=0
let g:flake8_show_in_file=0
let g:flake8_max_markers=500
let flake8_error_marker='EE'     " set error marker to 'EE'
let flake8_warning_marker='WW'   " set warning marker to 'WW'
let flake8_pyflake_marker=''     " disable PyFlakes warnings
let flake8_complexity_marker=''  " disable McCabe complexity warnings
let flake8_naming_marker=''      " disable naming warnings
