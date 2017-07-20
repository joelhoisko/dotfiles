
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/joel/dotfiles/nvim/.config/nvim/plugin//repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/joel/dotfiles/nvim/.config/nvim/plugin/')
  call dein#begin('/home/joel/dotfiles/nvim/.config/nvim/plugin/')

  " Let dein manage dein
  " Required:
  call dein#add('/home/joel/dotfiles/nvim/.config/nvim/plugin//repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('zchee/deoplete-jedi')
  call dein#add('euclio/vim-markdown-composer')
  call dein#add('plasticboy/vim-markdown')
  call dein#add('scrooloose/nerdtree')
  call dein#add('907th/vim-auto-save')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" Start the autocomplete
let g:deoplete#enable_at_startup=1
" Set some autocomplete things
autocmd CompleteDone * pclose " To close preview window
let g:vim_markdown_folding_disabled = 1
" For a bit slower updating on the markdown
let g:markdown_composer_refresh_rate = 5000
" Setup the autosaving
let g:auto_save = 1  " enable AutoSave on Vim startup


inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}


" Joel's Vimrc

" The encoding displayed and the encoding written
set encoding=utf-8
set fileencoding=utf-8

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent
set si

" Display line numbers on the left
set number

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4
" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

"Always show current position
set ruler

