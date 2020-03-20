function! s:ToggleJavaCommentaar()
  :normal! ^
  let l:part = strpart(getline('.'),col('.')-1,2)
  if l:part == '//'
    :normal! xx
  else
    :normal! i//
endif
endfunction


" Commentaar van een regel
nnoremap <F12> :call <SID>ToggleJavaCommentaar()<CR>
inoremap <F12> <Esc>:call <SID>ToggleJavaCommentaar()<CR>

colorscheme fruity
AirlineRefresh

" Commentaar van een regel
" noremap <buffer> <F12> 0i//<Esc>0
" noremap <buffer> <S-F12> 0xx<Esc>

nnoremap <buffer> <F2> ko
inoremap <buffer> <F2> <Esc>ko


" Java uitvoeren
inoremap <F5> <Esc>:w<CR>:!javac %<CR>
nnoremap <F5> :w<CR>:!javac %<CR>

" Open de Java-uitvoer in een venster rechts
inoremap <F6> <Esc>:w<CR>:vert term java %:r<CR>
nnoremap <F6> :w<CR>:vert term java %:r<CR>

" Tab-completion met Ctrl -P
" Voor vim ins-completion 
inoremap <C-P> <C-X><C-P>
"echo "Dit is het filetype: ".&filetype

setlocal omnifunc=javacomplete#Complete
"let g:deoplete#enable_at_startup = 1
