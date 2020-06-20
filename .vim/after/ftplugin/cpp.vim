function! s:ToggleCppCommentaar()
  :normal! ^
  let l:part = strpart(getline('.'),col('.')-1,2)
  if l:part == '//'
    :normal! xx
  else
    :normal! i//
endif
endfunction


" Commentaar van een regel
nnoremap <F12> :call <SID>ToggleCppCommentaar()<CR>
inoremap <F12> <Esc>:call <SID>ToggleCppCommentaar()<CR>

colorscheme autumn
AirlineRefresh

" Commentaar van een regel
" noremap <buffer> <F12> 0i//<Esc>0
" noremap <buffer> <S-F12> 0xx<Esc>

nnoremap <buffer> <F2> ko
inoremap <buffer> <F2> <Esc>ko


" C++ vertalen
"inoremap <F5> <Esc>:w<CR>:!g++-10 -std=c++20 -o %.r %<CR>
"nnoremap <F5> :w<CR>:!g++-10 -std=c++20 -o %:r %<CR>
inoremap <F5> <Esc>:w<CR>:term g++-10 -std=c++20 -o %.r %<CR>
nnoremap <F5> :w<CR>:term g++-10 -std=c++20 -o %:r %<CR>

" Open de C++-uitvoer in een venster rechts
"inoremap <F6> <Esc>:vert term ./%:r<CR>
nnoremap <F6> :q<CR>:vert term ./%:r<CR>

" Tab-completion met Ctrl -P
" Voor vim ins-completion 
inoremap <C-P> <C-X><C-P>
"echo "Dit is het filetype: ".&filetype

noremap <F8> <Esc>:w<CR>:!g++-10 -std=c++20 -o %:r %<CR>:vert term ./%:r<CR>
noremap <F9> <Esc>:w<CR>:!g++-10 -std=c++20 -o %:r %<CR> && ./%:r<CR>


