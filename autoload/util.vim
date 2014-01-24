" It appears to just be a wrapper to mkdir
function! util#EnsureDirExists (dir)
  if !isdirectory(expand(a:dir))
    if exists("*mkdir")
      call mkdir(expand(a:dir),'p')
    else
      echo "Please create directory " . a:dir
    endif
  endif
endfunction

" Saves and execs first argument
function! util#Save (...)
    call util#Clear()
    normal :w
endfunction

" Clears search hist and execs first argument
function! util#Clear (...)
    normal :noh
    if len(a:000) > 1
        echom "Supplied an aftermethod "
        exec "normal " a:1
    endif
endfunction

function! util#SudoWrite ()
    call util#Clear()
    normal :w !sudo tee %
    echom "File written as root."
endfunction

function! util#Source (file)
    let a:ef = expand(a:file)
    exec "normal :source " a:ef

    echom "Re-loaded VIM configuration."
endfunction

function! util#WakeCursor ()
    echom a:1
    set cursorline
    redraw
    sleep 1
    set nocursorline
    echom a:2
endfunction
