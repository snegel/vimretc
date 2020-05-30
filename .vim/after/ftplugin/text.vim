" Leuke dingen voor gewone tekst

colorscheme oceandeep

let @n='0. '
" Een opvolgend paragraafnummer met een punt invoeren in insertmode
" Veronderstelt dat register n geladen is met de string '0.'
inoremap <F3> <ESC>"np0<C-A>"nyyA
 "Verklaring: ga naar normal mode, plak de waarde uit register n, ga naar het begin van de
" regel, verhoog het getal onder de cursor, kopieer de hele regel in register
" n, append aan het einde van de regel

" Voeg het visueel geselecteerde nummer (tekst) toe aan register n, met de
" bedoeling het in insert mode te plakken en te verhogen (zie inoremap <F3>)
" Startgetal voor nummering van volgende paragraaf
vnoremap <F3> t.ll"ny

nnoremap <F2> "+gP
inoremap <F2> <Esc>"+gP

