" auto insert matching brace
inoremap {<CR> {<CR>}<Esc>O

nmap <F8> :make %:r CFLAGS+=""
nmap <F9>  :make
nmap <F10> :make clean
nmap <F11> :make tags

" comment and uncomment lines
vnoremap <leader>c :s/^/\/\// <Bar> nohlsearch<CR>
vnoremap <leader>C :s/^\/\/// <Bar> nohlsearch<CR>
