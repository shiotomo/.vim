set encoding=utf-8
scriptencoding utf-8

call plug#begin('~/.vim/plugged')

Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'MaxMEllon/molokai'
Plug 'MaxMEllon/vim-tmng'
Plug 'Shougo/neocomplcache.vim'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim'
Plug 'Shougo/vimshell.vim'
Plug 'Yggdroot/indentLine'
Plug 'altercation/vim-colors-solarized'
Plug 'basyura/unite-rails'
Plug 'bronson/vim-trailing-whitespace'
Plug 'chr4/nginx.vim'
Plug 'djjcast/mirodark'
Plug 'elzr/vim-json'
Plug 'fatih/vim-go'
Plug 'hail2u/vim-css3-syntax'
Plug 'itchyny/calendar.vim'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'jelera/vim-javascript-syntax'
Plug 'kannokanno/previm'
Plug 'kannokanno/previm'
Plug 'kchmck/vim-coffee-script'
Plug 'mattn/emmet-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'othree/es.next.syntax.vim'
Plug 'othree/html5.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'othree/yajs.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'slim-template/vim-slim'
Plug 'thinca/vim-quickrun'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tyru/open-browser.vim'
Plug 'aklt/plantuml-syntax'

" Plug 'KeitaNakamura/neodark.vim'
" Plug 'jacoborus/tender.vim'
" Plug 'koron/minimap-vim'
" Plug 'mipmip/vim-minimap'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'nobarudo/tender.vim'
" Plug 'plasticboy/vim-markdown'
" Plug 'severin-lemaignan/vim-minimap'
" Plug 'whatyouhide/vim-gotham'

call plug#end()

source $HOME/.vim/conf.d/markdown.vim
source $HOME/.vim/conf.d/completion.vim
source $HOME/.vim/conf.d/html.vim
source $HOME/.vim/conf.d/indent.vim
source $HOME/.vim/conf.d/map.vim
source $HOME/.vim/conf.d/ruby.vim
source $HOME/.vim/conf.d/set.vim
source $HOME/.vim/vimshell.vim

augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
        \ exe "normal g`\"" | endif
augroup END

let g:NERDTreeShowHidden=1
let g:vim_json_syntax_conceal = 0
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ 'colorscheme': 'wombat'
      \ }

" Syntax
syntax on
set t_Co=256

try
  colorscheme mirodark
  " colorscheme neodark
  " colorscheme tender
  " colorscheme desert
  " colorscheme molokai
  " let g:molokai_original = 1
  " let g:rehash256 = 1
  " let g:molokai_original = 1
catch
endtry
