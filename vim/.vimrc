""""""""""""""""
" Basic settings
""""""""""""""""

set encoding=utf-8      " Encoding
syntax enable           " Enable syntax highlighting
set number              " Show line numbers
set showcmd             " Show command in bottom bar
                        " Powerline will override this
set cursorline          " Highlight current line
filetype indent on      " Load filetype-specific indent files
set wildmenu            " Visual autocomplete for command menu
set lazyredraw          " Redraw only when needed
set showmatch           " Highlight matching {[()]}
set nocompatible        " Required by Vundle

" Highlight 80+ columns
set colorcolumn=80
highlight ColorColumn ctermbg=White ctermfg=DarkRed

"""""""""""""
" Status line
"""""""""""""

set laststatus=2        " Always show the status bar

" When entering and leaving insert mode
au InsertEnter * hi statusline term=reverse ctermfg=9 ctermbg=15
au InsertLeave * hi statusline term=reverse ctermfg=18 ctermbg=15

"""""""""""
" Searching
"""""""""""

set incsearch           " Search as characters are entered
set hlsearch            " Highlight matches

""""""
" Tabs
""""""

set tabstop=4           " Number of visual spaces per <TAB>
set softtabstop=4       " Number of spaces in a tab when editing
set expandtab           " Tabs are spaces

"""""""""
" Folding
"""""""""
set foldenable          " Enable folding
set foldmethod=indent   " Folding based on indent level
set foldlevel=99        " Folding level (depth)

""""""""""
" Movement
""""""""""

" Move vertically by visual line
" nnoremap j gj
" nnoremap k gk

" Navigation between split screen
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

""""""""""""""
" Key mappings
""""""""""""""

nmap <C-n> :NERDTreeToggle<CR>

""""""""""""
" Invisibles
""""""""""""

set listchars=eol:$,tab:>.,trail:~,extends:>,precedes:<
set list

"""""""""""""""
" Colour scheme
"""""""""""""""

colorscheme desert

"""""""""""""""""""""""""""""""""""""""
" Getting backspsace to work on Windows
"""""""""""""""""""""""""""""""""""""""

set bs=2

""""""""""
" GUI Font
""""""""""

set guifont=Liberation\ Mono:h11

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
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Nerdtree plugin
Plugin 'scrooloose/nerdtree'

" Required
call vundle#end()

" To revert 'filetype off' above
filetype plugin indent on
