" {{{1 Window manipulation

let g:vimrc#window#ft_to_return_to_main = {}

" Focuses a side window, or returns to the main text window if it is already
" focused.
function! vimrc#window#SideFocusToggle(ft, cmd) abort
    if &ft == a:ft
        wincmd p
        return
    endif

    if has_key(g:vimrc#window#ft_to_return_to_main, &ft)
        wincmd p
    endif

    execute a:cmd
endfunction

" {{{2 Wrappers for vim-plug update
let g:vimrc#window#vim_plug_window_id = 0

function! vimrc#window#VimPlugOpen() abort
    PlugUpdate
    let g:vimrc#window#vim_plug_window_id = win_getid()
endfunction

function! vimrc#window#VimPlugClose() abort
    call win_gotoid(g:vimrc#window#vim_plug_window_id)
    wincmd q
endfunction
" }}}2

" Creates a key mapping to the leader followed by a single lowercase and
" uppercase key combination to move to or close a window, respectively.
function! vimrc#window#SideCreateMapping(key, ft, open, close) abort
    let g:vimrc#window#ft_to_return_to_main[a:ft] = toupper(a:key)
    exe "nnoremap <silent> <Leader>" . a:key . " :call vimrc#window#SideFocusToggle('" . a:ft . "','" . a:open "')<CR>"
    exe "nnoremap <silent> <Leader>" . toupper(a:key) . " :" . a:close . '<CR>'
endfunction

" {{{1 Other stuff

function! vimrc#window#TagbarStatusline(current, sort, fname, flags)
    return lightline#statusline(a:current == 1 ? 0 : 1)
endfunction

" }}}1

" vim: set fdm=marker
