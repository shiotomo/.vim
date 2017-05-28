let NERDTreeShowHidden=1          "隠しファイルを表示する

if has('vim_starting')
   " 初回起動時のみruntimepathにneobundleのパスを指定する
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" NeoBundleを初期化
call neobundle#begin(expand('~/.vim/bundle/'))

" インストールするプラグインをここに記述
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'MaxMEllon/molokai'
NeoBundle 'tpope/vim-surround'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'MaxMEllon/vim-tmng'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'othree/html5.vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'nobarudo/tender.vim'
NeoBundle 'altercation/vim-colors-solarized'
"NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'Yggdroot/indentLine'
"NeoBundle 'severin-lemaignan/vim-minimap'
NeoBundle 'mipmip/vim-minimap'
"NeoBundle 'koron/minimap-vim'



let g:lightline = {
      \ 'colorscheme': 'default',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightLineFugitive',
      \ },
      \ }
function! LightLineFugitive()
  return exists('*fugitive#head') ? fugitive#head() : ''
endfunction

"set laststatus=2
set noshowmode

NeoBundleCheck

call neobundle#end()
