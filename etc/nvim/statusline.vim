" Statusline configuration.
" See also 'autoload/vimrc/statusline.vim'.

" {{{1 Initialization

" Avoid showing mode below the statusline.
set noshowmode

let g:lightline = {
    \ 'tabline': {
    \ 'left': [ 
    \           [ 'buffers' ]
    \ ],
    \ 'right': [ ]
    \ }
\ }

let g:lightline.component_expand = {}
let g:lightline.component_type = {}

" {{{1 Bufferline

set showtabline=2
let g:lightline_buffer_show_bufnr = 1

let g:lightline.component_expand['buffers'] = 'lightline#bufferline#buffers'
let g:lightline.component_type['buffers'] = 'tabsel'

" {{{1 Functions

let g:lightline.component_function = {
    \ 'badge': 'vimrc#statusline#Badge',
    \ 'filename': 'vimrc#statusline#Filename'
\ }

" {{{1 Components

let g:lightline.active = {
    \ 'left': [ [ 'badge', 'filename' ] ],
    \ 'right': [ ['lineinfo'] ]
\ }

let g:lightline.inactive = {
    \ 'left': [ [ 'badge', 'filename' ] ],
    \ 'right': [ [ ] ]
\ }

" }}}1

" vim: fdm=marker :
