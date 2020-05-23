set nocompatible
filetype off

" Maximaliseer het venster
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sirver/ultisnips'
Plugin 'lervag/vimtex'
"Plugin 'Shougo/deoplete.nvim'
"Plugin 'roxma/nvim-yarp'
"Plugin 'roxma/vim-hug-neovim-rpc'
"Plugin 'artur-shaik/vim-javacomplete2'

call vundle#end()

let g:deoplete#enable_at_startup = 1

let g:airline_theme='luna'
" let g:airline_powerline_fonts = 1

syntax on
filetype plugin indent on


" regel de statusregel
set showcmd             "laat gedeelte van commando's zien
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file
set statusline+=%{kite#statusline()}    " laat de kite-status zien
set laststatus=2        "ook bij 1 venster statusregel laten zien

" relatieve regelnummers
"set relativenumber

" absolute regelnummers
set number

" Vensters splitsen aan de onderkant of aan de rechterkant
set splitbelow
set splitright

" Cursor naar andere venster verplaatsen
" split-navigatie
"nnoremap <C-J> <C-W><C-J>
""nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"inoremap <C-J> <Esc><C-W><C-J>
"inoremap <C-K> <Esc><C-W><C-K>
inoremap <C-L> <Esc><C-W><C-L>
inoremap <C-H> <Esc><C-W><C-H>

" let mapleader = ","
"nnoremap <Leader>sv :vs $MYVIMRC<Enter>
"nnoremap <Leader>so :so $MYVIMRC<Enter>

"iabbrev sig <cr>Gertjan Laan<cr>g.j.m.laan@gmail.com

" Menu's voor tab-completion
set wildmenu
set wildmode=full

" Sluit een venster waarvan de inhoud niet is gewijzigd
nnoremap <F7> :q<CR>

" better indentation: een visueel blok blijft geselecteerd als je het met
" Ctrl-Shift > of met Ctrl Shift > verplaatst
vnoremap < <gv  
vnoremap > >gv  


" set t_Co=256
" kleurenschema afhankelijk van het tijdstip van de dag

let uurNu = strftime("%H")
if uurNu < 10 + 0
    colorscheme wombat256mod
elseif uurNu < 11 + 0
    colorscheme winter
elseif uurNu < 12 + 0
    colorscheme fruity
elseif uurNu < 13 + 0
    colorscheme fog
elseif uurNu < 14 + 0
    colorscheme oceandeep
elseif uurNu < 15 + 0
    colorscheme tango2
elseif uurNu < 16 + 0
    colorscheme murphy
elseif uurNu < 17 + 0
    colorscheme autumn
elseif uurNu < 18 + 0
    colorscheme navajo-night
else
    colorscheme anotherdark
endif

"colorscheme morning    "lichte achtergrond
"colorscheme zellner   "lichte achtergrond
"colorscheme torte     "donkere achtergrond
"colorscheme morning   "donkere achtergrond      

set tabstop=4
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
"exe 'cd' fnameescape("/media/gj/92C2AAB1C2AA994D/Documents and Settings/User/Mijn documenten/AAMintedPython/PythonProgrammas")

" Put all temporary files under the same directory.
" https://github.com/mhinz/vim-galore#handling-backup-swap-undo-and-viminfo-files
set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap//
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo/
set viminfo     ='100,n$HOME/.vim/files/info/viminfo

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep='▶'
let g:airline_right_sep='◀'
let g:airline_symbols.crypt='🔒'
let g:airline_symbols.linenr='☰'
let g:airline_symbols.maxlinenr='㏑'
let g:airline_symbols.branch='⎇'
let g:airline_symbols.paste='Þ'
let g:airline_symbols.spell='Ꞩ'
let g:airline_symbols.notexists='Ɇ'
let g:airline_symbols.whitespace='Ξ'

let g:airline_section_b = '%-010.20{getcwd()}'

" Poging tot latex
map <C-S> :! okular $(echo % \| sed 's/tex$/pdf/') & disown<CR><CR>

" Voor vimtex, zie ook https://castel.dev/post/lecture-notes-1/
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0


" Ultisnips
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
let g:UltiSnipsEditSplit="vertical"

" Begin met scrollen zeven regels voor de onderkant of bovenkant van het scherm
set scrolloff=7

" Spring bij het openen naar de regel waar je vorige keer gebleven was
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

let g:netrw_browsex_viewer= "setsid xdg-open"

"Printer
set pdev=HLL2300D

