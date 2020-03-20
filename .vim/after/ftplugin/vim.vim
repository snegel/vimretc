function! ToggleVimCommentaar()
  :normal! ^
  let l:part = strpart(getline('.'),col('.')-1,1)
  if l:part == '"'
    :normal! x
  else
    :normal! i"
endif
endfunction


" Commentaar van een regel invoegen of verwijderen
nnoremap <F12> :call ToggleVimCommentaar()<CR>
inoremap <F12> <Esc>:call ToggleVimCommentaar()<CR>

