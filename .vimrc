set nocompatible              " be iMproved, required
filetype off                  " required
set backspace=indent,eol,start
set hlsearch
set t_Co=256

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')


Plug 'bling/vim-airline'
" Plug 'pangloss/vim-javascript'
Plug 'Shougo/unite.vim'

" Plug 'Valloric/YouCompleteMe'

" Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'

Plug 'wincent/command-t'

" Plug 'junegunn/seoul256.vim'

Plug 'nanotech/jellybeans.vim'

" Initialize plugin system
call plug#end()

color jellybeans

" All of your Plugins must be added before the following line
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
" colorscheme jellybeans 

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
set tabstop=4

" CtrlP ------------------------------------------------------
" let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']

if &term =~ '256color'
  " disable Background Color Erase (BCE) so that color schemes
  " render properly when inside 256-color tmux and GNU screen.
  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

