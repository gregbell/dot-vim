" In General
set nocompatible
set hidden
set visualbell

" Swap locations
set backupdir=~/.vim_backup
set directory=~/.vim_backup

" Hide scrollbars
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" Always hide the toolbar
set guioptions-=T

" Font Stuff
set guifont=Bitstream\ Vera\ Sans\ Mono:h12
set linespace=2

" Always show line numbers
set number

" Always show the status line
set ls=2

" Keep 3 lines when scrolling
set scrolloff=3

" Highlight searches
set hlsearch
set incsearch
set ignorecase
set cursorline
set autoindent
set smartindent
set nowrap

" Wildmenu
set wildmenu
set wildmode=list:longest,full

" Tabs
set tabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab
set nosmarttab

filetype plugin indent on " Enable filetype-specific indenting and plugins
filetype plugin on

" Tabs for C code
au FileType objc setlocal shiftwidth=4 softtabstop=4
au FileType objj setlocal shiftwidth=4 softtabstop=4

" ActionScript & MXML
au BufNewFile,BufRead *.mxml set filetype=mxml
au BufNewFile,BufRead *.as set filetype=actionscript

if &t_Co > 2 || has("gui_running")
  if has("terminfo")
    set t_Co=16
    set t_AB=[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm
    set t_AF=[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm
  else
    set t_Co=16
    set t_Sf=[3%dm
    set t_Sb=[4%dm
  endif
  " Set the color theme
  colorscheme molokai
  syntax on
endif

" Set the status line
set statusline=%t\ %M\ %y\ [%l/%L]

" Only show 10 files max
let g:CommandTMaxHeight = 10

" Sort NERDTree by Alpha
let NERDTreeSortOrder = []

" Quick cycling between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Some Quick Commands
map <Leader>b :b#<CR>
map <Leader>, :NERDTreeToggle<CR>
map <Leader>f :Rfind 
map <Leader>vf :RVfind 
map <Leader>sf :RSfind 
map <Leader>s :! 
map <Leader>l :TlistToggle<CR>

" Override the <Leader>t commands in the Align plugin
" They are now all available through <Leader>T instead
map <Leader>T| <Plug>AM_t|
map <Leader>T#	 <Plug>AM_t#
map <Leader>T,	 <Plug>AM_t,
map <Leader>T:	 <Plug>AM_t:
map <Leader>T;	 <Plug>AM_t;
map <Leader>T<	 <Plug>AM_t<
map <Leader>T=	 <Plug>AM_t=
map <Leader>Ts,	 <Plug>AM_ts,
map <Leader>Ts:	 <Plug>AM_ts:
map <Leader>Ts;	 <Plug>AM_ts;
map <Leader>Ts<	 <Plug>AM_ts<
map <Leader>Ts=	 <Plug>AM_ts=
map <Leader>w=	 <Plug>AM_w=
map <Leader>T?	 <Plug>AM_t?
map <Leader>T~	 <Plug>AM_t~
map <Leader>T@	 <Plug>AM_t@
map <Leader>m=	 <Plug>AM_m=
map <Leader>tab	 <Plug>AM_tab
map <Leader>Tml	 <Plug>AM_tml
map <Leader>Tsp	 <Plug>AM_tsp
map <Leader>Tsq	 <Plug>AM_tsq
map <Leader>Tt	 <Plug>AM_tt

let mapleader = ","

" Now load any machine specific config
if filereadable('~/.vim/vimrc-local')
  source ~/.vim/vimrc-local
endif

" Load Pathogen
silent! call pathogen#runtime_append_all_bundles()
