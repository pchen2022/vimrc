"======================================================================
"
" init-bundle-vundle.vim - vundle插件管理工具
"
"======================================================================


set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" python代码格式化插件
Plugin 'tell-k/vim-autopep8'

" nodejs代码插件
Plugin 'moll/vim-node'

" 代码块插件
" 代码块插件引擎
Plugin 'sirver/ultisnips'
" 各种编程语言的代码块模板
Plugin 'honza/vim-snippets'
" 自动补全括号插件
Plugin 'jiangmiao/auto-pairs'


call vundle#end()
filetype plugin indent on

