call plug#begin()

Plug 'haya14busa/incsearch.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'majutsushi/tagbar'
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-sensible'
Plug 'yegappan/taglist'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'google/vim-searchindex'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'
Plug 'dracula/vim'
Plug 'tmux-plugins/vim-tmux-focus-events'

call plug#end()

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

" au FocusGained,BufEnter * :silent! checktime
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

set smartindent
set autoindent
set cindent
filetype plugin indent on

syntax on

colorscheme PaperColor

let termdebugger = "xtensa-esp32-elf-gdb"
let g:termdebug_popup = 0
let g:termdebug_wide = 163

" Make defs file have the same syntax as make (used in NuttX)
autocmd BufNewFile,BufRead *.defs setlocal syntax=make
autocmd BufNewFile,BufRead *.defs setlocal noexpandtab
autocmd BufNewFile,BufRead *.defs setlocal shiftwidth=4 tabstop=4

autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.rst setlocal spell
autocmd BufRead,BufNewFile *.txt setlocal spell
autocmd FileType gitcommit setlocal spell
set complete+=kspell

autocmd FileType make setlocal shiftwidth=4 tabstop=4
autocmd FileType make setlocal noexpandtab

autocmd BufNewFile,BufRead Kconfig setlocal noexpandtab
autocmd BufNewFile,BufRead Kconfig setlocal shiftwidth=4 tabstop=4

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

map <Leader>g :Gvdiff<CR>

" Folding
nnoremap <Leader>a za

set foldlevelstart=20
setlocal foldmethod=syntax

"
" Airline
"

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_theme='kolor'
let g:airline_powerline_fonts=1
let g:airline#extensions#searchcount#enabled=0
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

let g:NERDTreeGitStatusIndicatorMapCustom = {
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
