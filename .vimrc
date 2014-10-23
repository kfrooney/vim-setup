" Load plugins from the ~/vimfiles/bundle directory
execute pathogen#infect()
syntax on
" Behave differently based on file extension
filetype plugin indent on

" Get all of the nifty VIM features
set nocompatible

" Set the status bar to always be on (for airline plugin)
set laststatus=2

" show the mode you're in
set showmode

" show operator-pending commands
set showcmd

" buffers can be hidden when abandoned
set hidden

" expand history
set history=1000

" show line numbers
set number

" highlight current line
set cursorline

" automatically update files edited externally
set autoread

" ignore case when searching unless a cap is typed
set ignorecase
set smartcase

" present me a list of autocompletes in commands
set wildmenu
set wildmode=list:longest,full

" highlight search results and highlight search terms as you type them in
set hlsearch
set incsearch

" show matching brackets
set showmatch

" get rid of file cruft
set nobackup
set nowb
set noswapfile

set tags=./tags;/
" enable syntax highlighting
syntax enable

" expanded matching for if/else, xml tags, etc.
runtime macros/matchit.vim

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

" Take me to your leader
let mapleader=" "

" make yank consistent with the rest of its siblings... yank to end of line
nmap Y y$

" I always open a newline and go to normal mode so let's map that
nnoremap <Enter> o<Esc>

" Add shift to the above to move the cursor back
nnoremap <S-Enter> o<Esc>k

" toggle the annoying-ness that is hlsearch
nnoremap \ :set hlsearch!<Enter>

" CtrlP plugin settings
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_custom_ignore = '\v\.class$'

" macro for trimming xsd elements off of xPressions schema for FE's and DO's
" goes to beginning of next line, and deletes all but the first double quoted
" string
let @x='j0df"0f"D'

set encoding=utf-8
" Set the font to a nice and big Consolas, modified for Powerline
set guifont=Consolas:h12
