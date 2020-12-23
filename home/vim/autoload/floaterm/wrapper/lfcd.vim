function! floaterm#wrapper#lfcd#(cmd) abort
    let s:lf_tmpfile = tempname()
    let original_dir = getcwd()
    if &buftype != 'terminal'
        lcd %:p:h
    endif

    let cmdlist = split(a:cmd)
    let cmd = 'lf -last-dir-path ' . $LF_LASTDIRPATH . ' -selection-path="' . s:lf_tmpfile . '"'
    if len(cmdlist) > 1
        let cmd .= ' ' . join(cmdlist[1:], ' ')
    else
        let cmd .= ' "' . getcwd() . '"'
    endif

    exe "lcd " . original_dir
    return [cmd, {'on_exit': funcref('s:lfcd_callback')}, v:false]
endfunction

function! s:lfcd_callback(...) abort
    if filereadable(s:lf_tmpfile)
        let filenames = readfile(s:lf_tmpfile)
        if !empty(filenames)
            if has('nvim')
                call floaterm#window#hide(bufnr('%'))
            endif
            for filename in filenames
                execute g:floaterm_open_command . ' ' . fnameescape(filename)
            endfor
        endif
    endif

    if exists('${LF_LASTDIRPATH}') && filereadable($LF_LASTDIRPATH)
        execute 'cd ' . readfile($LF_LASTDIRPATH)[0]
    endif
endfunction
