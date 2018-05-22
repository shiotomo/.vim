set encoding=utf-8
scriptencoding utf-8

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'MaxMEllon/molokai'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'MaxMEllon/vim-tmng'
Plug 'kannokanno/previm'
Plug 'tyru/open-browser.vim'
Plug 'Shougo/neocomplcache.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'jelera/vim-javascript-syntax'
Plug 'nobarudo/tender.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'Yggdroot/indentLine'
Plug 'Shougo/vimshell.vim'
Plug 'Shougo/vimproc.vim'
Plug 'Shougo/unite.vim'
Plug 'basyura/unite-rails'
Plug 'kchmck/vim-coffee-script'
Plug 'fatih/vim-go'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'elzr/vim-json'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-rails'
Plug 'chr4/nginx.vim'
Plug 'slim-template/vim-slim'
Plug 'othree/yajs.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/es.next.syntax.vim'

"Plug 'plasticboy/vim-markdown'
"Plug 'koron/minimap-vim'
"Plug 'severin-lemaignan/vim-minimap'
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'mipmip/vim-minimap'

call plug#end()

source $HOME/.vim/conf.d/completion.vim
source $HOME/.vim/conf.d/html.vim
source $HOME/.vim/conf.d/indent.vim
source $HOME/.vim/conf.d/map.vim
source $HOME/.vim/conf.d/ruby.vim
source $HOME/.vim/conf.d/set.vim
source $HOME/.vim//vimshell.vim

let g:NERDTreeShowHidden=1
let g:vim_json_syntax_conceal = 0

augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END

" Syntax
syntax on
set t_Co=256

"try
"  colorscheme molokai
""  colorscheme tender
"  let g:molokai_original = 1
"catch
"  colorscheme desert
"endtry
