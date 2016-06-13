" auto insert matching brace
inoremap {<CR> {<CR>}<Esc>O
" auto insert comment terminator
inoremap /* /* */<Esc>2ha

map<F8> :make CFLAGS="-Wall -g" %:r

" load the types.vim highlighting file, if it exists
autocmd BufRead,BufNewFile *.[ch] let fname = expand('<afile>:p:h') . '/types.vim'
autocmd BufRead,BufNewFile *.[ch] if filereadable(fname)
autocmd BufRead,BufNewFile *.[ch]   exe 'so ' . fname
autocmd BufRead,BufNewFile *.[ch] endif
