"runtime! .vim/autoload/plugins/*vim
runtime! .vim/autoload/init/*.vim
"runtime! .vim/autoload/plug.vim

augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END


call plug#begin('~/.vim/plugged')

Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'MaxMEllon/molokai'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'MaxMEllon/vim-tmng'
Plug 'plasticboy/vim-markdown'
Plug 'kannokanno/previm'
Plug 'tyru/open-browser.vim'
Plug 'Shougo/neocomplcache.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'jelera/vim-javascript-syntax'
Plug 'nobarudo/tender.vim'
Plug 'altercation/vim-colors-solarized'
"Plug 'nathanaelkane/vim-indent-guides'
Plug 'Yggdroot/indentLine'
"Plug 'severin-lemaignan/vim-minimap'
Plug 'mipmip/vim-minimap'
"Plug 'koron/minimap-vim'

call plug#end()
