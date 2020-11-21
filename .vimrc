"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author: Vincen Wang
" Date: July 5th, 2020

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SECTIONS:
"   -> General
"   -> Key mappings
"   -> User interface
"   -> Text rendering
"   -> Search 
"   -> Some interesting things
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set how many line of history VIM has to remember
set history=500

" In case of VIM not starting it initializations
set nocompatible

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

" Disable audible bell
set noerrorbells visualbell t_vb=

" Enable hide unsaved buffer
set hidden

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mappings

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
map <C-n> :NERDTreeToggle<CR>
" Auto close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User interface

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable mouse support
set mouse+=a

" Apply the indentation of the current line to the next line
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4

set autoindent
set smartindent
set wrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text rendering
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn on syntax highlighting
syntax on

" Avoid wrapping a line in the middle of a word
set linebreak

" Set the number of screen columns to keep to the left and right of the cursor
set sidescrolloff=5

" Enable line wrapping
set wrap

 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make search more smart, which only becomes case-sensitive if it contains any capital letters
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting until Enter is pressed
set incsearch

" Enable search highlighting
set hlsearch


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Some interesting things

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Unbind some useless/annoying default key bindings
nmap Q <Nop> " 'Q' in normal mode enters Ex mode, which is almost never wanted.

" Prevent using the arrow keys for movement
" Do this in normal mode
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in the insert mode
nnoremap <Left>  <ESC>:echoe "Use h"<CR>
nnoremap <Right> <ESC>:echoe "Use l"<CR>
nnoremap <Up>    <ESC>:echoe "Use k"<CR>
nnoremap <Down>  <ESC>:echoe "Use j"<CR>
