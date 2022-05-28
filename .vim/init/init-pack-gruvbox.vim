"======================================================================
"
" init-pack-gruvbox.vim - 配色主题插件配置
"
"======================================================================


autocmd vimenter * ++nested colorscheme gruvbox
set bg=dark

" 设置.vimrc如下: let g:gruvbox_(option) = '(value)'

" 启用粗体文本;默认:1
let g:gruvbox_bold=1
 
" 启用斜体文本;默认值:gui 1,术语0
let g:gruvbox_italic=1
 
" 启用透明背景;默认:0
let g:gruvbox_transparent_bg=0
 
" 启用带下划线的文本;默认:1
let g:gruvbox_underline=1
 
" 启用未完全卷曲的文本;默认:1
let g:gruvbox_undercurl=1
 
" 使用256色调色板（适合与gruvbox-palette shell脚本配对）;如果您对此不满意
" 请将选项值设置16为终端调色板的后备基色;有关详细信息,请参阅†;默认:256
let g:gruvbox_termcolors=28
 
" 可能的值是soft,medium和hard;默认:medium [已弃用]
" let g:gruvbox_contrast=medium
 
" 更改暗模式的对比度;覆盖g:gruvbox_contrast选项;可能的值是soft,medium和hard;默认:medium
let g:gruvbox_contrast_dark='hard'

" 更改灯光模式对比度;覆盖g:gruvbox_contrast选项;可能的值是soft,medium和hard;默认:medium
let g:gruvbox_contrast_light='hard'
 
" 突出显示搜索时更改光标背景;可能的值是gruvbox调色板中的任何一个;默认:orange
let g:gruvbox_hls_cursor='blue'
 
" 更改数字列的背景颜色;可能的值是gruvbox调色板中的任何一个;默认:none
" let g:gruvbox_number_column=''
 
" 更改标志列的背景颜色;可能的值是gruvbox调色板中的任何一个;默认:bg1
let g:gruvbox_sign_column='blue'

" 更改颜色列的背景色;可能的值是gruvbox调色板中的任何一个;默认:bg1
let g:gruvbox_color_column='blue'

" 更改垂直拆分背景颜色;可能的值是gruvbox调色板中的任何一个;默认:bg0
let g:gruvbox_vert_split='blue'

" 启用斜体注释;默认:1
let g:gruvbox_italicize_comments=1

" 对字符串启用斜体;默认:0
let g:gruvbox_italicize_strings=0

" 反转所选文本;默认:1
let g:gruvbox_invert_selection=1

" 反转GitGutter和Syntastic符号;有助于快速集中精力;默认:0
let g:gruvbox_invert_signs=0

" 反转缩进参考线;可以很好地配对,set list因此它将仅突出显示制表符而不是背景;默认:0
let g:gruvbox_invert_indent_guides=0

" 反转选项卡高亮显示,以提供可区分的选项卡填充;默认:0
let g:gruvbox_invert_tabline=0

" 突出显示的字符串默认为:0
let g:gruvbox_improved_strings=0

" 突出显示的警告默认为:0
let g:gruvbox_improved_warnings=0

" 将guisp着色委托给guifg或guibg;这对于终端vim很方便;对最初分配给的颜色使用guifg或
" 关注下划线和删除线的颜色;终端vim不能为下划线和删除线着色,只有gVim可以;此选项指示vim着色或作为后备
" guibgguispguispguifgguibg 默认: 'NONE' 可能的值:'fg','bg'
let g:gruvbox_guisp_fallback='fg'
