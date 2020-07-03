let g:plugdir = '~/.vim/plugged'

call plug#begin(plugdir)

"tools
"Plug 'vim-scripts/DoxygenToolKit.vim'
Plug 'tpope/vim-fugitive'
"Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'vim-scripts/cpp_doxygen'
Plug 'scrooloose/nerdtree' "file tree
Plug 'tyru/caw.vim' "comment tool
"Plug 'gauteh/vim-cppman'

Plug 'terryma/vim-multiple-cursors'
    let g:multi_cursor_use_default_mapping = 0
    " Default mapping
    let g:multi_cursor_start_word_key      = '<C-n>'
    let g:multi_cursor_select_all_word_key = '<A-n>'
    let g:multi_cursor_start_key           = 'g<C-n>'
    let g:multi_cursor_select_all_key      = 'g<A-n>'
    let g:multi_cursor_next_key            = '<C-n>'
    let g:multi_cursor_prev_key            = '<C-p>'
    let g:multi_cursor_skip_key            = '<C-x>'
    let g:multi_cursor_quit_key            = '<Esc>'

Plug 'sbdchd/neoformat' "formatting tool
Plug 'francoiscabrol/ranger.vim'
    let g:ranger_map_keys = 0 "disable default key map
Plug 'rbgrouleff/bclose.vim' "required by ranger.vim
"Plug 'tpope/vim-eunuch' "sugar commands
Plug 'jiangmiao/auto-pairs'
    "Specify pairs for auto-pairs
    let g:AutoPairs =  {'(':')', '[':']', '{':'}'}
Plug 'tpope/vim-surround'
Plug 'ntpeters/vim-better-whitespace' "show and remove unwanted whitespaces
    let g:better_whitespace_ctermcolor='red'
    let g:better_whitespace_guicolor='red'
"Plug 'jlanzarotta/bufexplorer'

"tags
Plug 'ludovicchabant/vim-gutentags'

"languages
"Plug 'calviken/vim-gdscript3'
Plug 'mrk21/yaml-vim'
Plug 'rust-lang/rust.vim'

"languages syntax
Plug 'bfrg/vim-cpp-modern'
    let c_no_curly_error=1

    " Disable function highlighting (affects both C and C++ files)
    "let g:cpp_no_function_highlight = 1

    " Put all standard C and C++ keywords under Vim's highlight group `Statement`
    " (affects both C and C++ files)
    "let g:cpp_simple_highlight = 1

    " Enable highlighting of named requirements (C++20 library concepts)
    "let g:cpp_named_requirements_highlight = 1
Plug 'sheerun/vim-polyglot' "language pack to support highlight
    let g:polyglot_disabled = ['c/c++', 'yaml', 'rust']

" snippet engine
" Plug 'SirVer/ultisnips'
    " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger=""
    let g:UltiSnipsJumpBackwardTrigger=""

    " If you want :UltiSnipsEdit to split your window.
    "let g:UltiSnipsEditSplit="vertical

" Snippets
Plug 'honza/vim-snippets'

"debugging tools
"Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateRemotePlugins' }

"apperance
Plug 'itchyny/lightline.vim'

"Plug 'luochen1990/rainbow'
    "let g:rainbow_active = 1

"colorschemes
Plug 'joshdick/onedark.vim'
    "onedark colorscheme setting
    "Note! this should be placed before setting colorscheme
    let g:onedark_termcolors = 16
    let g:onedark_hide_endofbuffer = 1
    let g:onedark_terminal_italics = 1
Plug 'nanotech/jellybeans.vim'
Plug 'cp-shen/Spacegray.vim'
    let g:spacegray_underline_search = 0
    let g:spacegray_use_italics = 1
    let g:spacegray_low_contrast = 0


"for vim-plug help message
Plug 'junegunn/vim-plug'

"fzf for file finding
Plug 'junegunn/fzf' ", { 'do': './install --all' }
Plug 'junegunn/fzf.vim'
	"shortcut to use fzf
	nnoremap <Leader>H :History<CR>
	nnoremap <Leader>hi :History<CR>
	nnoremap <Leader>F :Files<CR>
	nnoremap <Leader>fi :Files<CR>
	nnoremap <Leader>B :Buffers<CR>
	nnoremap <Leader>ta :Tags<CR>
	nnoremap <Leader>bt :BTags<CR>
	nnoremap <A-t> :BTags<CR>
	nnoremap <Leader>li :Lines<CR>
	nnoremap <Leader>bl :BLines<CR>

"plugins for nvim only
if has('nvim')
    "autocompletion engine
    "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        "enable deoplete
        "let g:deoplete#enable_at_startup = 1

   Plug 'neoclide/coc.nvim', {'branch': 'release'}

    "lsp support and completion
    "Plug 'autozimu/LanguageClient-neovim', {
        "\ 'branch': 'next',
        "\ 'do': 'bash install.sh',
        "\ }
        "Required for lsp operations modifying multiple buffers like rename.
        set hidden
        "register lsp servers
        let g:LanguageClient_serverCommands = {
            \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
            \ 'python': ['~/.local/bin/pyls'],
            \ 'lua': ['lua-lsp'],
            \ 'cpp': ['clangd'],
            \ 'c': ['clangd'],
            \ }
        let g:LanguageClient_autoStart = 1
endif

call plug#end()
