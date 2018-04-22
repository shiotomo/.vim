let ruby_bundle_hook = {'kind': 'hook', 'name': 'ruby_bundle'}
function! ruby_bundle_hook.on_normalized(session, context)
  if getcwd() !=# $HOME && isdirectory('.bundle') &&
        \   a:session.config.command =~? '^ruby'
    let a:session.config.exec =
          \   map(copy(a:session.config.exec), 's:bundle_exec(v:val)')
  endif
endfunction
function! s:bundle_exec(cmd)
  return substitute(a:cmd, '\ze%c', 'bundle exec ', '')
endfunction
"call quickrun#module#register(ruby_bundle_hook, 1)
