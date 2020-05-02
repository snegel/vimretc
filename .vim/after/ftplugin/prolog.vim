" Alles voor Prolog
function! TogglePrologCommentaar()
  :normal! ^
  let l:part = strpart(getline('.'),col('.')-1,1)
  if l:part == '%'
    :normal! x
  else
    :normal! i%
endif
endfunction


" Commentaar van een regel invoegen of verwijderen
nnoremap <F12> :call TogglePrologCommentaar()<CR>
inoremap <F12> <Esc>:call TogglePrologCommentaar()<CR>


" Commentaar en spatie invoegen en naar insert mode (vanuit normal mode) 
nnoremap <S-F12> :call TogglePrologCommentaar()<CR>a 


" Prolog uitvoeren
" Open de prolog-omgeving in een venster rechts; <CR-\><C-N> brengt je in Terminal normal mode
" Eindigen met halt. en F7, of Ctrl D F7
inoremap <F6> <Esc>:wa<CR>:vert term prolog %<CR>
nnoremap <F6> :wa<CR>:vert term prolog %<CR>

colorscheme badwolf
AirlineRefresh
