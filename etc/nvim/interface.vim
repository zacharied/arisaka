" {{{1 Buffers

set hidden

" {{{1 Editor

set scrolloff=3

let g:deoplete#auto_complete_start_length = 1

set completeopt-=preview

" {{{1 Cursor

" Highlighting matched parentheses is kind of annoying.
let loaded_matchparen = 1

" {{{1 Gutter

set number
set relativenumber

" {{{1 Colorscheme

" {{{1 Command line

" Hide completion messages.
set shortmess+=c

" {{{1 Windows

let g:tagbar_status_func = 'vimrc#window#TagbarStatusline'

" {{{1 Denite

let s:menus = {}

let s:menus.nerdfont = {
            \ 'description': 'Find an icon in the NERD font set'
            \ }
call denite#custom#var('nerdfont', 'command',
            \ ['nerdfontsearch', ''])

" {{{1 Closing

" Load statusline configuration.
exe 'source ' . expand('$ARI_ETC/nvim/statusline.vim')

" vim: fdm=marker :
