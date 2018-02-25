set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

set rtp+=/usr/local/opt/fzf
Plugin 'junegunn/fzf'

Plugin 'tpope/vim-commentary'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"basic vim settings
let mapleader = ","
set paste
set tabstop=4
set shiftwidth=4
set softtabstop=4

set smarttab

set expandtab

:set wrap
:set linebreak
:set nolist

set ruler
noremap <Leader>w :update<CR>

set relativenumber

syntax enable

if ! has("gui_running") 
    set t_Co=256 
endif 
" feel free to choose :set background=light for a different style 
set background=dark 
colors peaksea 

"change quick save to ',w'
noremap <Leader>w :update<CR>

noremap <C-P> :FZF<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Drop Syntastic settings at the end of the config file "
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

map <C-e> :NERDTreeToggle<CR>

" Indenting
set autoindent 
filetype plugin indent on

