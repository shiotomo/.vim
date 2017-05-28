runtime! .vim/autoload/plugins/*vim
runtime! .vim/autoload/init/*.vim

augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END
