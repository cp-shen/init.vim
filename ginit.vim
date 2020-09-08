if exists('g:fvim_loaded')
    " good old 'set guifont' compatibility
    set guifont=JetBrains\ Mono:h16
	" Iosevka\ Slab:h16
    " Ctrl-ScrollWheel for zooming in/out
    nnoremap <silent> <C-ScrollWheelUp> :set guifont=+<CR>
    nnoremap <silent> <C-ScrollWheelDown> :set guifont=-<CR>
    nnoremap <A-CR> :FVimToggleFullScreen<CR>

    " FVimCursorSmoothMove v:true
    FVimCursorSmoothBlink v:true

    " Font tweaks
    FVimFontAntialias v:true
    FVimFontAutohint v:true
    FVimFontHintLevel 'full'
    FVimFontLigature v:true
    FVimFontSubpixel v:true
    " FVimFontNoBuiltInSymbols v:true " Disable built-in Nerd font symbols

    " Try to snap the fonts to the pixels, reduces blur
    " in some situations (e.g. 100% DPI).
    FVimFontAutoSnap v:true

    " Font weight tuning, possible valuaes are 100..900
    FVimFontNormalWeight 400
    FVimFontBoldWeight 700

    " Font debugging -- draw bounds around each glyph
    " FVimFontDrawBounds v:true

    " Title bar tweaks
    FVimCustomTitleBar v:false
else
	Guifont! JetBrains\ Mono:h12
	GuiTabline 0
	GuiPopupmenu 0

endif

hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=None guibg=#222222 guifg=None
hi Cursor guifg=white guibg=steelblue
hi iCursor guifg=white guibg=white

set guicursor=n-v-c-sm:block-Cursor-blinkon0
set guicursor+=i-ci-ve:ver25-iCursor-blinkon0
set guicursor+=r-cr-o:hor20-Cursor-blinkon0
