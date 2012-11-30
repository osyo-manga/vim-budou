if exists('g:loaded_budou')
  finish
endif
let g:loaded_budou = 1

let s:save_cpo = &cpo
set cpo&vim


command! BudouSilentBegin
\    call budou#verbosefile_push(tempname())

command! BudouSilentEnd
\    call budou#verbosefile_pop()


let &cpo = s:save_cpo
unlet s:save_cpo
