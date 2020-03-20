" Alles voor Python, fijn!
function! TogglePythonCommentaar()
  :normal! ^
  let l:part = strpart(getline('.'),col('.')-1,1)
  if l:part == '#'
    :normal! x
  else
    :normal! i#
endif
endfunction


" Commentaar van een regel invoegen of verwijderen
nnoremap <F12> :call TogglePythonCommentaar()<CR>
inoremap <F12> <Esc>:call TogglePythonCommentaar()<CR>


" Commentaar en spatie invoegen en naar insert mode (vanuit normal mode) 
nnoremap <S-F12> :call TogglePythonCommentaar()<CR>a 



colorscheme navajo-night
AirlineRefresh

" Commentaar van een regel invoegen en verwijderen in normal mode
" noremap <buffer> <F12> ^i#<Esc>
" noremap <buffer> <S-F12> ^x<Esc>

" Ga een regel hoger (k) en voeg eronder een regel in (o)
nnoremap <buffer> <F2> ko
inoremap <buffer> <F2> <Esc>ko


" Python uitvoeren
inoremap <F5> <Esc>:w<CR>:!python3 %<CR>
nnoremap <F5> <Esc>:w<CR>:!python3 %<CR>

" Open de Python-uitvoer in een venster rechts; <CR-\><C-N> brengt je in Terminal normal mode
inoremap <F6> <Esc>:wa<CR>:vert term python3 %<CR>
nnoremap <F6> :wa<CR>:vert term python3 %<CR>


" Testen
" :t is de tail van het pad, dus de filenaam
" :r is de root dus de filenaam zonder extensie
" Voor unittest
"inoremap <F4> <Esc>:wa<CR>:bel term python3 -m unittest -v testmap.test_%:t:r<CR>
"nnoremap <F4> :wa<CR>:bel term python3 -m unittest -v testmap.test_%:t:r<CR>

" Voor py.test
inoremap <F4> <Esc>:wa<CR>:bel term pytest-3<CR>
nnoremap <F4> :wa<CR>:bel term pytest-3<CR>
