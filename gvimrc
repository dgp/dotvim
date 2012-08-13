color zenburn

" Removing all gui components like Menu, Toolbar, Scrollbars
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

set guifont=Menlo\ Regular\ for\ Powerline:h12

set guitablabel=%t%m

function! SetTitleString()
  if getcwd() == expand("%:p:h")
    set titlestring=%t\ %m
    set titlestring+=\ [%{substitute(getcwd(),\ $HOME,\ '~',\ '')}]
  else
    set titlestring=%t\ %m
    set titlestring+=\ (%{substitute(expand('%:p:h'),\ $HOME,\ '~',\ '')})
    set titlestring+=\ -\ [%{split(substitute(getcwd(),\ $HOME,\ '~',\ ''),\ '/')[-1]}]
  endif
endfunction
call SetTitleString()

autocmd BufEnter * call SetTitleString()
