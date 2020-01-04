""""""""""""""""
" Basic settings
""""""""""""""""

" Better safe than sorry
set nocompatible

" Encoding
set encoding=utf-8

" Always show the status bar
set laststatus=2

""""""""
" Vundle
""""""""

" Required by Vundle
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Powerline plugin
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Required
call vundle#end()

" To revert 'filetype off' above
filetype plugin indent on

"""""""""""""""""
" Text formatting
"""""""""""""""""

" Highlight 80+ columns
set colorcolumn=81
highlight ColorColumn ctermbg=White ctermfg=DarkRed

"""""""""""
" Shortcuts
"""""""""""

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
