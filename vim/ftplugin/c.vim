" auto insert matching brace
inoremap {<CR> {<CR>}<Esc>O

nmap <F8> :make %:r CFLAGS+=""
nmap <F9>  :make
nmap <F10> :make clean
nmap <F11> :make tags

" comment a line
nmap <leader>c I//<Esc>
" uncomment a line
nmap <leader>x ^xx
