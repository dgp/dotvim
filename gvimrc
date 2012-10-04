color railscasts

" Removing all gui components like Menu, Toolbar, Scrollbars
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

set guifont=Inconsolata-dz\ for\ Powerline\ Medium\ 9

set guitablabel=%t%m

function! SetTitleString()
  set titlestring=%f\ %m
  set titlestring+=\ -\ [%{split(substitute(getcwd(),\ $HOME,\ '~',\ ''),\ '/')[-1]}]
endfunction
call SetTitleString()

autocmd BufEnter * call SetTitleString()
