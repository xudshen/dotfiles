set nocompatible              " be improved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" theme
Plugin 'zenorocha/dracula-theme'

" status line
Plugin 'bling/vim-airline'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

" fuzzy search
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/unite-outline'
Plugin 'Shougo/unite-help'
Plugin 'Shougo/unite-session'

" snippets
"Plugin 'honza/vim-snippets'

" marks
"Plugin 'airblade/vim-gitgutter'

" comments
Plugin 'scrooloose/nerdcommenter'

" file browsing
Plugin 'scrooloose/nerdtree'
"Plugin 'kien/ctrlp.vim'

" shell
"Plugin 'thinca/vim-quickrun'
"Plugin 'Shougo/vimshell'
"Plugin 'tpope/vim-dispatch'

" tags
Plugin 'majutsushi/tagbar'

" motions
Plugin 'Lokaltog/vim-easymotion'

" syntax
Plugin 'scrooloose/syntastic'

" text object
Plugin 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'nathanaelkane/vim-indent-guides'

" git
Plugin 'tpope/vim-fugitive'

" language
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-markdown'
Plugin 'fatih/vim-go'
Plugin 'pangloss/vim-javascript'


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




"################################
"         Custom                "
"################################
syntax on
set number
set paste

" Map leader and localleader key to comma
let mapleader = ","
let g:mapleader = ","
let maplocalleader = ","
let g:maplocalleader = ","
