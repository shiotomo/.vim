"
"                                             ####
"                                             ####
"
"
"
"                     ####      ####      ########          ####  ####      ######  ####          ######  ##
"                     ##          ##            ##        ##    ##    ##        ####    ##      ##      ####
"                     ##          ##            ##        ##    ##    ##        ##      ##    ##          ##
"                       ##      ##              ##        ##    ##    ##        ##            ##
"                       ##      ##              ##        ##    ##    ##        ##            ##
"                       ##      ##              ##        ##    ##    ##        ##            ##
"     ##                  ##  ##                ##        ##    ##    ##        ##            ##          ##
"   ######                ##  ##                ##        ##    ##    ##        ##              ##        ##
"   ######                  ##          ################  ####  ####  ####  ############          ########
"     ##


set encoding=utf-8
scriptencoding utf-8

call plug#begin('~/.vim/plugged')

" ******** deoplete.nvim *******
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" ******** deoplete.nvim *******

Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'MaxMEllon/vim-tmng'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim'
Plug 'Shougo/vimshell.vim'
Plug 'Yggdroot/indentLine'
Plug 'aklt/plantuml-syntax'
Plug 'altercation/vim-colors-solarized'
Plug 'basyura/unite-rails'
Plug 'bronson/vim-trailing-whitespace'
Plug 'chr4/nginx.vim'
Plug 'elzr/vim-json'
Plug 'fatih/vim-go'
Plug 'hail2u/vim-css3-syntax'
Plug 'itchyny/calendar.vim'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'kannokanno/previm'
Plug 'kchmck/vim-coffee-script'
Plug 'mattn/emmet-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'othree/es.next.syntax.vim'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'jelera/vim-javascript-syntax'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'slim-template/vim-slim'
Plug 'thinca/vim-quickrun'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'tyru/open-browser.vim'
Plug 'derekwyatt/vim-scala'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-endwise'
Plug 'tomtom/tcomment_vim'
Plug 'aonemd/kuroi.vim'

" ******** neocomplcache ********
" Plug 'Shougo/neocomplcache.vim'
" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'
" ******** neocomplcache ********

" Plug 'MaxMEllon/molokai'
" Plug 'djjcast/mirodark'
" Plug 'othree/yajs.vim'
" Plug 'othree/javascript-libraries-syntax.vim'
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
source $HOME/.vim/conf.d/snnippet.vim
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

let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 0
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#enable_camel_case = 0
let g:deoplete#enable_ignore_case = 0
let g:deoplete#enable_refresh_always = 0
let g:deoplete#enable_smart_case = 1
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#max_list = 10000
let g:jsx_ext_required = 0
let g:vim_jsx_pretty_enable_jsx_highlight = 0
let g:vim_jsx_pretty_colorful_config = 1
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
let g:loaded_syntastic_python_pylint_checker = 0

" Syntax
syntax on
set t_Co=256

try
  colorscheme kuroi
  " colorscheme mirodark
  " colorscheme neodark
  " colorscheme tender
  " colorscheme desert
  " colorscheme molokai
  " let g:molokai_original = 1
  " let g:rehash256 = 1
  " let g:molokai_original = 1
catch
endtry
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
