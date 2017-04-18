set tabstop=2                     "画面上でタブが占める幅
set softtabstop=2                 "tabで挿入される空白の量
set shiftwidth=2                  "自動でインデントでずれる幅
set expandtab                     "タブ入力を複数の空白入力に置き換える

augroup FileTypeIndent
    autocmd!
    autocmd BufNewFile,BufRead *.html setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.css setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.erb setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd BufNewFile,BufRead *.c setlocal tabstop=4 softtabstop=4 shiftwidth=4
augroup END

filetype plugin indent on

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
