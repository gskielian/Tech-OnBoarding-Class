" setup variables and scope 
let g:hello_apm = 0
let g:hello_count = 0
let g:hello_start_time = 0
let g:hello_end_time = 0

" functions for obtaining git branch name
function! Get_Git_Branch()
  return system("git branch --show-current")
endfunction

function! Formatted_Git_Branch()
  let l:gitbranchname = Get_Git_Branch()
  if strlen(l:gitbranchname) > 0
	  let l:formatted_branch_name = split(l:gitbranchname, "\n") " remove trailing newline
	  return "(" . l:formatted_branch_name[0] . ")"
  else
	  return ''
  endif
endfunction

" set up statusline
" note: statusline will track variables in real time
set statusline=                             " reset status bar
set statusline+=[%n]                        " vim buffer number
set statusline+=\   
set statusline+=<APM
set statusline+=\   
set statusline+=%{float2nr(g:hello_apm)}>  " actions per minute
set statusline+=\   
set statusline+=%20f                        " current file
set statusline+=\  
set statusline+=%10{Formatted_Git_Branch()} " branch
set statusline+=%=                          " move to right side
set statusline+=%=%1*%y%*%*\                " file type
set statusline+=%5((%l,%c)%)\               " line and column
set statusline+=%P     

"" for debugging
" set statusline+=%{g:hello_count}      " for debug
" set statusline+=\
" set statusline+=%{g:hello_start_time} " for debug
" set statusline+=\
" set statusline+=%{g:hello_end_time}   " for debug

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

" have this group activate for anything inside of it
augroup autocommand_group
	au!

	" text changes in normal and insert mode
	au TextChanged * call s:VIMAPM_trackchanges()
	au TextChangedI * call s:VIMAPM_trackchanges()

	" cursor movements in normal and insert modes
	au CursorMoved * call s:VIMAPM_trackchanges()
	au CursorMovedI * call s:VIMAPM_trackchanges()

	" actions in the cmd line mode
	au CmdLineChanged * call s:VIMAPM_trackchanges()
	au CmdLineEnter * call s:VIMAPM_trackchanges()
	au CmdLineLeave * call s:VIMAPM_trackchanges()

	" entering or leaving insert mode
	au InsertEnter * call s:VIMAPM_trackchanges()
	au InsertLeave * call s:VIMAPM_trackchanges()
augroup end

" start timer for 5000ms (5 seconds) have this calculate and update the
" actions per minute counter in the bottom left of the screen
let timer = timer_start(5000, 'DisplayAPM', {'repeat': -1}) " repeat -1 means indefinite
