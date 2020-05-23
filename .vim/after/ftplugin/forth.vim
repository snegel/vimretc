" Alles voor Forth
function! TogglePrologCommentaar()
  :normal! ^
  let l:part = strpart(getline('.'),col('.')-1,1)
  if l:part == '\'
    :normal! xx
  else
    :normal! i\ 
    :normal ^
endif
endfunction

set autoindent

" Commentaar van een regel invoegen of verwijderen
nnoremap <F12> :call TogglePrologCommentaar()<CR>
inoremap <F12> <Esc>:call TogglePrologCommentaar()<CR>


" Commentaar en spatie invoegen en naar insert mode (vanuit normal mode) 
nnoremap <S-F12> :call TogglePrologCommentaar()<CR>a 


" Forth uitvoeren
" Open de gForth-omgeving in een venster rechts; <CR-\><C-N> brengt je in Terminal normal mode
" Eindigen met bye en F7, of Ctrl D F7
inoremap <F6> <Esc>:wa<CR>:vert term gforth %<CR>
nnoremap <F6> :wa<CR>:vert term gforth %<CR>

colorscheme delek
AirlineRefresh
