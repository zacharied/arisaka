" Creates a keybind that can be used in all modes.
function! vimrc#keybinds#RemapAllModes(key, command) abort
    exe 'nnoremap ' . a:key . ' ' a:command
    exe 'inoremap ' . a:key . ' <C-o>' . a:command
    exe 'vnoremap ' . a:key . ' <Esc>' . a:command 'gv'
endfunction
