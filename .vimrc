syntax on

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

" macos backspace problem
set backspace=indent,eol,start

" set colorcolumn=80
" highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'https://tpope.io/vim/fugitive.git'
Plug 'junegunn/fzf.vim'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'voldikss/vim-floaterm'

call plug#end()

colorscheme gruvbox
set background=dark

" leader
let mapleader = " "

" Nerdtree keymap
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Airline
let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Fzf
let g:fzf_preview_window = 'right:50%'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6  }  }

" Floaterm
let g:floaterm_keymap_kill = '<leader>q' 
let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_width = 0.9
let g:floaterm_height = 0.9

" Undotree keymap
nnoremap <F5> :UndotreeToggle<CR>
nnoremap <leader>u :UndotreeFocus<CR>

" Window layout
if !exists('g:undotree_WindowLayout')
    let g:undotree_WindowLayout = 3
endif

" e.g. using 'd' instead of 'days' to save some space.
if !exists('g:undotree_ShortIndicators')
    let g:undotree_ShortIndicators = 0
endif

" undotree window width
if !exists('g:undotree_SplitWidth')
    if g:undotree_ShortIndicators == 1
        let g:undotree_SplitWidth = 24
    else
        let g:undotree_SplitWidth = 30
    endif
endif

" diff window height
if !exists('g:undotree_DiffpanelHeight')
    let g:undotree_DiffpanelHeight = 14
endif

