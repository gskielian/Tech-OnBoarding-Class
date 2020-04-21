let g:hello_apm = 0
let g:hello_count = 0
let g:hello_start_time = 0
let g:hello_end_time = 0

function! Get_Git_Branch()
  return system("git branch --show-current")
endfunction

function! Formatted_Git_Branch()
  let l:gitbranchname = Get_Git_Branch()
  if strlen(l:gitbranchname) > 0
	  let l:formatted_branch_name = split(l:gitbranchname, "\n") " remove trailing newline
	  return l:formatted_branch_name[0]
  else
	  return ''
  endif
endfunction

"set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%=%-16(\ %l,%c-%v\ %)%P

set statusline=
set statusline+=[%n] " vim buffer number
set statusline+=
set statusline+=%-40f\                    " path
set statusline+=
set statusline+=%{Formatted_Git_Branch()} "branch
set statusline+=
set statusline+=%=%1*%y%*%*\              " file type
set statusline+=%10((%l,%c)%)\            " line and column
set statusline+=%P     
""set statusline+=%{g:hello_count} " for debug
""set statusline+=\
""set statusline+=%{g:hello_start_time} " for debug
""set statusline+=\
""set statusline+=%{g:hello_end_time} " for debug
"set statusline+=%=
"set statusline+=APM
"set statusline+=%{float2nr(g:hello_apm)} " PAM

function s:VIMAPM_trackchanges()
	if g:hello_count == 0
		let g:hello_start_time = strftime("%s")
		let g:hello_count = g:hello_count + 1
	else
		let g:hello_end_time = strftime("%s")
		let g:hello_count = g:hello_count + 1
	endif 
endfunction

function DisplayAPM(timerId)
	if g:hello_end_time > g:hello_start_time
		let g:hello_apm = round((60.0 * g:hello_count)/(g:hello_end_time - g:hello_start_time))
		let g:hello_count = 0
	else
		let g:hello_apm = 0
	endif
endfunction

augroup testgroup
	au!
	au TextChanged * call s:VIMAPM_trackchanges()
	au TextChangedI * call s:VIMAPM_trackchanges()
augroup end


let timer = timer_start(10000, 'DisplayAPM', {'repeat': -1}) " repeat -1 means indefinite
