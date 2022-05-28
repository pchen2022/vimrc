"======================================================================
"
" init-pack-nerdtree.vim - nerdtree插件配置
"
"======================================================================


" 自动开关NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
" 启动vim默认打开NERDTree
" autocmd VimEnter * NERDTree
" 当NERDTree是最后一个窗口时,自动关闭Vim
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" 防止其他缓冲区替换其窗口中的NERDTree
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
" 更改默认箭头
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" 打开文件所在目录
" 光标在左侧NERTree
if buffer_name('%') =~ 'NERD_tree_\d\+'
    map ff <C-W>l
" 光标在右侧Tagbar
elseif bufname('#') =~ '__Tagbar__\.\d\+'
    map ff <C-W>h
else  " 光标在中间
    nnoremap ff :NERDTreeFind<CR>
endif
