"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sections:
"   -> General
"   -> Search 
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set how many line of history VIM has to remember
set history=500

" In case of VIM not starting it initializations
set nocompatible

" Turn on syntax highlighting
syntax on

" Disable the default VIM startup message
set shortmess+=I

" Show line numbers
set number

" Enable relavtive line numbering mode
set relativenumber

" Always show the status line at the bottom
set laststatus=2

" Make backspace behave more reasonably
set backspace=indent,eol,start

 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable hide unsaved buffer
set hidden

" Make search more smart, which only becomes case-sensitive if it contains any capital letters
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting until Enter is pressed
set incsearch
