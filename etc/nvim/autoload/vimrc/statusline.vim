" Badges are a dynamic representation of a split's content. In the case of a
" normal writable buffer, the badge is the current mode, represented by
" `g:lightline.mode_map`. Otherwise, it is a badge defined here.
let g:vimrc#statusline#badges = {
    \ 'tagbar':   ' ',
    \ 'nerdtree': ' ',
    \ 'man':      ' ',
    \ 'help':     ' ',
    \ 'vim-plug': ' ',
    \ 'undotree': ' ',
    \ 'diff':     ' ',
\ }

" Badges for a writeable buffer. The keys correspond to the output of mode().
let g:vimrc#statusline#mode_badges = {
    \ 'n'     : ' ',
    \ 'i'     : ' ',
    \ 'R'     : ' ',
    \ 'v'     : ' ',
    \ 'V'     : ' ',
    \ "\<C-v>": ' ',
    \ 'c'     : '',
    \ 's'     : 's',
    \ 'S'     : 'S',
    \ "\<C-s>": 'S-BLOCK',
    \ 't'     : ' '
\ }

function! vimrc#statusline#Badge() abort
    " Show badge of a side window regardless of focus state.
    if has_key(g:vimrc#statusline#badges, &ft)
        return g:vimrc#statusline#badges[&ft]
    endif

    " Show the mode in an editable buffer.
    return g:vimrc#statusline#mode_badges[mode()] 
endfunction

function! vimrc#statusline#Filename() abort
    if !has_key(g:vimrc#statusline#badges, &ft)
        let filename = expand('%:t')
        return filename == '' ? '∅' :
             \ filename
    else | return '' | endif
endfunction

function! vimrc#statusline#StateIcons() abort
endfunction
