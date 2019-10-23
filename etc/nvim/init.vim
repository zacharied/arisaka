" {{{1 Opening

let g:python_path = '/usr/bin/python3'

" Reload configuration when saved.
augroup vimrc#autoreload
    autocmd!
    autocmd BufWritePost $MYVIMRC nested source $MYVIMRC
augroup END

function! VimrcSource(f)
    exe 'source ' . '$ARI_ETC/nvim/' . a:f
endfunction

call VimrcSource('plugins.vim')
call VimrcSource('keybinds.vim')
call VimrcSource('text.vim')
call VimrcSource('command.vim')
call VimrcSource('interface.vim')
call VimrcSource('language.vim')

" }}}1

" vim: fdm=marker :
