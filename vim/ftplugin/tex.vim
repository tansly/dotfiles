nmap <F8> :!pdflatex %
nmap <F9> :!pdflatex % && rifle %:r.pdf

" comment and uncomment lines
vnoremap <leader>c :s/^/%/ <Bar> nohlsearch<CR>
vnoremap <leader>C :s/^%// <Bar> nohlsearch<CR>
