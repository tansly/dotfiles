" auto insert matching brace
inoremap {<CR> {<CR>}<Esc>O

nnoremap <F4> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
