" ctags
set tags=~/tags
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'

" vim options
syn on
set expandtab
set softtabstop=2
set shiftwidth=2
set ts=2
filetype plugin indent on
filetype indent on
filetype on

au FileType python setl shiftwidth=4 tabstop=4 ts=4 softtabstop=4

set autoread
set autowriteall
set incsearch " incremental search

" highlight col 80
"autocmd BufWinEnter * let w:m1=matchadd('Search', '\%<83v.\%>81v', -1)
" highlight col 101 - 105 for scala.
autocmd BufWinEnter *scala* let w:m1=matchadd('Search', '\%<105v.\%>101v', -1)

" nerd tree
map <F2> :NERDTreeToggle<CR>
"autocmd VimEnter *scala* NERDTree
"autocmd BufEnter *scala* NERDTreeMirror

" turn on taglist
map <F3> :Tlist<CR>

" FuzzyFinder
map <F4> :FufTaggedFile<CR>
map <F5> :FufTag<CR>

" Right arrow at the end of line goes to beginning of next line
" (arrows, backspace)
set whichwrap=<,>,[,],b,s

set ignorecase " smart case for search
set smartcase " smart case for search
set hlsearch "Highlight search things
set showmatch "Show matching bracets when text indicator is over them
set number " show line numbers
set ruler " always show current position


