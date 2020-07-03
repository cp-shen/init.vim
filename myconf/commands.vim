
" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
"command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

command! -bang -nargs=* Rg
 \ call fzf#vim#grep(
 \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
 \   fzf#vim#with_preview(), <bang>0)

function! MyVimEnterAction()
    if @% == ""
        " No filename for current buffer
        History
    "elseif filereadable(@%) == 0
        " File doesn't exist yet
        "startinsert
    "elseif line('$') == 1 && col('$') == 1
        " File is empty
        "startinsert
    endif
endfunction
autocmd VimEnter * call MyVimEnterAction()

"run neoformat on save
augroup fmt
  autocmd!
  "autocmd BufWritePre * undojoin | Neoformat
  "autocmd BufWritePre * Neoformat
augroup END

"do not insert comment leader
autocmd FileType * setlocal formatoptions-=ro

"keyword dictionaries for completion
autocmd FileType * execute 'setlocal dict+=~/.vim/dict/'.&filetype.'.vimdict'

" Highlight symbol under cursor on CursorHold
"autocmd CursorHold * silent call CocActionAsync('highlight')

augroup coc
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

autocmd BufNewFile,BufRead config set ft=conf
autocmd BufNewFile,BufRead *.fs set ft=glsl
autocmd BufNewFile,BufRead *.vs set ft=glsl

