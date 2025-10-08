:syntax on
:filetype plugin on
":set hlsearch
:set ignorecase
:set number
:set incsearch
:set noswapfile
:set spell spelllang=en_us
:set nospell 
:set wildmenu

:nnoremap + $
:nnoremap ´ +
:nnoremap ¨ -
:nnoremap j h
:nnoremap k j
:nnoremap l k
:nnoremap ö l

:set tabstop=4
:set shiftwidth=4
:set softtabstop=4

":let g:gitgutter_async=0
":set signcolumn="yes"
":FanfingTasticAlias b ()
 

" Git gutter colors
":let g:gitgutter_override_sign_column_highlight = 0
":highlight clear SignColumn
:highlight GitGutterAdd ctermfg=2
:highlight GitGutterChange ctermfg=3
:highlight GitGutterDelete ctermfg=1
:highlight GitGutterChangeDelete ctermfg=4

let g:netrw_banner=0		" disable annoying banner
let g:netrw_browse_split=4	" open in prior window
let g:netrw_altv=1			" open splits to the right
let g:netrw_liststyle=3		" tree view 

