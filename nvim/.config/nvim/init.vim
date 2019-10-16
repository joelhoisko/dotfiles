"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/joel/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/joel/.local/share/dein/')
  call dein#begin('/home/joel/.local/share/dein/')

  " Let dein manage dein
  " Required:
  call dein#add('/home/joel/.local/share/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('zchee/deoplete-jedi')
  call dein#add('euclio/vim-markdown-composer', {'build': 'cargo build --release'})
  call dein#add('plasticboy/vim-markdown')
  call dein#add('scrooloose/nerdtree')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  " call dein#add('vim-syntastic/syntastic')
  " call dein#add('hdima/python-syntax')

  " You can specify revision/branch/tag.
  " call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

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

" @joel's plugin config here

" Start the autocomplete
let g:deoplete#enable_at_startup=1
" Set some autocomplete things
autocmd CompleteDone * pclose " To close preview window

" Some Markdown Browser preview stuff
let g:vim_markdown_folding_disabled = 1
" For a bit slower updating on the markdown
let g:markdown_composer_refresh_rate = 5000
" For a bit better markdown render
" acutally no: https://github.com/jgm/pandoc/issues/3051
" let g:markdown_composer_external_renderer='pandoc -f gfm -t html'

" For deoplete autocompletion with tab
inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

" For toggling NERDTree easier
map <C-n> :NERDTreeToggle<CR>
" get rid of damn .pyc's
let NERDTreeIgnore = ['\.pyc$']

" @joel commented out because they took mah beatuiful statusline
" Some Syntastic stuff
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"" Some Syntastic checker
"let g:syntastic_python_checkers = ['python', 'pylint']

" time for some fancy vim-airline
let g:airline_powerline_fonts = 1
" and some fancy themes
let g:airline_theme='simple'
" so that the fonts aren't all messed up
"if !exists('g:airline_symbols')
"  let g:airline_symbols = {}
"endif
"let g:airline_symbols.space = "\ua0"
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

" Joel's Vimrc -------------------------
"
" More natural split directions
set splitbelow
set splitright

" Autosaving 
autocmd TextChanged,TextChangedI <buffer> silent write
set autowriteall
au BufLeave * silent! wall

" no line wrapping on default
set nowrap

" Easier moving between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" The encoding displayed and the encoding written
set encoding=utf-8
set fileencoding=utf-8

" for 256 colors
set t_Co=256 

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

" no beeperino
set noerrorbells

" show current mode
set showmode
" and partial command in status line
set showcmd
" and clipboard more sense
set clipboard+=unnamedplus
" stup indentation for html and css
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype sass setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
" autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 noexpandtab
