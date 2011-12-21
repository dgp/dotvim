command! -bang Ctags execute '!ctags -R --exclude=.git --exclude=log * ~/.rvm/gems/' . rvm#string() . '/*'
