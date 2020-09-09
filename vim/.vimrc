" plugs {{{
call plug#begin('D:\Program Files (x86)\Vim\vim81\plugged')
Plug 'liuchengxu/space-vim-theme'
call plug#end()

" }}}


" Basic {{{
" vim 文件折叠方式为 marker
augroup ft_vim
    au!
    au FileType vim setlocal foldmethod=marker
augroup END

set nocompatible
set noundofile
set nobackup
set noswapfile
set history=1024
set autochdir
set whichwrap=b,s,<,>,[,]
set backspace=indent,eol,start whichwrap+=<,>,[,]
set clipboard+=unnamed
set winaltkeys=no
set nobomb
set vb t_vb =
set showmatch
set showcmd

set ignorecase
set incsearch
set nohls
set nowrapscan

set number
set relativenumber
set cursorline

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" }}}


" GUI {{{
colorscheme space_vim_theme

" 窗口大小
" set lines=35 columns=140
" 分割出来的窗口位于当前窗口下边/右边
" set splitbelow
" set splitright
"不显示工具/菜单栏
set guioptions-=T
"set guioptions-=m
"set guioptions-=L
"set guioptions-=r
"set guioptions-=b
" 使用内置 tab 样式而不是 gui
set guioptions-=e
set nolist
" set listchars=tab:?\ ,eol:?,trail:·,extends:>,precedes:<
set guifont=Source\ Code\ Pro:h12

" }}}
