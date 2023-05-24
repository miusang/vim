" utf-8编码
set encoding=utf-8

let mapleader="`"
noremap <LEADER><CR> :nohlsearch<CR>
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

set number

" 不与vi兼容
set nocompatible

" 语法高亮
syntax on
hi Search term=standout ctermfg=0 ctermbg=3

"set list listchars=tab:>-,space:·

" tab键转化为空格
set expandtab

" tab转4个空格
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

set t_Co=256
" 当前行高亮
set cursorline
highlight Cursorline cterm=NONE ctermbg=237
"hi CursorLine term=bold cterm=bold guibg=Grey40
"hi CursorLine   cterm=NONE ctermbg=gray ctermfg=black
"highlight CursorLine   cterm=NONE ctermbg=240 ctermfg=NONE guibg=NONE guifg=NONE
"set cuc
"highlight CursorColumn cterm=NONE ctermbg=240 ctermfg=NONE guibg=NONE guifg=NONE

" 设置行宽
"set textwidth=120
"highlight ColorColumn ctermbg=gray
"set colorcolumn=120

" 禁止生成临时文件
set nobackup
set noswapfile

nmap J 5j
nmap K 5k

"open at last exit line
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif 

"let &t_SI .= "\<Esc>[5 q"
"let &t_EI .= "\<Esc>[0 q"

call plug#begin('')
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-scripts/c.vim'
    Plug 'kien/ctrlp.vim'
call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
