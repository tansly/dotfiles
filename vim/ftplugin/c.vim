" auto insert matching brace
inoremap {<CR> {<CR>}<Esc>O
" auto insert comment terminator
"inoremap /* /* */<Esc>2ha

nmap <F8> :make %:r CFLAGS+=""

nmap <F9>  :make
nmap <F10> :make clean
nmap <F11> :make tags

" comment a line
nmap <C-C> I//<Esc>
