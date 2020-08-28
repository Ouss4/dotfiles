" Make the space as the leader key.
let mapleader = " " 

set encoding=UTF-8
set nocompatible

set number
set relativenumber
set ft=nasm
set expandtab
set tabstop=2
retab
set shiftwidth=2
set ai
set smarttab
set hlsearch
se incsearch
set textwidth=80
set showcmd
set noswapfile
set autoread

execute pathogen#infect()

set smartindent
set autoindent
set cindent
filetype plugin indent on
syntax on

colorscheme desertEx
"hi Search cterm=bold ctermfg=231 ctermbg=24

" Make defs file have the same syntax as make (used in NuttX)
autocmd BufNewFile,BufRead *.defs set syntax=make

"
" Shortcuts mapping
"
" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

nnoremap <F4> :UndotreeToggle<CR>
map <F3> :NERDTreeToggle<CR>
nmap <F2> :TagbarToggle<CR>

map <Leader>h :bp<CR>
map <Leader>l :bn<CR>

map <Leader>t :tabn<CR>
map <Leader>T :tabp<CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-b> <C-w>>
map <C-n> <C-w><

" Clear search highliting.
nnoremap <Leader><space> :noh<cr>

map <Leader>v :vsplit<CR>

map <Leader>f :Files<CR>

map <Leader>g :Gvdiff<CR>

" Folding
nnoremap <Leader>a za

setlocal foldmethod=syntax
set foldlevelstart=20

"
" Airline
"

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_theme='kolor'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_tabs = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tabs_label = 't'
let g:airline#extensions#tabline#buffers_label = 'b'

" unicode symbols

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols

let g:airline_left_sep = ''
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = '|'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Open NerdTree automatically when no file is given.

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" NERDTress File highlighting

function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('c', 'blue', 'none', 'green', '#151515')
call NERDTreeHighlightFile('h', 'magenta', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'green', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'cyan', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('rb', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('sh', 'red', 'none', 'yellow', '#151515')

" NerdTree git pluging indicators

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let NERDTreeIgnore=['\.o$', '\~$']
let NERDTreeDirArrowExpandable = "\u00a0"
let NERDTreeDirArrowCollapsible = "\u00a0"
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ''
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:gitgutter_map_keys = 0
let g:multi_cursor_use_default_mapping=0
let g:instant_markdown_autostart = 0	

if exists("g:ctrl_user_command")
    unlet g:ctrlp_user_command
endif
set wildignore+=*.o
let $FZF_DEFAULT_COMMAND ='find * -type f ! -name "*.o"'
