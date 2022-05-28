"======================================================================
"
" init-keymaps.vim - 基础键盘映射
"
"======================================================================


let mapleader=" " 

nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nnoremap <F2> :set nu! nu?<CR>
nnoremap <F3> :set list! list?<CR>
"nnoremap <F4> :set wrap! warp?<CR>

set pastetoggle=<F5>

au InsertLeave * set nopaste
nnoremap <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>

inoremap kj <Esc>
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>

map <Leader>sa ggVG"

nnoremap U <C-r>
nnoremap ' `
nnoremap ` '

nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
noremap <silent><leader>/ :nohls<CR>

vnoremap < <gv
vnoremap > >gv

map Y y$

nnoremap H ^
nnoremap L $

cmap w!! w !sudo tee >/dev/null %

cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" 找到当前文件所在目录,光标并跳转到左侧目录树
" nnoremap ff :NERDTreeFind<CR>
" nnoremap ff <C-l>
