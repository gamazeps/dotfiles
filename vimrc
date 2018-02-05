set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Bundle 'jistr/vim-nerdtree-tabs'
" rust syntax
Plugin 'rust-lang/rust.vim'
" toml syntax
Plugin 'cespare/vim-toml'
" Scala syntax
Plugin 'derekwyatt/vim-scala'
" Better whitespace
Plugin 'ntpeters/vim-better-whitespace'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Solarized colors
syntax enable
set background=dark
" colorscheme solarized

" Activates 256 colors.
set t_Co=256

" Puts number.
set number

" The holy space macro
map <space> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" 4 spaces indentation
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

"" 100 characters per line
set textwidth=100

let g:nerdtree_tabs_open_on_console_startup=1

" Needed for deleting in iterm2 according to
" https://apple.stackexchange.com/questions/173275/delete-key-doesnt-work-in-vim-on-iterm2
set backspace=indent,eol,start
