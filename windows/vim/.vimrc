set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-repeat'
Plugin 'dahu/vim-fanfingtastic'
Plugin 'preservim/nerdtree'
call vundle#end()
filetype plugin on



:let mapleader = " "
:set number
:set rnu
:syntax on
:set ignorecase
:set incsearch
:set noswapfile
:set spell spelllang=en_us
:set nospell

:nnoremap + $
:nnoremap j h
:nnoremap k j
:nnoremap l k
:nnoremap ö l
:imap ^_ <del>

:set tabstop=4
:set shiftwidth=4
:set softtabstop=4

:set termencoding=utf8
:set breakindent
:set smartindent
":set wrapmargin=2

:set guicursor= ""

:set scrolloff=8
:set colorcolumn="80"

:nnoremap <C-d> <C-d>zz
:nnoremap <C-u> <C-u>zz

:silent! nmap <C-t> :NERDTreeToggle<CR>

:nnoremap J J
:nnoremap n nzzzv
:nnoremap N Nzzzv

:let &t_ti.="\e[1 q"
:let &t_SI.="\e[5 q"
:let &t_EI.="\e[1 q"
:let &t_te.="\e[0 q"

:highlight ColorColumn ctermbg=magenta
:call matchadd('ColorColumn', '\%73v', 100)

:nnoremap <leader>d "8d
:nnoremap <leader>p "8p
:nnoremap <leader>y "8y
:nnoremap <leader>x "8x

:nnoremap <C-j> <C-w>h
:nnoremap <C-k> <C-w>j
:nnoremap <C-l> <C-w>k
:nnoremap <C-ö> <C-w>l

:nnoremap \| <C-w>v
:nnoremap _ <C-w>s
