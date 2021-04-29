function SetStatus()
	set statusline+=%f "path to the file in the buffer, as type or relative to current dir
	set statusline+=%m " modified [+] [-]
	set statusline+=%r " readonly flag
	set statusline+=\  " space

	"right
	set statusline+=%= " align right
	set statusline+=%P
	set statusline+=\  
	set statusline+=\  
	set statusline+=%l " current line number
	set statusline+=/ " / character
	set statusline+=%L " Total line numbers
endfunction

call SetStatus()
