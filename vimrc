" utf-8编码
set encoding=utf-8

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

" 开启256色
set t_Co=256

" 当前行高亮
set cursorline
highlight Cursorline cterm=NONE ctermbg=237

" 打开上次位置
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif 

"let &t_SI .= "\<Esc>[5 q"
"let &t_EI .= "\<Esc>[0 q"

call plug#begin('~/.vim/plug')
    Plug 'preservim/nerdtree'
    Plug 'preservim/tagbar'
    Plug 'vim-airline/vim-airline'
    Plug 'kien/ctrlp.vim'
call plug#end()

" 按键映射
nmap J 5j
nmap K 5k
nmap <C-Up> :resize +1<CR>
nmap <C-Down> :resize +1<CR>
nmap <C-Left> :vertical resize -1<CR>
nmap <C-right> :vertical resize +1<CR>
noremap <LEADER><CR> :nohlsearch<CR>

" NerdTree 按键
nmap <leader>n :NERDTreeFocus<CR>
nmap <leader>t :NERDTreeToggle<CR>

" TagBar 按键
nmap <C-t> :TagbarToggle<CR>
