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

call plug#end()

source $HOME/.vim/autoload/init/completion.vim
source $HOME/.vim/autoload/init/html.vim
source $HOME/.vim/autoload/init/indent.vim
source $HOME/.vim/autoload/init/map.vim
source $HOME/.vim/autoload/init/ruby.vim
source $HOME/.vim/autoload/init/set.vim
source $HOME/.vim//vimshell.vim

let NERDTreeShowHidden=1
let g:vim_json_syntax_conceal = 0

syntax on
set t_Co=256

augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END
