" {{{1 Opening

" Download vim-plug if it hasn't been already.
let g:vim_plug_location = expand('~/.local/share/nvim/site/autoload/plug.vim')
if !filereadable(g:vim_plug_location)
    echom 'Installing vim-plug at "' . g:vim_plug_location . '".'
    call system('curl -fLo ' . g:vim_plug_location . ' --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
endif

call plug#begin('~/.local/share/vim-plug')

" {{{1 User interface

" Colorschemes.
Plug 'nightsense/seabird'
Plug 'nightsense/seagrey'
Plug 'ayu-theme/ayu-vim'
Plug 'nightsense/stellarized'

" Status line.
Plug 'itchyny/lightline.vim'
Plug 'mgee/lightline-bufferline'

" {{{1 Language

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Rust
Plug 'rust-lang/rust.vim'

" LaTeX
Plug 'lervag/vimtex'

" LC-3 assembly
Plug 'zacharied/lc3.vim'

" Binary
Plug 'Shougo/vinarise.vim'

" Go
Plug 'fatih/vim-go'

" Enhanced C
Plug 'justinmk/vim-syntax-extra'

" JS and friends
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'

" {{{1 Completion
" Snippets.
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
let g:neosnippet#snippets_directory='$ETC/nvim/snippets'

"" Vimscript.
"Plug 'Shougo/neco-vim'
"
"" Zsh.
"Plug 'zchee/deoplete-zsh'
"
"" Python.
"Plug 'zchee/deoplete-jedi'
"
"" Rust.
"Plug 'racer-rust/vim-racer'
"
"" Go.
"Plug 'zchee/deoplete-go'
"
"" Perl.
"Plug 'c9s/perlomni.vim'

" {{{1 Navigation

" Everything explorer.
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }

" File explorer.
Plug 'scrooloose/nerdtree', { 'on': [ 'NERDTree', 'NERDTreeFocus'] } 
Plug 'Shougo/defx.nvim'

" Source code explorer.
Plug 'majutsushi/tagbar', { 'on': [ 'TagbarOpen' ] }

Plug 'mbbill/undotree', { 'on': [ 'UndotreeShow', 'UndotreeToggle', 'UndotreeFocus' ] }

" {{{1 Visual guides
" See color previews in source code.
Plug 'ap/vim-css-color'

" {{{1 Source control
" Show git hunks changes in gutter.
Plug 'airblade/vim-gitgutter'

" Git wrapper.
Plug 'tpope/vim-fugitive'

" {{{1 Text manipulation
" Alignment motions.
Plug 'tommcdo/vim-lion'

" Surround motions.
Plug 'tpope/vim-surround'

" Comment motions.
Plug 'scrooloose/nerdcommenter'

" Create tables.
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeEnable' }
let g:table_mode_map_prefix = '<A-t>'

" {{{1 Navigation
" Quick navigation to targets.
Plug 'easymotion/vim-easymotion'

" {{{1 Miscellaneous

" Allow the repeat command to do more.
Plug 'tpope/vim-repeat'

" Folder-local vim configuration.
Plug 'embear/vim-localvimrc'
let g:localvimrc_ask = 0
let g:localvimrc_autocmd = 1
augroup vimrc#localvimrc_notify
    autocmd!
    autocmd User LocalVimRCPost echom 'Loaded local vimrc.'
augroup END

" {{{1 Closing

call plug#end()

" }}}1

" vim: fdm=marker :
