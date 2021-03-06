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
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jwilm/i3-vim-focus'
Plugin 'tpope/vim-fugitive'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'tpope/vim-sensible'
Plugin 'easymotion/vim-easymotion'
Plugin 'pangloss/vim-javascript'
Plugin 'Konfekt/FastFold'

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

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

map <C-e> :NERDTreeToggle<CR>

" Keep temp files in fixed directory
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

" Airine status bar settings
let g:airline_theme='bubblegum'

" i3-vim-focus settings
map gwl :call Focus('right', 'l')<CR>
map gwh :call Focus('left', 'h')<CR>
map gwk :call Focus('up', 'k')<CR>
map gwj :call Focus('down', 'j')<CR>

" Indenting
set autoindent 
set smartindent
filetype plugin indent on

" vim markdown settings
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_github=1

" FastFold
let g:js_fold = 1

" vim-javascript
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END
