set nocompatible              " be iMproved, required
filetype off                  " required
set backspace=indent,eol,start
set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
" Plugin 'pangloss/vim-javascript'
Plugin 'Shougo/unite.vim'

" Plugin 'Valloric/YouCompleteMe'

" Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

Plugin 'wincent/command-t'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

set expandtab
set sw=2
set sts=2
set smarttab
set autoindent
set showmatch
set nolist " Display unprintable characters f12 - switches
set nowrap
set number 

set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

set encoding=utf-8
set fileencoding=utf-8

" Colorscheme >>>---------------------------------------------
syntax on
" set background=dark "I'm not if it should be set at all
colorscheme jellybeans 

" NERDTree ---------------------------------------------------
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" scrooloose/syntastic ---------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_php_phpcs_args='--tab-width=0'
set tabstop=8

" CtrlP ------------------------------------------------------
" let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']



