" load the types.vim highlighting file, if it exists
"autocmd BufRead,BufNewFile *.[ch] let fname = expand('<afile>:p:h') . '/types.vim'
"autocmd BufRead,BufNewFile *.[ch] if filereadable(fname)
"autocmd BufRead,BufNewFile *.[ch]   exe 'so ' . fname
"autocmd BufRead,BufNewFile *.[ch] endif

let fname = expand('<afile>:p:h') . '/types.vim'
if filereadable(fname)
  exe 'so ' . fname
endif
