if isdirectory(expand("~/.vim"))
    set packpath+=~/.vim,
endif

if filereadable(expand("~/.vimrc"))
    source ~/.vimrc
endif

let s:conf_dir=stdpath('config')."/myconf/"
execute "source" s:conf_dir . "plugs.vim"
execute "source" s:conf_dir . "misc.vim"
execute "source" s:conf_dir . "keys.vim"
execute "source" s:conf_dir . "color.vim"
execute "source" s:conf_dir . "commands.vim"

