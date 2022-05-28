"======================================================================
"
" init.vim - 初始化配置 
"
"======================================================================


" 防止重复加载
if get(s:, 'loaded', 0) != 0
    finish
else
    let s:loaded = 1
endif

" 取得本文件所在的目录
" let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let s:home = '~/.vim'

" 定义一个命令用来加载文件
command! -nargs=1 LoadScript exec 'so '.s:home.'/'.'<args>'

" 将 vim-init 目录加入 runtimepath
exec 'set rtp+='.s:home

" 操作系统判断
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
else
    let g:iswindows = 0
endif


"----------------------------------------------------------------------
" 模块加载
"----------------------------------------------------------------------

" 加载基础配置
LoadScript init/init-basic.vim

" 自定义按键
LoadScript init/init-keymaps.vim
 
" Vundle插件管理工具
LoadScript init/init-bundle-vundle.vim

" coc
LoadScript init/init-pack-coc.vim
 
" color-scheme
LoadScript init/init-pack-gruvbox.vim
 
" tagbar
LoadScript init/init-pack-tagbar.vim
 
" NERDTree
LoadScript init/init-pack-nerdtree.vim
 
" airline and airline themes
LoadScript init/init-pack-airline.vim
 
" flake8
LoadScript init/init-pack-python-flake8.vim
 
" indentline
LoadScript init/init-pack-indentline.vim
 
" autopep8
LoadScript init/init-vundle-autopep8.vim
 
" ultisnips\snippets代码块插件
LoadScript init/init-vundle-snip.vim
 
" 自动补全括号插件
LoadScript init/init-vundle-autopairs.vim 

" instant_markdown 
LoadScript init/init-after-markdown.vim

