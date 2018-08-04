inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap ( ()<LEFT>
inoremap <C-j> <Esc> `^
inoremap [ []<LEFT>
inoremap jj  <Esc> `^
inoremap { {}<LEFT>

" nnoremap <silent><C-m> :Minimap<CR>
nnoremap <C-j><C-j> :noh<CR>
nnoremap <silent> vp :VimShellPop<CR>
nnoremap <silent> vs :sp<CR><C-w><C-w>:VimShell<CR>
nnoremap <silent> vsc :VimShellCreate<CR>
nnoremap <silent><C-e> :NERDTreeToggle<CR>
nnoremap <silent>S :e ++enc=shift_jis<CR>
nnoremap <silent>U :e ++enc=utf-8<CR>
nnoremap == gg=G
nnoremap j gj
nnoremap k gk

vnoremap <C-j> <Esc>

noremap <expr> <C-b> max([winheight(0) - 2, 1]) . "\<C-u>" . (line('.') < 1         + winheight(0) ? 'H' : 'L')
noremap <expr> <C-f> max([winheight(0) - 2, 1]) . "\<C-d>" . (line('.') > line('$') - winheight(0) ? 'L' : 'H')
noremap <expr> <C-y> (line('w0') <= 1         ? 'k' : "\<C-y>")
noremap <expr> <C-e> (line('w$') >= line('$') ? 'j' : "\<C-e>")
