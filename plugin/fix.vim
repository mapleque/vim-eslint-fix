" load once
if exists('g:eslint_fix_loaded')
    finish
endif
let g:eslint_fix_loaded = 1

" 
func! EslintFix(...)
    if executable("eslint")
        " start cache change buffer
        let tmp = winsaveview()
        " run eslint --fix
        call system("eslint --fix ".fnameescape(expand("%:p")))
        " load cache change buffer
        call winrestview(tmp)
        " refresh current view
        silent exec "e"
    endif
endfun
command! EslintFix call EslintFix()
