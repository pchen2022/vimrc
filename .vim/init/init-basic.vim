"======================================================================
"
" init-basic.vim - 基础配置
"
"======================================================================


"----------------------------------------------------------------------
"   基础配置
"----------------------------------------------------------------------
syntax on
set nocompatible
set autoread
set shortmess=atI

set magic
set title
set nobackup

set noerrorbells
set visualbell t_vb=
set t_vb=
set timeoutlen=500

"----------------------------------------------------------------------
"  编码设置
"----------------------------------------------------------------------
"set encoding=utf-8
"set fileencodings=ucs-bom,cp936,gb1803,big5,euc-jp,euc-kr,latinl
"set fileformats=unix,dos,mac
"set termencoding=utf-8
"set formatoptions+=m
"set formatoptions+=B

"----------------------------------------------------------------------
"  界面显示设置
"----------------------------------------------------------------------
set ruler
set number
set nowrap
set showcmd
set showmode
set showmatch
set matchtime=2
" 允许下方显示目录
set wildmenu

"----------------------------------------------------------------------
"  查找设置
"----------------------------------------------------------------------
set hlsearch
set incsearch
set ignorecase
set smartcase

"----------------------------------------------------------------------
"  Tab制表符设置
"----------------------------------------------------------------------
set expandtab
set smarttab
set shiftround

"----------------------------------------------------------------------
"  缩进设置
"----------------------------------------------------------------------
set autoindent smartindent shiftround
set shiftwidth=4
set tabstop=4
set softtabstop=4

"----------------------------------------------------------------------
"  显示当前光标位置
"----------------------------------------------------------------------
set cursorcolumn
set cursorline

"----------------------------------------------------------------------
"  文件类型设置
"----------------------------------------------------------------------
filetype on
filetype plugin on
filetype indent on

autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai
autocmd FileType ruby set tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai
autocmd BufRead,BufNew *.md,*.mkd,*.markdown set filetype=markdown.mkd

autocmd BufNewFile *.sh,*.py exec ":call AutoSetFileHead()"
function! AutoSetFileHead()
    " .sh "
    if &filetype == 'sh'
        call setline(1, "\#!/bin/bash")
    endif

    " python "
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python3")
        call append(1, "\# encoding: utf-8")
    endif

    normal G
    normal o
    normal o
endfunc

autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

"----------------------------------------------------------------------
" 代码折叠
"----------------------------------------------------------------------
if has('folding')
    " 允许代码折叠
    set foldenable

    " 代码折叠默认使用缩进
    set foldmethod=indent

    " 默认打开所有缩进 
    set foldlevel=99
endif

"----------------------------------------------------------------------
" 文件搜索和补全时忽略下面扩展名
"----------------------------------------------------------------------
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pyc,.pyo,.egg-info,.class

set wildignore=*.o,*.obj,*~,*.exe,*.a,*.pdb,*.lib "stuff to ignore when tab completing
set wildignore+=*.so,*.dll,*.swp,*.egg,*.jar,*.class,*.pyc,*.pyo,*.bin,*.dex
set wildignore+=*.zip,*.7z,*.rar,*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz    " MacOSX/Linux
set wildignore+=*DS_Store*,*.ipch
set wildignore+=*.gem
set wildignore+=*.png,*.jpg,*.gif,*.bmp,*.tga,*.pcx,*.ppm,*.img,*.iso
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**
set wildignore+=*/.nx/**,*.app,*.git,.git
set wildignore+=*.wav,*.mp3,*.ogg,*.pcm
set wildignore+=*.mht,*.suo,*.sdf,*.jnlp
set wildignore+=*.chm,*.epub,*.pdf,*.mobi,*.ttf
set wildignore+=*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc
set wildignore+=*.ppt,*.pptx,*.docx,*.xlt,*.xls,*.xlsx,*.odt,*.wps
set wildignore+=*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu
set wildignore+=*.gba,*.sfc,*.078,*.nds,*.smd,*.smc
set wildignore+=*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android

"----------------------------------------------------------------------
" 其他
"----------------------------------------------------------------------
" 延迟绘制（提升性能）
set lazyredraw

" 错误格式
set errorformat+=[%f:%l]\ ->\ %m,[%f:%l]:%m

" 设置分隔符可视
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<

" 如遇Unicode值大于255的文本，不必等到空格再折行
set formatoptions+=m

" 合并两行中文时，不在中间加空格
set formatoptions+=B

" 文件换行符，默认使用 unix 换行符
set ffs=unix,dos,mac
