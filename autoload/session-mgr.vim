" VIM SAVE SESSIONS UGH
if argc() == 0
  autocmd VimEnter * call util#RestoreSession( util#GetName() )
  autocmd VimLeave * call util#SaveSession(    util#GetName() )
end
