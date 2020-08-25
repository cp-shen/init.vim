nnoremap z- zm
nnoremap z= zr
nnoremap zz za

"set Leader key
map <Space> <Leader>

"bind key to toggle NERDTree
nnoremap <A-1> :NERDTreeFocus<CR>
nnoremap <A-2> :NERDTreeToggle<CR>

"set key to show full path
nnoremap <A-3> :echo expand('%:p')<CR>

nnoremap <A-h> :noh<CR>

"toggle lsp context menu
"nnoremap <Leader>L :call LanguageClient_contextMenu()<CR>

"reload file if changed by other program
nnoremap <Leader>ct :checktime<CR>

"reload config file
nnoremap <Leader>so :so $MYVIMRC<CR>

"bind keys for deoplete menu navigation
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
inoremap <expr> <A-j> pumvisible() ? "\<C-n>" : "\<A-j>"
inoremap <expr> <A-k> pumvisible() ? "\<C-p>" : "\<A-k>"

"remap CR for deoplete to close popup menu
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
  "return pumvisible() ? deoplete#mappings#close_popup() : "\n"
"endfunction

"shortcut to paste from system clipboard
nmap <Leader><C-v> "+p

"shortcut to remove unwanted whitespaces
nnoremap <Leader>sw :StripWhitespace<CR>


"delete buffer
nnoremap <Leader>bd :bd<CR>

"window navigation
nmap <A-h> <C-w>h
nmap <A-j> <C-w>j
nmap <A-k> <C-w>k
nmap <A-l> <C-w>l

"tab navigation
nnoremap <Leader>tp :tabprevious<CR>
nnoremap <Leader>tn :tabnext<CR>

"tab operation
nnoremap <Leader>tt :tabnew term://zsh<CR>a
nnoremap <Leader>td :tabclose<CR>

"navigation of buffer

"nnoremap <C-k> :bprev<CR>

nnoremap <Leader><Space> :History<CR>

nnoremap <Leader>nh :noh<CR>

"save file
nnoremap <C-s> :w<CR>

"close
nnoremap <A-q> :bd<CR>

"terminal mode keybindings
tnoremap <C-\> <C-\><C-n>
tnoremap <A-\> <C-\><C-n>

"function! NvimGdbNoTKeymaps()
  "tnoremap <silent> <buffer> <esc> <c-\><c-n>
"endfunction

"let g:nvimgdb_config_override = {
  "\ 'key_next': '<C-n>',
  "\ 'key_step': '<C-s>',
  "\ 'key_finish': '<C-f>',
  "\ 'key_continue': '<C-c>',
  "\ 'key_until': '<C-u>',
  "\ 'key_breakpoint': '<C-b>',
  "\ 'set_tkeymaps': "NvimGdbNoTKeymaps",
  "\ }

nmap <Leader>dg <Plug>cpp_doxygenInsert

nmap <Leader>R :RangerCurrentFile<CR>

"nnoremap gd :call LanguageClient#textDocument_definition()<CR>
"nnoremap <C-b> :call LanguageClient#textDocument_definition()<CR>

nnoremap <Leader><CR> i<CR><Esc>

nnoremap <expr><C-j> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-j>"
nnoremap <expr><C-k> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-k>"
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
"xmap if <Plug>(coc-funcobj-i)
"xmap af <Plug>(coc-funcobj-a)
"omap if <Plug>(coc-funcobj-i)
"omap af <Plug>(coc-funcobj-a)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <leader>rg :Rg<CR>
nnoremap <A-f> :Neoformat<CR>
nnoremap <leader>nf :Neoformat<CR>

" Using CocList
" Show all diagnostics
"nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
"nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
"nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
"nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
"nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
"nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
"nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
"nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
nmap <leader>f  <Plug>(coc-format-selected)

" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
"nmap <silent> <TAB> <Plug>(coc-range-select)
"xmap <silent> <TAB> <Plug>(coc-range-select)

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

