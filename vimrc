" utf-8编码
set encoding=utf-8 fileencodings=utf-8

" leader键
let mapleader="`"

" 高亮显示搜索内容
set hlsearch
" 输入关键字高亮显示
set incsearch
" 搜索时不区分大小写
set ignorecase
set smartcase

" 显示行号
set number
set relativenumber

" 不与vi兼容
set nocompatible

" 语法高亮
syntax on

" tab键转化为空格
set expandtab
" tab转4个空格
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

" 退格键设置
set backspace=indent,eol,start

" 禁止生成临时文件
set nobackup
set noswapfile
set nowritebackup
set noundofile

" 开启256色
set t_Co=256

" 当前行高亮
set cursorline
highlight Cursorline cterm=NONE ctermbg=237

" 允许加载文件类型插件
filetype plugin on

" 打开上次位置
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif 

"let &t_SI .= "\<Esc>[5 q"
"let &t_EI .= "\<Esc>[0 q"

" 通用按键映射
nmap J 5j
nmap K 5k
nmap <C-j> :resize +1<CR>
nmap <C-k> :resize +1<CR>
nmap <C-h> :vertical resize -1<CR>
nmap <C-l> :vertical resize +1<CR>
nmap <leader>v "*p
vmap <leader>c "+y
nmap <LEADER><CR> :nohlsearch<CR>

call plug#begin('~/.vim/plug')
    Plug 'preservim/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'preservim/tagbar'
    Plug 'vim-airline/vim-airline'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
call plug#end()

" NerdTree 设置
nmap <leader>n :NERDTreeFocus<CR>
nmap <C-n> :NERDTreeToggle<CR>

" NerdCommenter 设置
let g:NERDSpaceDelims = 1

" TagBar 设置
nmap <C-t> :TagbarToggle<CR>

" fzf设置
nmap <silent> <C-f> :Files<CR>
nmap <silent> <C-b> :Buffers<CR>
