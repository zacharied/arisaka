" {{{1 Global

" Unhighlight search.
call vimrc#keybinds#RemapAllModes('<silent> <A-n>', ':nohl<CR>')

" Wrapping.
call vimrc#keybinds#RemapAllModes('<silent> <A-w>', ':set wrap!<CR>')

" {{{1 Insert mode 

" Quickly exit insert mode.
inoremap jk <Esc>

" Insert new line even when the popup menu is visible.
inoremap <expr> <CR> (pumvisible() ? "\<C-y>\<CR>" : "\<CR>")

" Expand snippet.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)

" {{{1 Navigation

" Easymotion.
let g:easymotion_do_mapping = 1
map s <Plug>(easymotion-prefix)

" Follow link.
nnoremap <A-f> <C-]>

" {{{1 User interface

" Create bindings for side windows.
call vimrc#window#SideCreateMapping('n', 'nerdtree', 'NERDTreeFocus', 'NERDTreeClose')
call vimrc#window#SideCreateMapping('t', 'tagbar', 'TagbarOpen j', 'TagbarClose')
call vimrc#window#SideCreateMapping('l', 'qf', 'lopen', 'lclose')
call vimrc#window#SideCreateMapping('p', 'vim-plug', 'call vimrc#window#VimPlugOpen()', 'call vimrc#window#VimPlugClose()')
call vimrc#window#SideCreateMapping('u', 'undotree', 'UndotreeShow', 'UndotreeHide') 

" Prevent tagbar from overriding spacebar bindings.
let g:tagbar_map_showproto = ""

" {{{1 Denite

nnoremap <Leader>d :Denite nerdfont<CR>

" TODO More denites

" {{{1 Buffers

" Basic buffer navigation.
nnoremap <silent> <A-k> :bprev<CR>
nnoremap <silent> <A-j> :bnext<CR>
nnoremap <silent> <A-S-k> :bfirst<CR>
nnoremap <silent> <A-S-j> :blast<CR>
nnoremap <silent> <A-q> :bprev \| :bdelete #<CR>

" Buffer list.
nnoremap <silent> <leader>b :buffers<CR> 

" }}}1

" vim: fdm=marker :
