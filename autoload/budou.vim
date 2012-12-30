scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim


let s:verbosefiles = []

function! budou#verbosefile_push(file)
	call add(s:verbosefiles, &verbosefile)
	let &verbosefile = a:file
	return a:file
endfunction


function! budou#verbosefile_pop()
	let filename = &verbosefile
	let &verbosefile = get(s:verbosefiles, -1)
	call remove(s:verbosefiles, -1)
	return filename
endfunction


function! budou#reset()
	let s:verbosefiles = []
endfunction


let &cpo = s:save_cpo
unlet s:save_cpo
