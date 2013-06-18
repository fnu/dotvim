"============================================================================================
"
"         FileName: .vimrc
"
"      Descriptions:
"
"          Version: 1.0
"          Created: 2013-05-01 13:11:27
"         Revision: (none)
"
"           Author: xutao(mark), butbueatiful@gmail.com
"          Company: wanwei-tech
"
"============================================================================================
 
"==============================================================
"   => General 
"==============================================================
set nocompatible            " 关闭兼容模式
set history=500             " 命令显示历史

let g:mapleader = ","       " 全局设置用,代替\

set background=dark
set t_Co=256                " 设置vim模式为256色
colorscheme desert

set scrolloff=3             "上下滚动隔3行

set expandtab  
set smarttab  
set shiftwidth=4  
set tabstop=4 

set backspace=indent,eol,start " 退格键和方向键可以换行
set whichwrap+=<,>,h,l      

set nu                      " 显示行号
set showcmd                 " 显示当前的模式,比如在v模式下选择的行数

set hlsearch                " 开启高亮显示结果
set wrapscan                " 搜索到文件两端时重新搜索
set incsearch               " 开启实时搜索功能
set ignorecase              " 搜索时忽略大小写
set smartcase               " 如果搜索模式包含大写字符，不使用 'ignorecase' 选项
set magic                   " 增强行正则

set cpoptions+=$            " cw显示$
set textwidth=78

set laststatus=2            " 开启状态栏信息
set cmdheight=1             " 命令行的高度，默认为1
set ruler                   " 右下角显示光标位置的状态行

set vb t_vb=                " 关闭提示音
set hidden                  " 允许在有未保存的修改时切换缓冲区

set autoindent              " 继承前一行的缩进方式
set cindent                 " c/c++样式缩进
set smartindent             " 为c/c++程序提供自动缩进

syntax enable               " 打开语法高亮
syntax on                   " 开启文件类型侦测

set nobackup                " 设置无备份文件
set nowritebackup

set autoread                " 当文件在外部被修改时，自动重新读取

set completeopt=longest,menu    " 关掉智能补全时的预览窗口
set wildmenu                    " 增强模式中的命令行自动完成操作
"set wildmode=longest,list,full " tab键显示文件列表

set tags=tags,~/.systags;
"set autochdir              " 当前目录为工作目录

"set nowrap                 " 设置不自动换行
"set foldenable             " 开始折叠              
"set foldmethod=syntax      " 设置语法折叠
"set foldcolumn=0           " 设置折叠区域的宽度
"setlocal foldlevel=1       " 设置折叠层数为
"set foldclose=all          " 设置为自动关闭折叠                           
"set fo=croq                " c格式化代码
"au BufWinLeave * silent! mkview "make vim save view (state) (folds, cursor, etc)
"au BufWinEnter * silent! loadview "make vim load view (state) (folds, cursor, etc))

"set list                   " 显示Tab符，使用一高亮竖线代替
set listchars=tab:>-,trail:-

"set iskeyword+=_,$,@,%,#,- "有这些符号的单词不要被换行分割 
"set shortmess=atI          "不显启动时的信息
"set cursorline             " 突出显示当前行
"set showmatch              " 显示括号配对情况

""""""""""""""""""""""""""""""""""""""""
"
"   Shortcuts
"
""""""""""""""""""""""""""""""""""""""""
" Cope
"map ,cc :botright cope<cr>
map <leader>cn :cn<CR>
map <leader>cp :cp<CR>
map <leader>cq :ccl<CR>

" Quit quickly 
map <leader>f :q!<CR>
map <leader>z :x<CR>

" Quick escape
imap JJ <ESC>
imap jj <ESC>

" Read binary
map <leader>rb :%!xxd<CR>
map <leader>rnb :%!xxd -r<CR>

" Buffers
map <Tab> :bn<CR>
map <s-Tab> :bp<CR>
map <leader>bd :bd<CR>

map <leader>pp :setlocal paste!<CR>    " 开启关闭粘贴
map <leader>ss :setlocal spell!<CR>    " 开启关闭拼写检查

map <leader>v :vsp <c-r>=expand("%:p:h")<cr>/

" bash map
nmap <silent> <leader>cd :lcd %:h<CR>
nmap <silent> <leader>md :!mkdir -p %:p:h<CR>
map <leader>g :!ctags --fields=+iaS --extra=+q *.c ../include/*.h<CR> " --c++-kinds=+p

map <leader>ax :!chmod a+x %<CR><CR>

""""""" else map """"""""""""""
nnoremap <leader>1 yypVr/

map <silent> <leader><cr> :noh<cr>

" Treat long lines as break lines (useful when moving around in them),
" conflict snipmate
"map j gj
"map k gk

nnoremap ; :
vnoremap ; :

" 在多个窗口间移动
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
inoremap <C-h> <Esc><C-W>h
inoremap <C-j> <Esc><C-W>j
inoremap <C-k> <Esc><C-W>k
inoremap <C-l> <Esc><C-W>l

""""""""""""""""""""""""""""""""""""""""
"
"   Ignore these filenames during enhanced command line completion.  
"
""""""""""""""""""""""""""""""""""""""""
set wildignore+=*.luac              " Lua byte code  
set wildignore+=*.pyc               " Python byte code  
set wildignore+=*.spl               " compiled spelling word lists  
set wildignore+=*.sw?               " Vim swap files  
set wildignore+=*.aux,*.out,*.toc   " LaTeX intermediate files  
set wildignore+=*.jpg,*.bmp,*.gif   " binary images  
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files  

""""""""""""""""""""""""""""""""""""""""
"
"   note-taking
"
""""""""""""""""""""""""""""""""""""""""
"if has("autocmd")
    "autocmd bufwritepost .vimrc source $MYVIMRC
"endif
nmap <leader>e :tabedit $MYVIMRC<CR>

" with Vim helptags and git, store things 
" $VIMRUNTIME/doc
" NOTE: NO ":" in the following line, stange but works
autocmd FileType help set ma 
autocmd FileType help set noreadonly
autocmd BufWritePost ~/.vim/doc/*:helptags ~/.vim/doc

"==============================================================
"   => platform relative 
"==============================================================
" 判断操作系统  
if (has("win32") || has("win64") || has("win32unix"))  
    let g:isWin = 1  
else  
    let g:isWin = 0  
endif  
  
" 判断是终端还是gvim  
if has("gui_running")  
    let g:isGUI = 1  
else  
    let g:isGUI = 0  
endif

""""""""""""""""""""""""""""""""""""""""
"
"   for gui
"
""""""""""""""""""""""""""""""""""""""""
if has(g:isGUI)
    if has(g:isWin)
        set guifont=Courier\ New:h12

        "激活菜单栏
        noremap <M-Space> :simalt ~<CR> 
        inoremap <M-Space> <C-O>:simalt ~<CR>
        cnoremap <M-Space> <C-C>:simalt ~<CR>

        "解决菜单栏乱码
        source $VIMRUNTIME/delmenu.vim
        source $VIMRUNTIME/menu.vim
    else
        set guifont=Courier_New:h12
    endif

    colorscheme ubloh
    set novisualbell    " 不要闪烁

    set guioptions=ce
    set antialias
    set linespace=2

    au GUIEnter * simalt ~x			" 窗口启动时自动最大化
    set guioptions-=m				" 隐藏菜单栏
    set guioptions-=T				" 隐藏工具栏
    set guioptions-=L				" 隐藏左侧滚动条
    set guioptions-=r				" 隐藏右侧滚动条
    set guioptions-=b				" 隐藏底部滚动条
    set showtabline=0				" 隐藏Tab栏

"    set co=130
"    set lines=100

    " 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
    set mouse=a              " 在所有模式下都允许使用鼠标，还可以是n,v,i,c等
    set selection=exclusive
    set selectmode=mouse,key " 控制窗口大小
endif

"""""""""""""""""""""""""""""""""""""""""
"   Win平台下窗口全屏组件 gvimfullscreen.dll
"   
"   Alt + Enter 全屏切换
"   Shift + t 降低窗口透明度
"   Shift + y 加大窗口透明度
"   Shift + r 切换Vim是否总在最前面显示
"""""""""""""""""""""""""""""""""""""""""
if has('gui_running') && has('gui_win32') && has('libcall')
    let g:MyVimLib = 'gvimfullscreen.dll'
    function! ToggleFullScreen()
        "let s:IsFullScreen = libcallnr("gvimfullscreen.dll", 'ToggleFullScreen', 0)
        "let s:IsFullScreen = libcallnr("gvimfullscreen.dll", 'ToggleFullScreen', 27 + 29*256 + 30*256*256)
        call libcall(g:MyVimLib, 'ToggleFullScreen', 27 + 29*256 + 30*256*256)
    endfunction

    let g:VimAlpha = 245
    function! SetAlpha(alpha)
        let g:VimAlpha = g:VimAlpha + a:alpha
        if g:VimAlpha < 180
            let g:VimAlpha = 180
        endif

        if g:VimAlpha > 255
            let g:VimAlpha = 255
        endif

        call libcall(g:MyVimLib, 'SetAlpha', g:VimAlpha)
    endfunction

    let g:VimTopMost = 0
    function! SwitchVimTopMostMode()
        if g:VimTopMost == 0
            let g:VimTopMost = 1
        else
            let g:VimTopMost = 0
        endif

        call libcall(g:MyVimLib, 'EnableTopMost', g:VimTopMost)
    endfunction

    "映射 Alt+Enter 切换全屏vim
    map <a-enter> <esc>:call ToggleFullScreen()<cr>

    "切换Vim是否在最前面显示
    nmap <s-r> <esc>:call SwitchVimTopMostMode()<cr>

    "增加Vim窗体的不透明度
    nmap <s-t> <esc>:call SetAlpha(10)<cr>

    "增加Vim窗体的透明度
    nmap <s-y> <esc>:call SetAlpha(-10)<cr>

    "Vim启动的时候自动调用InitVim 以去除Vim的白色边框
    autocmd GUIEnter * call libcallnr(g:MyVimLib, 'InitVim', 0)

    " 默认设置透明
    autocmd GUIEnter * call libcallnr(g:MyVimLib, 'SetAlpha', g:VimAlpha)
endif

""""""""""""""""""""""""""""""""""""""""
"
"   Solve the Chinese garbled
"
""""""""""""""""""""""""""""""""""""""""
if (g:isWin)  
    let &termencoding=&encoding " 通常win下的encoding为cp936  
    set fileencodings=utf8,cp936,ucs-bom,latin1  
else  
    set encoding=utf8  
    "set termencoding=utf-8
    set fileencodings=utf8,gb2312,gb18030,ucs-bom,latin1  
    set fileencodings=ucs-bom,utf-8,gbk,big5
endif  

"==============================================================
"   => plugin
"==============================================================

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"   pathgoen
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
runtime bundle/vim-pathogen/autoload/pathogen.vim
filetype off
call pathogen#infect()
filetype on
filetype plugin on              " 针对不同的文件类型加载对应的插件
filetype plugin indent on
call pathogen#infect()
call pathogen#helptags()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"   nerdcommenter
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 空格键添加去除注释
"map <space> <leader>ci
map <space> <plug>NERDCommenterInvert
"let NERDCreateDefaultMappings=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"   tabular
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>a& :Tabularize /&<CR>
vmap <Leader>a& :Tabularize /&<CR>
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a:: :Tabularize /:\zs<CR>
vmap <Leader>a:: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,<CR>
vmap <Leader>a, :Tabularize /,<CR>
nmap <Leader>a<Space> :Tabularize / /<CR>
vmap <Leader>a<Space> :Tabularize / /<CR>
nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap <Leader>a<Bar> :Tabularize /<Bar><CR>

inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
 
function! s:align()
    let p = '^\s*|\s.*\s|\s*$'
    if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
        let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
        let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
        Tabularize/|/l1
        normal! 0
        call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
    endif
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"   Fugitive.vim
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>

""""""""""""""""""""""""""""""""""""""""
"
"   ctrlp
"
""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = ',,'
let g:ctrlp_open_multiple_files = 'v'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git)$',
  \ 'file': '\v\.(log|jpg|png|jpeg)$',
  \ }

""""""""""""""""""""""""""""""""""""""""
"
"   Doxygen
"
""""""""""""""""""""""""""""""""""""""""
" highlight the doxygen comments
" used with DoxygenToolkit.vim
let g:load_doxygen_syntax=1
set syntax=cpp.doxygen

""""""""""""""""""""""""""""""""""""""""
"
"   DoxygenToolkit
"
""""""""""""""""""""""""""""""""""""""""
let g:DoxygenToolkit_authorName="xutao butbueatiful@gmail.com"
let s:licenseTag = "Copyright(C)\<enter>"
let s:licenseTag = s:licenseTag . "For free\<enter>"
let s:licenseTag = s:licenseTag . "All right reserved"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
nmap dx :Dox<CR>
nmap da :DoxAut<CR>
nmap dl :DoxLic<CR>

""""""""""""""""""""""""""""""""""""""""
"
"   delimitmate
"
""""""""""""""""""""""""""""""""""""""""
au FileType * let b:delimitMate_autoclose = 1

" If using html auto complete (complete closing tag)
au FileType xml,html,xhtml let b:delimitMate_matchpairs ="(:),[:],{:}"

""""""""""""""""""""""""""""""""""""""""
"
"   tagbar
"
""""""""""""""""""""""""""""""""""""""""
nmap <silent> ,t :TagbarToggle<CR>
let g:tagbar_ctags_bin = 'ctags'
let g:tagbar_width = 36

""""""""""""""""""""""""""""""""""""""""
"
"   authorinfo.vim
"
""""""""""""""""""""""""""""""""""""""""
let g:vimrc_author='xutao'
let g:vimrc_englishname='mark'
let g:vimrc_email='butbueatiful@gmail.com'
let g:vimrc_homepage='butbueatiful.github.com'
let g:vimrc_copyright='Copyright (c) 2013, xutao'
let g:vimrc_company='wanwei-tech'
map <F5> :AuthorInfoDetect<cr> 

""""""""""""""""""""""""""""""""""""""""
"
"   NERDTree
"
""""""""""""""""""""""""""""""""""""""""
nmap ,n :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1
let NERDTreeWinpos="left"
let NERDTreeQuitOnOpen=1            " 打开文件后, 关闭NERDTrre窗口
let NERDTreeWinSize=31              " 设置窗口大小
"let NERDTreeHighlightCursorline=1  " 高亮NERDTrre窗口的当前行

""""""""""""""""""""""""""""""""""""""""
"
"   vim-powerline 
"
"""""""""""""""""""""""""""""""""""""""""
let g:Powerline_symbols='unicode'

""""""""""""""""""""""""""""""""""""""""
"
"   vim-markdown
"
"""""""""""""""""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled=1

""""""""""""""""""""""""""""""""""""""""
"
"   omnicppcomplete
"
"""""""""""""""""""""""""""""""""""""""""
set completeopt=menu,menuone
let OmniCpp_MayCompleteDot = 1      " autocomplete with .
let OmniCpp_MayCompleteArrow = 1    " autocomplete with ->
let OmniCpp_MayCompleteScope = 1    " autocomplete with ::
let OmniCpp_SelectFirstItem = 2     " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2     " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype in popup window
let OmniCpp_GlobalScopeSearch=1
let OmniCpp_DisplayMode=1
let OmniCpp_DefaultNamespaces=["std"]

""""""""""""""""""""""""""""""""""""""""
"
"   QuickFix
"
""""""""""""""""""""""""""""""""""""""""
" QuickFix Window, which is borrowed from c9s
command -bang -nargs=? QFix call QFixToggle(<bang>0)

function! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
    unlet g:qfix_win
  else
    copen 10
    let g:qfix_win=bufnr("$")
  endif
endfunction

nnoremap <leader>q :QFix<CR>

autocmd BufWinEnter quickfix let g:qfix_win = bufnr("$")

""""""""""""""""""""""""""""""""""""""""
"
"   sdcv
"
""""""""""""""""""""""""""""""""""""""""
nmap <C-k> : !sdcv <C-R>=expand("<cword>")<CR><CR>

""""""""""""""""""""""""""""""""""""""""
"
"   QT-doc
"
""""""""""""""""""""""""""""""""""""""""
map ,k :!qref <cword><ENTER>

""""""""""""""""""""""""""""""""""""""""
"
"   dictionary
"
""""""""""""""""""""""""""""""""""""""""
" For i_CTRL_X_K 
set dictionary+=~/.vim/dict/simple

""""""""""""""""""""""""""""""""""""""""
"
"   misc
"
""""""""""""""""""""""""""""""""""""""""
iab frm from 
set fillchars=""                "在被分割的窗口间不显示

":nmap <Space> <PageDown>       "空格翻页
"au InsertLeave *.c write       "每次退出插入模式时自动保存

" 重启后撤销历史可用 persistent undo 需要vim7.3
if v:version > 702
    set undofile
    set undodir=$HOME/.undodir
    set undolevels=1000 "maximum number of changes that can be undone
endif

"记得上次退出时的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
