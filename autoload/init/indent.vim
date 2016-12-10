set tabstop=4                     "画面上でタブが占める幅
set softtabstop=4                 "tabで挿入される空白の量
set shiftwidth=4                  "自動でインデントでずれる幅
set expandtab                     "タブ入力を複数の空白入力に置き換える

augroup fileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.html setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.css setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

filetype plugin indent on

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
