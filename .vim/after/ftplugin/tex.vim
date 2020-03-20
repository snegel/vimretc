function! ToggleTexCommentaar()
  :normal! ^
  let l:part = strpart(getline('.'),col('.')-1,1)
  if l:part == '%'
    :normal! x
  else
    :normal! i%
endif
endfunction


" Commentaar van een regel invoegen of verwijderen
noremap <F12> :call ToggleTexCommentaar()<CR>

colorscheme anotherdark

" De volgende regels verbergen de formules gedeeltelijk, maar de achtergrondkleuren zijn
" niet fijn, dus geef guibg de waarde grey20, dit is de achtergrondkleur van
" anotherdark
set conceallevel=1
let g:tex_conceal='abdmg'
highlight Conceal guibg=grey20

"colorscheme navajo-night
"highlight Conceal guibg=#35536f
"
AirlineRefresh

" Bewaren met F6; met de compiler in continue modus wordt er ook meteen
" vertaald en de pdf getoond
inoremap <F6> <Esc>:w<CR>
nnoremap <F6> :w<CR>

" Foutmeldingen
inoremap <F2> <Esc>:vsp copen<CR>
nnoremap <F2> :vsp copen<CR>

" Commentaar invoegen en verwijderen in normal mode
" nnoremap <F12> 0i%<Esc>
" nnoremap <S-F12> 0x<Esc>
