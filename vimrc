syntax on

set tabstop=2
set shiftwidth=2
set smarttab
set et
set wrap
set textwidth=100
set ai
set showmatch
set hlsearch
set incsearch
set ignorecase
set lz
set listchars=tab:··
set list
set guioptions-=T
set guioptions-=m
set number
set relativenumber
set ruler
set cursorline
set nocompatible
set clipboard=unnamedplus

" Plugins:
call plug#begin('~/.vim/plugged')
" https://github.com/morhetz/gruvbox
Plug 'morhetz/gruvbox'
" https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'
" https://github.com/easymotion/vim-easymotion
Plug 'easymotion/vim-easymotion'
" https://github.com/mg979/vim-visual-multi
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
" https://github.com/vimwiki/vimwiki
Plug 'vimwiki/vimwiki'
" https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree'
" https://github.com/Chiel92/vim-autoformat
Plug 'Chiel92/vim-autoformat'
call plug#end()

filetype plugin on

" Gruvebox theme config:
set background=dark    " Setting dark mode
autocmd vimenter * ++nested colorscheme gruvbox

" Lightline config:
set laststatus=2
set noshowmode

" Vimwiki config:
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md', 'auto-toc': 1, 'auto_tags': 1, 'auto_diary_index': 1, 'auto_generate_tags': 1}]
" let g:vimwiki_ext2syntax = {'.wiki': 'markdown'}
let g:vimwiki_hl_headers = 1
let g:vimwiki_auto_header = 1
let g:vimwiki_hl_cb_checked = 1
let g:vimwiki_folding = 'list'
map <C-b> :VimwikiBacklinks<CR>

" Nerdtree config:
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" Formatting:
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
" Formatter for specific type must be installed separatly. See git readme for plugin
noremap <F3> :Autoformat<CR>

" Backup:
" vim backup/swap dirs:
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

" jump to last known position after open file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" Keys
imap jk <Esc>
let mapleader=" "
" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" sh fileype config:
if &filetype == 'sh'
  set textwidth=9999999
endif

" clear seach highlight on <esc> button:
nnoremap <esc> :noh<return><esc>
