"文件编码
"set fileencodings=utf-8  "vim写入文件时的编码 
"set termencoding=utf-8 "输出终端使用的编码
"set encoding=utf-8 "缓存文本、寄存器、vim脚本文件

set nocompatible
set number "set nu 行号
set showmatch "显示括号匹配
set relativenumber "显示相对行号
"set cursorline "高亮当前行
syntax enable
syntax on
set showcmd "显示正在输入内容
set clipboard+=unnamed "共享系统剪切板
set noerrorbells "关闭bb声
set vb t_vb= "取消捕获错误时屏幕闪烁或鸣叫
set noswapfile "关闭swap文件
"set autoread "文本改变,自动更新
set nobackup "关闭备份
set scrolloff=5

"自动缩进
set expandtab "tab替换空格
set tabstop=4 "tab替换为4空格
set shiftwidth=4 "自动缩进为4空格
set cindent
set autoindent "继承前一行的缩进方式
set smartindent 

"文本查找
set ignorecase
set smartcase "如果包含大写字母，则切换到大小写敏感查找
set incsearch "
set hlsearch "set hsl

"ESC键映射
inoremap jk <Esc>

noremap Q :q<CR>
"Act like D and C
nnoremap Y y$
noremap U 5k
noremap E 5j
"设置按屏幕行移动
noremap j gj
noremap k gk
"查找时定位在屏幕中间
noremap n nzz
noremap N Nzz

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"设置leader键
let mapleader=','
"设置保存文件快捷键
inoremap <leader>w <Esc>:w<Cr>
noremap <leader>w :w<cr>
"NERDTree
map <C-n> :NERDTreeToggle<CR>
"auto-pairs
"g:AutoPairsMapCR=1
"g:AutoPairsMapSpace=1

"代码折叠
"set foldenable "打开代码折叠
"set foldmethod=syntax "syntax按c/c++语法折叠{},indent按缩进折叠
"set foldmethod=indent



"vim-plug插件管理
call plug#begin('/c/Users/Administrator/.vim/plugged')
Plug 'yegappan/mru'
Plug 'mhinz/vim-startify' "起始页
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdtree' "目录树
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs' "括号自动匹配
"Plug 'junegunn/vim-easy-align'

"airine插件
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes'

"markdown插件,tabular必须在markdown之前
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'voldikss/vim-floaterm'
call plug#end()

