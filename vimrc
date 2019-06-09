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

execute pathogen#infect()

filetype plugin indent on
syntax on

colorscheme molokai
hi Search cterm=bold ctermfg=231 ctermbg=24

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

map <C-left> <ESC>:bp<CR>
map <C-right> <ESC>:bn<CR>

nnoremap <S-Left> :tabprevious<CR>                                                                            
nnoremap <S-Right> :tabnext<CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-b> <C-w>>
map <C-n> <C-w><

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
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
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

