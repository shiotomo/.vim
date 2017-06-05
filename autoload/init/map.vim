inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap jj  <Esc> `^
inoremap <C-j> <Esc> `^

nnoremap <silent><C-e> :NERDTreeToggle<CR>
"nnoremap <silent><C-m> :Minimap<CR>
nnoremap <silent>S :e ++enc=shift_jis<CR>
nnoremap <silent>U :e ++enc=utf-8<CR>
nnoremap <C-j><C-j> :noh<CR>
nnoremap j gj
nnoremap k gk
nnoremap == gg=G
nnoremap <silent> vs :VimShell<CR>
nnoremap <silent> vsc :VimShellCreate<CR>
nnoremap <silent> vp :VimShellPop<CR>

vnoremap <C-j> <Esc>
