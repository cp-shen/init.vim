set noundofile
set langmenu=en_US
set ruler
set number
set showcmd
set noshowmode
set nowrap
set showmatch
set hlsearch
set foldcolumn=0
set foldignore=
set showtabline=1
set background=dark
set mouse=a
set title

"remove tool toolbar and left / right scroll bar
set guioptions-=T
set guioptions-=r
set guioptions-=L

"encoding
set encoding=utf-8
"new line = \n
"set fileformat=unix
"set tab = 4 spaces
set tabstop=4 shiftwidth=4 expandtab
"match uppercase when search by lower
set ignorecase
set smartcase

"set underscore to be a word seperator
"set iskeyword-=_

"when navigating deoplete list, do not open scratch buffer
set completeopt-=preview

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
"set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumn
set signcolumn=yes

"turn off bell
set belloff=all

"highlight current line
set cursorline
"hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

"highlight current column
"set cursorcolumn
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

"add a switch key to show cursor line and column
"nnoremap <Leader>H :set cursorline! cursorcolumn!<CR>

"enable doxygen highlighting
let g:load_doxygen_syntax = 1
syntax on

" Add coc status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

